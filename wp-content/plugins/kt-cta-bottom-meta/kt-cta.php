<?php
/*
Plugin Name: kt-cta-bottom-meta
Plugin URI: http://www.webbugs.in/romal
Description: This plugin used for managing CTA for post.
Version: 1.0
Author: Komalchand
Author URI: https://www.realitypremedia.com
*/


require_once("kt-cta-class.php");
$objMem = new memberClass();

$table_name = $wpdb->prefix . "member";

function addmyplug() {

	global $wpdb;

	$table_name = $wpdb->prefix . "member";

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
	register_activation_hook(__FILE__,'addmyplug');


	/* Creating Menus */
	function member_Menu()
	{

		/* Adding menus */
		add_menu_page(__('CTA List'),'CTA List', 8,'cta/kt-cta.php', 'member_list');

		/* Adding Sub menus */
		add_submenu_page('cta/kt-cta.php', 'Add CTA', 'Add CTA', 8, 'cta_add', 'member_add');

	wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
	wp_enqueue_style('demo_table.css');

	wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
	wp_enqueue_script('jquery.dataTables.js');

	}


add_action('admin_menu', 'member_Menu');


function member_list() {
	include "kt-cta-list.php";
}


function member_add() {
	include "kt-cta-new.php";
}

if(isset($_POST["submit"]))
{
	if($_POST["addme"] == "1")
	{
		$objMem->addNewMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=cta/kt-cta.php&info=saved");
		exit;
	}
	else if($_POST["addme"] == "2")
	{
		$objMem->updMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=cta/kt-cta.php&info=upd");
		exit;
	}
}

	function viewcta_list()
	{
		global $wpdb, $table_name ;


		wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
		wp_enqueue_style('demo_table.css');

		wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
		wp_enqueue_script('jquery.dataTables.js');


		$sSQL = "select * from $table_name";
		$arrresult = $wpdb->get_results($sSQL);

?>


			<h3>Manage CTA</h3>

<div style="width:90%">
			<table width='100%' cellpadding='2' cellspacing='2' id="mytable">
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

	add_shortcode('vcta_List', 'viewcta_list');

?>