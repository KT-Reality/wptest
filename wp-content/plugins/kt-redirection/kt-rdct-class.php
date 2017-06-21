<?php
	class rdctClass
	{
		private $kt_Fields=array("id","cta_bt_title","cta_bt_dest_link","cta_bt_img_link","cta_bt_blue_btn_text","cta_bt_blue_btn_link","cta_bt_green_btn_text","cta_bt_green_btn_link","cta_bt_description", "cta_bt_assign_posts", "cta_bt_bu", "cta_tp_title", "cta_tp_btn_text", "cta_tp_btn_link", "cta_position", "cta_bt_status");

		function addNewRdct($tblname,$meminfo)
		{
			global $wpdb;
			$count = sizeof($meminfo);
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
						$vals="'".$meminfo[$key]."'";
					}
					else
					{
						$field=$field.",`".$key."`";
						$vals=$vals.",'".$meminfo[$key]."'";
					}
				}

				$sSQL = "INSERT INTO ".$tblname." ($field) values ($vals)";
				$wpdb->query($sSQL);
				return true;
			}
			else
			{
				return false;
			}
		}

		function upd_Rdct($tblname,$meminfo)
		{
			global $wpdb;
			$count = sizeof($meminfo);
			if($count>0)
			{
				$field="";
				$vals="";
				foreach($this->kt_Fields as $key)
				{
					if($field=="" && $key!="id")
					{
						$field="`".$key."` = '".$meminfo[$key]."'";
					}
					else if($key!="id")
					{
						$field=$field.",`".$key."` = '".$meminfo[$key]."'";
					}
				}

				$sSQL = "update ".$tblname." set $field where id=".$meminfo["id"];
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