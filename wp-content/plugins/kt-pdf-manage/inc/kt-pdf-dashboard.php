<?php
class KTPDFManagerDashboard {

	var $_kt_pdf_manager_OBJ = NULL;
	var $_kt_pdf_manager_OBJ_categories = NULL;
	var $_kt_pdf_manager_OBJ_category = NULL;
	var $_kt_pdf_manager_OBJ_pdfs = NULL;
	var $_kt_pdf_manager_OBJ_pdf = NULL;
	
	var $_kt_categories_page_name = '';
	var $_kt_pdfs_page_name = '';
	var $_kt_settings_support_page = '';
	//var $_kt_pdf_manager_plugin_version = '';
	
	var $_kt_open_target_option_name = '_kt_pdf_manager_open_target';
	var $_kt_category_list_has_title = '_kt_pdf_manager_category_list_has_title';
	var $_kt_pdf_order_by_option_name = '_kt_pdf_manager_pdf_order_by_';
	var $_kt_pdf_order_option_name = '_kt_pdf_manager_pdf_order_';
	
	var $_default_pdf_icon_url;
	
	var $_obj_init_args = array();

	public function __construct( $arg ) {
		global $wpdb;
		
		$this->_kt_categories_page_name = $arg['pages_name_A']['category'];
		$this->_kt_pdfs_page_name = $arg['pages_name_A']['pdf'];
		$this->_kt_settings_support_page = $arg['pages_name_A']['setting'];	
		$this->_default_pdf_icon_url = $arg['default_pdf_icon'];	
		
		$this->_obj_init_args['categories_db_tbl_name'] = $arg['cat_tbl_name'];
		$this->_obj_init_args['pdfs_db_tbl_name'] = $arg['pdf_tbl_name'];
		$this->_obj_init_args['pdf_upload_path'] = $arg['upload_path'];
		$this->_obj_init_args['pdf_upload_folder'] = $arg['upload_folder'];
		$this->_obj_init_args['pages_name_A'] = $arg['pages_name_A'];
		$this->_obj_init_args['open_target_option_name'] = $this->_kt_open_target_option_name;
		$this->_obj_init_args['show_category_title'] = $this->_kt_category_list_has_title;
		$this->_obj_init_args['pdf_order_by'] = $this->_kt_pdf_order_by_option_name;
		$this->_obj_init_args['pdf_order'] = $this->_kt_pdf_order_option_name;
		$this->_obj_init_args['default_pdf_icon'] = $this->_default_pdf_icon_url;
		
		require_once( 'kt-pdf-manager-categories.php' );
		require_once( 'kt-pdf-manager-category.php' );
		require_once( 'kt-pdf-manager-pdfs.php' );	
		require_once( 'kt-pdf-manager-pdf.php' );
		
		
		$this->_kt_pdf_manager_OBJ_category = new KTPDFManagerCategory( $this->_obj_init_args );		
		$this->_kt_pdf_manager_OBJ_pdf = new KTPDFManagerPDF( $this->_obj_init_args );
		
		add_action("admin_menu", array( $this, 'kt_pdf_manager_dashboard_menu' ) );	
	}
	
	function kt_pdf_manager_dashboard_menu() {
	
		if ( !$this->kt_pdf_manager_current_user_can() ){
			return;
		}
		
		$authorized_level = 'level_3';
		
		add_menu_page('Documents', 'Documents', $authorized_level, 'kt-pdf-manager', '', 'dashicons-media-document');
		add_submenu_page( 'kt-pdf-manager',
						  'PDF Categories', 
						  'PDF Categories',
						  $authorized_level, 
						  'kt-pdf-manager', 
						  array($this, 'kt_pdf_manager_categories') );

		add_submenu_page( 'kt-pdf-manager', 
						  'PDF Documents', 
						  'PDF Documents', 
						  $authorized_level, 
						  'kt-pdf-manager-pdfs', 
						  array($this, 'kt_pdf_manager_pdfs') );
	}
	
