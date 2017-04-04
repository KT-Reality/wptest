<?php

/*
Plugin Name: KT PDF Manage
Description: You can upload PDF documents and list them and again further link to anywhere in site
Version: 1.1
Author: Komalchand
Author URI: https://www.realitypremedia.com

------------------------------------------------------------------------
*/
require_once('inc/kt-pdf-manager-widget.php');
require_once('inc/kt-pdf-manager-widget-category.php');

class KTPDFManager {
	
	var $_kt_pdf_manager_plugin_version = '1.7.1';
	var $_kt_pdf_manager_upload_folder = 'wp-content/uploads/kt-pdf-manager/';
	var $_kt_pdf_manager_upload_path = ABSPATH;
	var $_kt_pdf_manager_admin_notice_message = array();

	var $_kt_pdf_manager_cats_tbl_name = 'kt_pdf_manager_cats';
	var $_kt_pdf_manager_pdfs_tbl_name = 'kt_pdf_manager_pdfs';
	
	var $_kt_pdf_manager_pages = array('category' => 'kt-pdf-manager', 'pdf' => 'kt-pdf-manager-pdfs', 'setting' => 'kt-pdf-manager-settings-support', 'support' => 'kt-pdf-manager-settings-support');
	
	//objects
	var $_kt_pdf_manager_OBJ_dashboard = NULL;
	
	var $_default_pdf_icon_url = '';
	
	public function __construct() {
		global $wpdb;
		
		$this->_kt_pdf_manager_cats_tbl_name = $wpdb->prefix.$this->_kt_pdf_manager_cats_tbl_name;
		$this->_kt_pdf_manager_pdfs_tbl_name = $wpdb->prefix.$this->_kt_pdf_manager_pdfs_tbl_name;
		$this->_kt_pdf_manager_upload_path = str_replace("\\", "/", $this->_kt_pdf_manager_upload_path);
		
		$this->_default_pdf_icon_url = plugin_dir_url( __FILE__ ).'images/default_PDF_icon.png';

		if(is_admin()) {
			add_action( 'admin_notices', array($this, 'kt_pdf_manager_admin_notice') );
			add_action( 'admin_enqueue_scripts', array($this, 'kt_pdf_manager_enqueue_scripts_css') );
		}else{
			add_action( 'wp_enqueue_scripts', array($this, 'kt_pdf_manager_enqueue_scripts_css') );
		}
		add_action( 'widgets_init', create_function( '', 'register_widget( "KTPDFManagerWidget" );' ) );
		add_action( 'widgets_init', create_function( '', 'register_widget( "KTPDFManagerWidgetCategory" );' ) );
		
		//include others class
		require_once( 'inc/kt-pdf-dashboard.php' );
		
		$arg = array();
		$arg['upload_folder'] = $this->_kt_pdf_manager_upload_folder;
		$arg['upload_path'] = $this->_kt_pdf_manager_upload_path;
		$arg['cat_tbl_name'] = $this->_kt_pdf_manager_cats_tbl_name;
		$arg['pdf_tbl_name'] = $this->_kt_pdf_manager_pdfs_tbl_name;
		$arg['pages_name_A'] = $this->_kt_pdf_manager_pages;
		$arg['plugin_version'] = $this->_kt_pdf_manager_plugin_version;
		$arg['default_pdf_icon'] = $this->_default_pdf_icon_url;
		
		$this->_kt_pdf_manager_OBJ_dashboard = new KTPDFManagerDashboard( $arg );
		
		//hooks
		register_activation_hook(__FILE__, array($this, 'kt_pdf_manager_activate') );
		register_deactivation_hook( __FILE__, array($this, 'kt_pdf_manager_deactivate') );
		register_uninstall_hook( __FILE__, 'KTPDFManager::kt_pdf_manager_uninstall' );
		
		add_action('init', array($this, 'kt_pdf_manager_post_action'));
		
		$this->kt_pdf_create_upload_folder_and_set_secure();
	}
	
	function kt_pdf_manager_activate(){
		//create or update table
		$this->kt_pdf_manager_create_table();
		
		// Clear the permalinks
		flush_rewrite_rules();
	}
	
	function kt_pdf_manager_deactivate(){
		// Clear the permalinks
		flush_rewrite_rules();
	}
	
	function kt_pdf_manager_uninstall(){
		//check if pro version installed
		$plugin_root_path = str_replace( "\\", "/", ABSPATH );
		if ( file_exists( $plugin_root_path.'wp-content/plugins/kt-pdf-manager-pro/kt-pdf-manager-pro.php' ) ){
			return;
		}

		KTPDFManager::kt_pdf_manager_remove_table();
	}
	
	function kt_pdf_manager_enqueue_scripts_css(){
		wp_enqueue_script('jquery');
		if( is_admin() ){
			wp_enqueue_script( 'jquery-ui-datepicker' );
			wp_enqueue_style( 'jquery-ui', 'https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css' );
			wp_enqueue_script( 'kt-pdf-manager-admin', plugins_url('js/kt_pdf_manager_admin.js', __FILE__), array('jquery'), $this->_kt_pdf_manager_plugin_version );
			wp_enqueue_style( 'kt-pdf-manager-pro-admin', plugins_url('css/kt-pdf-manager-admin.css', __FILE__), array(), $this->_kt_pdf_manager_plugin_version );
		}else{
			wp_enqueue_script( 'kt-pdf-manager', plugins_url('js/kt_pdf_manager.js', __FILE__), array('jquery'), $this->_kt_pdf_manager_plugin_version );
		}
	}
	
