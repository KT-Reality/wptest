<?php
	class rdctClass
	{
		private $kt_Fields=array("id","cta_bt_title","cta_bt_dest_link","cta_bt_img_link","cta_bt_blue_btn_text","cta_bt_blue_btn_link","cta_bt_green_btn_text","cta_bt_green_btn_link","cta_bt_description", "cta_bt_assign_posts", "cta_bt_bu", "cta_tp_title", "cta_tp_btn_text", "cta_tp_btn_link", "cta_position", "cta_bt_status");

		function addNewRdct($tblname,$rdctinfo)
		{
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

				$sSQL = "INSERT INTO ".$tblname." ($field) values ($vals)";
				$wpdb->query($sSQL);
				return true;
			}
			else
			{
				return false;
			}
		}

		function upd_Rdct($tblname,$rdctinfo)
		{
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

				$sSQL = "update ".$tblname." set $field where id=".$rdctinfo["id"];
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