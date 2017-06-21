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
$objMem = new rdctClass();

$table_name = $wpdb->prefix . "kt_redirect";

function add_ktrdct_plug() {

	global $wpdb;

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
		add_menu_page(__('Redirect List'),'Redirect List', 8,'rdct/kt-rdct.php', 'member_list');
		
		/* Adding Sub menus */
		add_submenu_page('rdct/kt-rdct.php', 'Add Redirection', 'Add Redirection', 8, 'cta_add', 'rdct_rule_add');

	wp_register_style('demo_table.css', plugin_dir_url(__FILE__) . 'css/demo_table.css');
	wp_enqueue_style('demo_table.css');

	wp_register_script('jquery.dataTables.js', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.js', array('jquery'));
	wp_enqueue_script('jquery.dataTables.js');

	}


add_action('admin_menu', 'rdct_Menu');


function rdct_rule_add() {
	include "kt-rdct-list.php";
	$wpdb->query("ALTER TABLE $table_name ADD cta_bt_status TINYINT(2) NOT NULL AFTER cta_bt_assign_posts");
	$wpdb->query("ALTER TABLE $table_name ADD cta_bt_bu TINYINT(2) NOT NULL AFTER cta_bt_assign_posts");
	$wpdb->query("ALTER TABLE $table_name ADD cta_tp_title VARCHAR(255) NOT NULL AFTER cta_bt_bu, ADD cta_tp_btn_text VARCHAR(255) NOT NULL AFTER cta_tp_title, ADD cta_tp_btn_link TEXT NOT NULL AFTER cta_tp_btn_text, ADD cta_position TINYINT(2) NOT NULL AFTER cta_tp_btn_link");
	$wpdb->query("ALTER TABLE $table_name CHANGE cta_position cta_position VARCHAR(50) NOT NULL");
}


function rdct_add() {
	include "kt-rdct-new.php";
}

if(isset($_POST["submit"]))
{
	if($_POST["add_rdct"] == "1")
	{
		$objMem->addNewRdct($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=rdct/kt-rdct.php&info=saved");
		exit;
	}
	else if($_POST["add_rdct"] == "2")
	{
		$objMem->updMember($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=rdct/kt-rdct.php&info=upd");
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

	add_shortcode('vrdct_List', 'view_rdct_list');

?>