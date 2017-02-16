<?php
/*
Plugin Name: Add/Edit/Delete Module
Plugin URI: http://www.webbugs.in/romal
Description: This plugin used for add edit delete and listing module at admin side.Also user can search and sort records.
Version: 1.0
Author: Romal Patel
Author URI: http://www.webbugs.in/romal
*/


require_once("memberclass.php");
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
		add_menu_page(__('Member List'),'Member List', 8,'myplug/muyplg.php', 'member_list');

		/* Adding Sub menus */
		add_submenu_page('myplug/muyplg.php', 'Add Member', 'Add Member', 8, 'member_add', 'member_add');

	wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
	wp_enqueue_style('demo_table.css');

	wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
	wp_enqueue_script('jquery.dataTables.js');

	}


add_action('admin_menu', 'member_Menu');


function member_list() {
	include "memberlist.php";
}


function member_add() {
	include "member-new.php";
}

if(isset($_POST["submit"]))
{
	if($_POST["addme"] == "1")
	{
		$objMem->addNewMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=myplug/muyplg.php&info=saved");
		exit;
	}
	else if($_POST["addme"] == "2")
	{
		$objMem->updMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=myplug/muyplg.php&info=upd");
		exit;
	}
}

	function viewmember_list()
	{
		global $wpdb, $table_name ;


		wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
		wp_enqueue_style('demo_table.css');

		wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
		wp_enqueue_script('jquery.dataTables.js');


		$sSQL = "select * from $table_name";
		$arrresult = $wpdb->get_results($sSQL);

?>


			<h3>Manage Members</h3>

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

	add_shortcode('vmember_List', 'viewmember_list');

?>