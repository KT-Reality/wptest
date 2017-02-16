<?php

	global $wpdb;

	$table_name = $wpdb->prefix . "member";

	$info=$_REQUEST["info"];

	if($info=="saved")
	{
		echo "<div class='updated' id='message'><p><strong>Member Added</strong>.</p></div>";
	}

	if($info=="upd")
	{
		echo "<div class='updated' id='message'><p><strong>Record Updated</strong>.</p></div>";
	}

	if($info=="del")
	{
		$delid=$_GET["did"];
		$wpdb->query("delete from ".$table_name." where id=".$delid);
		echo "<div class='updated' id='message'><p><strong>Record Deleted.</strong>.</p></div>";
	}

?>

<script type="text/javascript">
	/* <![CDATA[ */
	jQuery(document).ready(function(){
		jQuery('#memberlist').dataTable();
	});
	/* ]]> */

</script>


<div class="wrap">
    <h2>Manage Members <a class="button add-new-h2" href="admin.php?page=member_add&act=add">Add New</a></h2>
	 <table class="wp-list-table widefat fixed " id="memberlist">
		<thead>
			<tr>
				<th><u>ID</u></th>
				<th><u>CTA Bottom Title</u></th>
				<th><u>CTA Bottom Destination Link</u></th>				
				<th><u>CTA Bottom Image Link</u></th>
				<th><u>CTA Bottom Blue Button Text</u></th>
				<th><u>CTA Bottom Blue Button Link</u></th>
				<th><u>CTA Bottom Green Button Text</u></th>
				<th><u>CTA Bottom Green Button Link</u></th>
				<th><u>CTA Bottom Description</u></th>
				<th></th>
				<th></th>
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
					jQuery('#mytable').dataTable();
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
	?>
			<tr>
				<td><?php echo ++$key; ?></td>
				<td nowrap><?php echo $cta_bt_title; ?></td>
				<td><?php echo $cta_bt_dest_link; ?></td>				
				<td><?php echo $cta_bt_img_link; ?></td>
				<td><?php echo $cta_bt_blue_btn_text; ?></td>
				<td><?php echo $cta_bt_blue_btn_link; ?></td>
				<td><?php echo $cta_bt_green_btn_text; ?></td>
				<td><?php echo $cta_bt_green_btn_link; ?></td>
				<td><?php echo $cta_bt_description; ?></td>
				<td><u><a href="admin.php?page=member_add&act=upd&id=<?php echo $id;?>">Edit</a></u></td>
				<td><u><a href="admin.php?page=myplug/muyplg.php&info=del&did=<?php echo $id;?>">Delete</a></u></td>
			</tr>
<?php }
	} else { ?>
			<tr>
				<td>No Record Found!</td>
			<tr>
	<?php } ?>
	</tbody>
	</table>
</div>
