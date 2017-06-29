<?php
	if ( ! defined('ABSPATH') ) {
		die('Please do not load this file directly!');
	}

	class rdctClass
	{
		private $kt_Fields=array("id", "cta_time", "cta_bt_title","cta_bt_dest_link", "cta_bt_assign_posts", "cta_position", "cta_bt_status");		
		function addNewRdct($tblname,$rdctinfo)
		{
			session_start();
			$_SESSION['notify'] = 1;
			global $wpdb;
			$count = sizeof($rdctinfo);
			if($count>0)
			{
				$id=0;
				$field="";
				$vals="";

				foreach($this->kt_Fields as $key)
				{
					if($field=="")
					{
						$field="`".$key."`";
						$vals="'".$rdctinfo[$key]."'";
					}
					else
					{
						$field=$field.",`".$key."`";
						$vals=$vals.",'".$rdctinfo[$key]."'";
					}
				}

				$sSQL = "INSERT INTO ".$tblname." ($field) values (".sanitize_text_field($vals).")";
				$wpdb->query($sSQL);				
				return true;
			}
			else
			{
				header("Location:admin.php?page=rdct_add&act=upd&id=1&info=upd");
				return true;
			}
		}

		function upd_Rdct($tblname,$rdctinfo)
		{
			session_start();
			$_SESSION['notify'] = 2;
			global $wpdb;
			$count = sizeof($rdctinfo);
			if($count>0)
			{
				$field="";
				$vals="";
				foreach($this->kt_Fields as $key)
				{
					if($field=="" && $key!="id")
					{
						$field="`".$key."` = '".$rdctinfo[$key]."'";
					}
					else if($key!="id")
					{
						$field=$field.",`".$key."` = '".$rdctinfo[$key]."'";
					}
				}

				$sSQL = "update ".$tblname." set ".sanitize_text_field($field)." where id=".$rdctinfo["id"];
				$wpdb->query($sSQL);
				return true;
			}
			else
			{
				return false;
			}
		}
	}
?>