	function kt_pdf_manager_admin_notice(){
		$warning_message = array();
		$error_message = array();
		
		//admin message
		if (count($this->_kt_pdf_manager_admin_notice_message) > 0){
			foreach($this->_kt_pdf_manager_admin_notice_message as $msg){
				if($msg['type'] == 'ERROR'){
					$error_message[] = $msg['message'];
				}
				if($msg['type'] == 'WARNING'){
					$warning_message[] = $msg['message'];
				}
			}
		}
		
		//show error message
		if(count($warning_message) > 0){
			echo '<div class="update-nag">';
			foreach($warning_message as $msg_to_show){
				echo '<p>'.$msg_to_show.'</p>';
			}
			echo '</div>';
		}
		
		//show error message
		if(count($error_message) > 0){
			echo '<div class="error">';
			foreach($error_message as $msg_to_show){
				echo '<p>'.$msg_to_show.'</p>';
			}
			echo '</div>';
		}
	}

	function kt_pdf_manager_create_table(){
		global $wpdb;
		
		require_once(ABSPATH . '/wp-admin/includes/upgrade.php');
		
		
		if (!empty ($wpdb->charset)){
			$charset_collate = "DEFAULT CHARACTER SET {$wpdb->charset}";
		}
		if (!empty ($wpdb->collate)){
			$charset_collate .= " COLLATE {$wpdb->collate}";
		}
		
		$table_name = $this->_kt_pdf_manager_cats_tbl_name;
		$sql = "CREATE TABLE IF NOT EXISTS " . $table_name . " (
				      `id` int(11) NOT NULL AUTO_INCREMENT,
					  `cat_title` varchar(512) NOT NULL,
					  `last_date` datetime DEFAULT NULL,
					  PRIMARY KEY (`id`)
				) $charset_collate;";
		dbDelta($sql);
		
		$table_name = $this->_kt_pdf_manager_pdfs_tbl_name;
		$sql = "CREATE TABLE IF NOT EXISTS " . $table_name . " (
				     `id` int(11) NOT NULL AUTO_INCREMENT,
					  `cat_id` int(11) NOT NULL,
					  `title` varchar(512) DEFAULT NULL,
					  `file_name` varchar(512) NOT NULL,
					  `last_date` datetime DEFAULT NULL,
					  PRIMARY KEY (`id`)
				) $charset_collate;";
		dbDelta($sql);
	}
	
	function kt_pdf_manager_remove_table(){
		global $wpdb;
		
        $table_cats = $wpdb->prefix."kt_pdf_manager_cats";
		$table_pdfs = $wpdb->prefix."kt_pdf_manager_pdfs";
		
		$wpdb->query("DROP TABLE IF EXISTS $table_cats");
		$wpdb->query("DROP TABLE IF EXISTS $table_pdfs");		
	}
	
	function kt_pdf_manager_post_action(){
		if( isset( $_POST['kt_pdf_manager_action'] ) && strlen($_POST['kt_pdf_manager_action']) >0 ) {
			do_action( 'kt_pdf_manager_' . $_POST['kt_pdf_manager_action'], $_POST );
		}
	}
	
	function kt_pdf_create_upload_folder_and_set_secure(){
		//create folder to upload 
		$_kt_pdf_manager_upload_folder_path = $this->_kt_pdf_manager_upload_path.$this->_kt_pdf_manager_upload_folder;
		if ( !is_dir($_kt_pdf_manager_upload_folder_path) ) {
			if ( !wp_mkdir_p( $_kt_pdf_manager_upload_folder_path ) ) {
				$this->_kt_pdf_manager_admin_notice_message['upload_folder_missing']  = array( 'message' => 'Directory <strong>' . $_kt_pdf_manager_upload_folder . '</strong> can not be created. Please create it first yourself.',
				                                                                                'type' => 'ERROR');
			}
		}
		
		if ( !is_writeable( $_kt_pdf_manager_upload_folder_path ) ) {
			$msg  = 'Directory <strong>' . $this->_kt_pdf_manager_upload_folder_path . '</strong> is not writeable ! ';
			$msg .= 'Check <a href="http://codex.wordpress.org/Changing_File_Permissions">http://codex.wordpress.org/Changing_File_Permissions</a> for how to set the permission.';

			$this->_kt_pdf_manager_admin_notice_message['upload_folder_not_writeable']  = array( 'message' => $msg,
			                                                                                      'type' => 'ERROR');
		}

		//copy file to upload foloder
		if( !file_exists($_kt_pdf_manager_upload_folder_path.'/index.php') ){
			copy( dirname(__FILE__).'/assets/index.php', $_kt_pdf_manager_upload_folder_path.'/index.php' );
		}
	}
}

$KT_PDF_manager = new KTPDFManager();
