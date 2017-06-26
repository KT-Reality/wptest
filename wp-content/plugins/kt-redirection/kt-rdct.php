<?php
/*
Plugin Name: kt-redirect-URL
Plugin URI: https://www.realitypremedia.com
Description: This plugin used for redrecting the URL not mentioned in the menus.
Version: 1.0
Author: Komalchand
Author URI: https://www.realitypremedia.com
*/
require_once("kt-rdct-class.php");
$objRdct = new rdctClass();
global $wpdb;
$table_name = $wpdb->prefix . "kt_redirect";

function add_ktrdct_plug() {
	$table_name = $wpdb->prefix . "kt_redirect";

	$MSQL = "show tables like '$table_name'";

	if($wpdb->get_var($MSQL) != $table_name)
	{

	   $sql = "CREATE TABLE IF NOT EXISTS $table_name (
		  id mediumint(9) NOT NULL AUTO_INCREMENT,
		  time datetime DEFAULT '0000-00-00 00:00:00' NOT NULL,
		  cta_bt_title varchar(255) NULL,
		  cta_bt_dest_link varchar(255) NULL,
		  cta_bt_img_link varchar(255) NULL,
		  cta_bt_blue_btn_text varchar(255) NULL,
		  cta_bt_blue_btn_link varchar(255) NULL,
		  cta_bt_green_btn_text varchar(255) NULL,
		  cta_bt_green_btn_link varchar(255) NULL,
		  cta_bt_description varchar(255) NULL,
		  cta_bt_assign_posts text NULL,
		  PRIMARY KEY id (id)
		) ";

		require_once(ABSPATH . "wp-admin/includes/upgrade.php");
		dbDelta($sql);
	}
}
	/* Hook Plugin */
	register_activation_hook(__FILE__,'add_ktrdct_plug');


	/* Creating Menus */
	function rdct_Menu()
	{
		/* Adding menus */
		global $wpdb;
		$sSQL="select * from ".$table_name = $wpdb->prefix . "kt_redirect where id<> ''";
		$result = $wpdb->get_results($sSQL);
		$result = $result[0];
		if (sizeof($result) > 0 ){
			add_menu_page(__('Redirect List'),'Redirect ALL', 8,'rdct_add&act=upd&id=1', 'rdct_list');
		} else {
			add_menu_page(__('Redirect List'),'Redirect ALL', 8,'rdct_add&act=add', 'rdct_list');
		}
		
		
		/* Adding Sub menus */
		add_submenu_page('rdct/kt-rdct.php', 'Redirection Setting', 'Redirect Setting', 8, 'rdct_add', 'rdct_rule_add');

	wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
	wp_enqueue_style('demo_table.css');

	wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
	wp_enqueue_script('jquery.dataTables.js');

	}
	add_action('admin_menu', 'rdct_Menu');


function rdct_list() {
	include "kt-rdct-list.php";
	$wpdb->query("ALTER TABLE $table_name ADD cta_bt_status TINYINT(2) NOT NULL AFTER cta_bt_assign_posts");
	$wpdb->query("ALTER TABLE $table_name ADD cta_bt_bu TINYINT(2) NOT NULL AFTER cta_bt_assign_posts");
	$wpdb->query("ALTER TABLE $table_name ADD cta_tp_title VARCHAR(255) NOT NULL AFTER cta_bt_bu, ADD cta_tp_btn_text VARCHAR(255) NOT NULL AFTER cta_tp_title, ADD cta_tp_btn_link TEXT NOT NULL AFTER cta_tp_btn_text, ADD cta_position TINYINT(2) NOT NULL AFTER cta_tp_btn_link");
	$wpdb->query("ALTER TABLE $table_name CHANGE cta_position cta_position VARCHAR(50) NOT NULL");
}


function rdct_rule_add() {
	include "kt-rdct-new.php";
}

if(isset($_POST["submit"]))
{
	if($_POST["add_rdct"] == "1")
	{
		$objRdct->addNewRdct($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=rdct_add&act=add&info=saved");
		exit;
	}
	else if($_POST["add_rdct"] == "2")
	{
		$objRdct->upd_Rdct($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=rdct_add&act=upd&id=1&info=upd");
		exit;
	}
}

	function view_rdct_list()
	{
		global $wpdb, $table_name ;


		wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
		wp_enqueue_style('demo_table.css');

		wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
		wp_enqueue_script('jquery.dataTables.js');


		$sSQL = "select * from $table_name";
		$arrresult = $wpdb->get_results($sSQL);

?>


			<h3>Manage rdct</h3>

<div style="width:90%">
			<table width='100%' cellpadding='2' cellspacing='2' id="rdct_tbl">
				<thead>
					<tr>
						<th>ID</th>
						<th>CTA bottom title</th>
						<th>cta bottom destination link</th>
						<th>cta bottom image link</th>
						<th>cta bottom blue btn text</th>
						<th>cta bottom blue btn link</th>
						<th>cta bottom green btn text</th>
						<th>cta bottom green btn link</th>
						<th>cta bottom description</th>
						<th>ctc bottom assigned posts</th>
					</tr>
				</thead>
			<tbody>
<?php

			if(count($arrresult) > 0)
			{
				foreach($arrresult as $key => $val)
				{
?>
					<tr>
						<td><?php echo ++$key; ?></td>
						<td><?php echo $val->cta_bt_title; ?></td>
						<td><?php echo $val->cta_bt_dest_link; ?></td>
						<td><?php echo $val->cta_bt_img_link; ?></td>
						<td><?php echo $val->cta_bt_blue_btn_text; ?></td>
						<td><?php echo $val->cta_bt_blue_btn_link; ?></td>
						<td><?php echo $val->cta_bt_green_btn_text; ?></td>
						<td><?php echo $val->cta_bt_green_btn_link; ?></td>
						<td><?php echo $val->cta_bt_description; ?></td>
						<td><?php echo $val->cta_bt_assign_posts; ?></td>						  
					</tr>
<?php
				}

			}
			else
			{
?>
				<tr ><td colspan='5'>No Records</td></tr>
<?php
			}
?>
			</tbody>
			</table>
			</div>
<?php
	}
	add_shortcode('vrdct_List', 'view_rdct_list');
	
	function kt_page_valid_test( $query ){
		global $wpdb;
    //if( is_user_logged_in()) {
		$getpost_SQL="select cta_bt_dest_link, cta_position from ".$wpdb->prefix . "kt_redirect where id<> ''";
		$result_post = $wpdb->get_results($getpost_SQL);		
		foreach($result_post as $rdct_menu){
			$rdct_menu_arr = explode(",", $rdct_menu->cta_position);
			$redirect_link = $rdct_menu->cta_bt_dest_link;
		}
		//print_r($rdct_menu_arr);
							
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
		//print_r($total_pageId_list);
		if(in_array($postid, $total_pageId_list))
		{
			echo "Valid Page";
		}
		else
		{
			if(isset($redirect_link) && $redirect_link!=''){
				wp_redirect( $redirect_link );
				exit;
			} else{
				wp_redirect( home_url() );
				exit;
			}				
		}
	}
	add_action( 'template_redirect', 'kt_page_valid_test' );
?>