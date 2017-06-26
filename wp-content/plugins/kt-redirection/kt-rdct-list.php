<?php

	global $wpdb;

	$table_name = $wpdb->prefix . "kt_redirect";

	$info=$_REQUEST["info"];

	if($info=="saved")
	{
		echo "<div class='updated' id='message'><p><strong>CTA Added</strong>.</p></div>";		
	}

	if($info=="upd")
	{
		echo "<div class='updated' id='message'><p><strong>CTA Updated</strong>.</p></div>";
	}

	if($info=="del")
	{
		$delid=$_GET["did"];
		$wpdb->query("delete from ".$table_name." where id=".$delid);
		echo "<div class='updated' id='message'><p><strong>CTA Deleted.</strong>.</p></div>";
	}

?>

<script type="text/javascript">
	/* <![CDATA[ */
	jQuery(document).ready(function(){
		jQuery('#kt_redirect_List').dataTable();
	});
	/* ]]> */

</script>
<style type="text/css">
.sorting {border-left: 1px solid #e1e1e1;}
.odd td, .even td {border-left: 1px solid #e1e1e1; border-bottom: 1px dashed #111111;}
</style>
<div class="wrap">
    <h2>Manage Redirection <a class="button add-new-h2" href="admin.php?page=rdct_add&act=add">Add New</a></h2>
	 <table class="wp-list-table widefat fixed " id="kt_redirect_List">
		<thead>
			<tr>
				<th><u>ID</u></th>
				<th><u>Title</u></th>
				<th><u>Destination Link</u></th>				
				<th><u>Image Link</u></th>
				<th><u>Blue Button Text</u></th>
				<th><u>Blue Button Link</u></th>
				<th><u>Green Button Text</u></th>
				<th><u>Green Button Link</u></th>
				<th><u>Description</u></th>
				<th><u>Assign Posts</u></th>
				<th><u>Business Unit</u></th>
				<th><u>Top CTA Title</u></th>
				<th><u>Top CTA Button Text</u></th>
				<th><u>Top CTA Button Link</u></th>
				<th><u>CTA Position</u></th>
				<th><u>CTA Status</u></th>
				<th>Update</th>
				<th>Thrash</th>
			</tr>
		</thead>
		<tbody>
<?php
		$sql = "select * from ".$table_name." order by id";
		$arrresult = $wpdb->get_results($sql);
		
		if (sizeof($arrresult) > 0 )
		{

		?>
				<script type="text/javascript">
				/* <![CDATA[ */
				jQuery(document).ready(function(){
					jQuery('#rdct_tbl').dataTable();
				});
				/* ]]> */

				</script>

<?php
			
			foreach($arrresult as $key => $val)
			{
				$id        = $val->id;
				$cta_bt_title  = $val->cta_bt_title;
				$cta_bt_dest_link  = $val->cta_bt_dest_link;				
				$cta_bt_img_link      = $val->cta_bt_img_link;
				$cta_bt_blue_btn_text   = $val->cta_bt_blue_btn_text;
				$cta_bt_blue_btn_link       = $val->cta_bt_blue_btn_link;
				$cta_bt_green_btn_text   = $val->cta_bt_green_btn_text;
				$cta_bt_green_btn_link       = $val->cta_bt_green_btn_link;
				$cta_bt_description   = $val->cta_bt_description;
				$cta_bt_assign_posts   = $val->cta_bt_assign_posts;				
				$cta_bt_bu   = $val->cta_bt_bu;
				$cta_tp_title   = $val->cta_tp_title;
				$cta_tp_btn_text   = $val->cta_tp_btn_text;
				$cta_tp_btn_link   = $val->cta_tp_btn_link;
				$cta_position = $val->cta_position;
				$cta_bt_status   = $val->cta_bt_status;
				
				switch($cta_bt_bu){
					case 1: $cta_bt_bu = 'DBA'; break;
					case 2: $cta_bt_bu = 'DCA'; break;
					case 3: $cta_bt_bu = 'DSM'; break;
					case 4: $cta_bt_bu = 'P&A'; break;
					case 5: $cta_bt_bu = 'zOS'; break;
				}
				
				$arr_cta_pos = array();
				$cta_pos = explode(',', $cta_position);				
				for($pos=0; $pos<count($cta_pos); $pos++)
				{
					if($cta_pos[$pos]==1) $arr_cta_pos[] = 'Top'; else if($cta_pos[$pos]==2) $arr_cta_pos[] = 'Bottom'; else if($cta_pos[$pos]==3) $arr_cta_pos[] = 'Top-Right-Rail';
				}
	?>
			<tr <?php if($cta_bt_status == 1) echo "style=opacity:0.5"; ?>>
				<td><?php echo ++$key; ?></td>
				<td><?php echo $cta_bt_title; ?></td>
				<td><?php echo $cta_bt_dest_link; ?></td>				
				<td><?php echo $cta_bt_img_link; ?></td>
				<td><?php echo $cta_bt_blue_btn_text; ?></td>
				<td><?php echo $cta_bt_blue_btn_link; ?></td>
				<td><?php echo $cta_bt_green_btn_text; ?></td>
				<td><?php echo $cta_bt_green_btn_link; ?></td>
				<td><?php echo $cta_bt_description; ?></td>
				<td><?php echo $cta_bt_assign_posts; ?></td>
				<td><?php echo $cta_bt_bu; ?></td>
				<td><?php echo $cta_tp_title; ?></td>
				<td><?php echo $cta_tp_btn_text; ?></td>
				<td><?php echo $cta_tp_btn_link; ?></td>
				<td><?php echo implode(' | ', $arr_cta_pos); ?></td>
				<td><?php if($cta_bt_status == 0) echo 'Enabled'; else if($cta_bt_status == 1) echo 'Disabled';?></td>
				<td><u><a href="admin.php?page=rdct_add&act=upd&id=<?php echo $id;?>">Edit</a></u></td>
				<td><u><a href="admin.php?page=rdct/kt-rdct.php&info=del&did=<?php echo $id;?>">Delete</a></u></td>
			</tr>
<?php }
	} else { ?>
			<tr>
				<td>No Redirection Found!</td>
			<tr>
	<?php } ?>
	</tbody>
	</table>
</div>
