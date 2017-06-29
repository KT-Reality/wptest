<?php
/*
Plugin Name: kt-redirect-URL
Plugin URI: https://www.realitypremedia.com
Description: This plugin used for redrecting the URL which are not mentioned / listed in the menus.
Version: 1.0
Licence: GPLv2
Author: Komalchand
Author URI: https://profiles.wordpress.org/ktbrothers
*/
if ( ! defined('ABSPATH') ) {
	die('Please do not load this file directly!');
}

require_once( plugin_dir_path( __FILE__ ) . 'include/kt-rdct-class.php');
$objRdct = new rdctClass();
global $wpdb;
$table_name = $wpdb->prefix . "kt_redirect";

function add_ktrdct_plug() {
	global $wpdb;
	$table_name = $wpdb->prefix . "kt_redirect";
	$MSQL = "show tables like '$table_name'";
	if($wpdb->get_var($MSQL) != $table_name)
	{
	   $sql = "CREATE TABLE IF NOT EXISTS $table_name (
		  id mediumint(9) NOT NULL AUTO_INCREMENT,
		  cta_time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
		  cta_bt_title varchar(255) NULL,
		  cta_bt_dest_link varchar(255) NULL,
		  cta_bt_assign_posts text NULL,
		  cta_position VARCHAR(256) NOT NULL,
		  cta_bt_status TINYINT(2) NOT NULL,
		  PRIMARY KEY id (id)
		) ";

		require_once(ABSPATH . "wp-admin/includes/upgrade.php");
		dbDelta($sql);
	}
}	
register_activation_hook(__FILE__,'add_ktrdct_plug'); // Plugin Activation Hook


/* Creating Menus */
function rdct_Menu()
{
	$plugin_url = plugin_dir_url(__FILE__);
	global $wpdb;
	$sSQL="select * from ".$table_name = $wpdb->prefix . "kt_redirect where id<> ''";	
	if ($wpdb->get_var($sSQL) > 0 ){
		add_menu_page(__('Redirect List'),'Redirect ALL', 8,'rdct_add&act=upd&id=1', 'rdct_rule_add'); // if setting present, Adding this menu
	} else {
		add_menu_page(__('Redirect List'),'Redirect ALL', 8,'rdct_add&act=add', 'rdct_rule_add'); // if setting absent, Adding this menu
	}
	
	add_submenu_page('rdct/kt-rdct.php', 'Redirection Setting', 'Redirect Setting', 8, 'rdct_add', 'rdct_rule_add'); // Adding Sub menus

	wp_register_style('demo_table.css', $plugin_url. 'css/demo_table.css');
	wp_register_style('bootstrap.min.css', 'http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css');
	wp_register_style('bootstrap-multiselect.css', 'http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css');	

	wp_register_script('main-cdn-jquery.js', 'http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js');
	wp_register_script('jquery.dataTables.js', $plugin_url. 'js/jquery.dataTables.js', array('main-cdn-jquery.js'));
	wp_register_script('bootstrap.js', 'http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js', array('main-cdn-jquery.js'));
	wp_register_script('bootstrap-multiselect.js', 'http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js', array('main-cdn-jquery.js'));
	
	if ( ! wp_script_is( 'jquery.dataTables.js', 'enqueued' ) ) { // wp_script_is check script already included
		wp_enqueue_script('jquery.dataTables.js');
	}	
	if ( ! wp_script_is( 'main-cdn-jquery.js', 'enqueued' ) ) {
		wp_enqueue_script('main-cdn-jquery.js');
	}	
	if ( ! wp_script_is( 'bootstrap.js', 'enqueued' ) ) {
		wp_enqueue_script('bootstrap.js');
	}	
	if ( ! wp_script_is( 'bootstrap-multiselect.js', 'enqueued' ) ) {
		wp_enqueue_script('bootstrap-multiselect.js');
		wp_enqueue_script( 'rdct-features-js', $plugin_url . 'js/rdct-features.js', array('bootstrap-multiselect.js'));
	}
	
	if ( ! wp_style_is( 'demo_table.css', 'enqueued' ) ) { // wp_style_is check style already included
		wp_enqueue_style('demo_table.css');
	}	
	if ( ! wp_style_is( 'bootstrap.min.css', 'enqueued' ) ) {
		wp_enqueue_style('bootstrap.min.css');
	}	
	if ( ! wp_style_is( 'bootstrap-multiselect.css', 'enqueued' ) ) {
		wp_enqueue_style('bootstrap-multiselect.css');
		wp_enqueue_style( 'rdct-features-style', $plugin_url . 'css/rdct-features.css', array('bootstrap-multiselect.css'));
	}
}
add_action('admin_menu', 'rdct_Menu');

/* function rdct_list() {
	include "kt-rdct-list.php";
} */

function rdct_rule_add() {
	require( plugin_dir_path( __FILE__ ) . 'include\kt-rdct-new.php');
}

if(isset($_POST["submit"]))
{
	if($_POST["add_rdct"] == "1")
	{
		$objRdct->addNewRdct($table_name = $wpdb->prefix . "kt_redirect",$_POST); // Save setting, add_rdct = 1
		header("Location:admin.php?page=rdct_add&act=upd&info=upd"); // header("Location:admin.php?page=rdct_add&act=add&info=saved");
		exit;
	}
	else if($_POST["add_rdct"] == "2")
	{
		$objRdct->upd_Rdct($table_name = $wpdb->prefix . "kt_redirect",$_POST); // Update setting, add_rdct = 2
		header("Location:admin.php?page=rdct_add&act=upd&id=1&info=upd");
		exit;
	}
}	
	
function kt_page_valid_test( $query ){
	global $wpdb;
	$getpost_SQL="select cta_bt_dest_link, cta_position from ".$wpdb->prefix . "kt_redirect where cta_bt_status=0 AND id<> ''";
	$result_post = $wpdb->get_results($getpost_SQL);
	if(sizeof($result_post)>0){	
		foreach($result_post as $rdct_menu){
			$rdct_menu_arr = explode(",", $rdct_menu->cta_position);
			$redirect_link = $rdct_menu->cta_bt_dest_link;
		}							
		//$valid_page_id_arr = array(43339, 46535, 46536, 45822, 45823);
		$cur_url = "//".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		
		$postid = url_to_postid($cur_url);		
		//$valid_page_id_arr[] = $postid;
		$menulist_arr = $rdct_menu_arr; // array(206, 205, 253);
		for($mr=0; $mr<count($menulist_arr); $mr++){
			$menu_array = wp_get_nav_menu_items($menulist_arr[$mr]);
			foreach($menu_array as $pageres):
				$valid_page_id_arr[] = $pageres->object_id;
			endforeach;
		}
		asort($valid_page_id_arr);
		$total_pageId_list = array_values(array_unique($valid_page_id_arr));
		if(in_array($postid, $total_pageId_list)){} else{
			if(isset($redirect_link) && $redirect_link!=''){
				wp_redirect( $redirect_link );
				exit;
			} else{
				wp_redirect( home_url() );
				exit;
			}				
		}
	}
}
add_action( 'template_redirect', 'kt_page_valid_test' );
?>