<?php 
if ( ! defined('ABSPATH') ) {
		die('You do not have sufficient permission to access it');
	}	
if( !defined( 'WP_UNINSTALL_PLUGIN' ) ) exit ();
global $wpdb;
echo "<script>var r = confirm('Are you deleting tables added while plugin redirection activated.') if(r == false) return false </script>";
$table_name = $wpdb->prefix . 'kt_redirect';
$sql = "DROP TABLE IF EXISTS $table_name";
$wpdb->query($sql);
?>