	function kt_pdf_manager_categories(){
		global $current_user;
		
		if (!$this->kt_pdf_manager_current_user_can()){
			wp_die( __('You do not have sufficient permissions to access this page.') );
		}

		$this->_kt_pdf_manager_OBJ_categories = new KTPDFManagerCategories( $this->_obj_init_args );

		$categories_curr_view = 'list';
		if(isset($_GET['view']) && $_GET['view']){
			$categories_curr_view = trim($_GET['view']);
		}
		if(isset($_POST['view']) && $_POST['view']){
			$categories_curr_view = trim($_POST['view']);
		}
		
		if ($categories_curr_view == 'list'){
			//Fetch, prepare, sort, and filter our data...
			$this->_kt_pdf_manager_OBJ_categories->prepare_items();
			
			$category_add_new_page = admin_url( 'admin.php?page='.$this->_kt_categories_page_name );
			$category_add_new_page = add_query_arg( 'view', 'addnew', $category_add_new_page );
	
			echo '<div class="wrap">
					<div id="icon-edit" class="icon32"><br/></div>
					<h2>PDF Categories<a href="'.$category_add_new_page.'" class="add-new-h2">Add New</a></h2>
					<form id="kt-pdf-manager-categories-form-id" method="post">
						<input type="hidden" name="page" value="kt-pdf-manager" />';
						//$this->_kt_pdf_manager_OBJ_categories->search_box( 'search', 'kt-pdf-manager' );
						$this->_kt_pdf_manager_OBJ_categories->views();
						$this->_kt_pdf_manager_OBJ_categories->display();
			echo '  </form>
				  </div>';
		}else if ( $categories_curr_view == 'addnew' || $categories_curr_view == 'edit'){
			$category_id = -1;
			if(isset($_GET['categoryid']) && $_GET['categoryid']){
				$category_id = trim($_GET['categoryid']);
				$category_id = intval( $category_id );
			}	
			echo '<div class="wrap">
					<div id="icon-edit" class="icon32"><br/></div>
					<h2>PDF Category</h2>
					<form id="kt-pdf-manager-category-edit-form-id" method="post">
					<input type="hidden" name="page" value="kt-pdf-manager" />
					<input type="hidden" name="view" value="list" />';
					$this->_kt_pdf_manager_OBJ_category->kt_pdf_manager_category_edit( $category_id );
			echo   '<p style="margin-top:20px;"><input type="button" id="kt_pdf_manager_category_save" class="button-primary" value="Save" /></p>'."\n";
			echo '</div>';
		}
	}
	
	function kt_pdf_manager_pdfs(){
		global $current_user;
		
		if (!$this->kt_pdf_manager_current_user_can()){
			wp_die( __('You do not have sufficient permissions to access this page.') );
		}
		
		$this->_kt_pdf_manager_OBJ_pdfs = new KTPDFManagerPDFs( $this->_obj_init_args );
		
		$lists_curr_view = 'list';
		if(isset($_GET['view']) && $_GET['view']){
			$lists_curr_view = trim($_GET['view']);
		}
		if(isset($_POST['view']) && $_POST['view']){
			$lists_curr_view = trim($_POST['view']);
		}
		
		if ($lists_curr_view == 'list'){
			//Fetch, prepare, sort, and filter our data...
			$this->_kt_pdf_manager_OBJ_pdfs->prepare_items();
			
			$current_category_id = 0;
			if( isset($_REQUEST['cat']) ){
				$current_category_id = $_REQUEST['cat'];
			}
			$add_new_page = admin_url( 'admin.php?page=kt-pdf-manager-pdfs' );
			$add_new_page = add_query_arg( 'view', 'addnew', $add_new_page );
			if( $current_category_id ){
				$add_new_page = add_query_arg( 'cat', $current_category_id, $add_new_page );
			}
	
			echo '<div class="wrap">
					<div id="icon-edit" class="icon32"><br/></div>
					<h2>PDF Documents<a href="'.$add_new_page.'" class="add-new-h2">Add New</a></h2>
					<form id="kt-pdf-manager-pdfs-form-id" method="post" action="'.admin_url( 'admin.php?page=kt-pdf-manager-pdfs' ).'">
						<input type="hidden" name="page" value="kt-pdf-manager-pdfs" />
						<input type="hidden" name="view" value="list" />';
						$this->_kt_pdf_manager_OBJ_pdfs->search_box( 'search', 'kt-pdf-manager-pdfs' );
						$this->_kt_pdf_manager_OBJ_pdfs->views();
						$this->_kt_pdf_manager_OBJ_pdfs->display();
			echo '  </form>					
				  </div>';
		}else if ( $lists_curr_view == 'addnew' || $lists_curr_view == 'edit'){
			$pdf_id = -1;
			if(isset($_GET['pdfid']) && $_GET['pdfid']){
				$pdf_id = trim($_GET['pdfid']);
				$pdf_id = intval( $pdf_id );
			}	
			echo '<div class="wrap">
					<div id="icon-edit" class="icon32"><br/></div>
					<h2>PDF Document</h2>
					<form id="kt-pdf-manager-pdfs-form-id" method="post" enctype="multipart/form-data" action="'.admin_url( 'admin.php?page=kt-pdf-manager-pdfs' ).'">
					<input type="hidden" name="page" value="kt-pdf-manager-pdfs" />
					<input type="hidden" name="view" value="list" />';
					$this->_kt_pdf_manager_OBJ_pdf->pdf_edit( $pdf_id );
			echo '  <p style="margin-top:20px;"><input type="button" id="kt_pdf_manager_pdf_save_form" class="button-primary" value="Save" /></p>'."\n";
			echo '	</form>
				  </div>';
		}		
	}
	
	function kt_pdf_manager_current_user_can(){
		global $current_user;
		
		if ( current_user_can('level_3') ){
			return true;
		}else{
			
		}
		return false;
	}
}

function reorder_admin_menu( $__return_true ) {
    return array(
		'index.php', // Dashboard
        'edit.php?post_type=page', // Pages 
        'edit.php', // Posts
        'upload.php', // Media
		'media-new.php',
        'kt-pdf-manager'
   );
}
add_filter( 'custom_menu_order', '__return_true' );
add_filter( 'menu_order', 'reorder_admin_menu' );

