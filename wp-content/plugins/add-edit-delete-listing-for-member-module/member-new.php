<?php

	require_once("memberclass.php");
	$objMem = new memberClass();

	$addme=$_POST["addme"];
	global $wpdb;

	if($addme==1)
	{
		$objMem->addNewMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=myplug/muyplg.php&info=saved");
		exit;
	}
	else if($addme==2)
	{
		$objMem->updMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=myplug/muyplg.php&info=upd");
		exit;
	}

	$act=$_REQUEST["act"];
	if($act=="upd")
	{
		$recid=$_REQUEST["id"];
		$sSQL="select * from ".$table_name = $wpdb->prefix . "member where id=$recid";
		$result = $wpdb->get_results($sSQL);
		$result = $result[0];
		if (sizeof($result) > 0 )
		{
			$id        = $result->id;
			$cta_bt_title      = $result->cta_bt_title;
			$cta_bt_dest_link      = $result->cta_bt_dest_link;
			$cta_bt_img_link     = $result->cta_bt_img_link;
			$cta_bt_blue_btn_text   = $result->cta_bt_blue_btn_text;
			$cta_bt_blue_btn_link       = $result->cta_bt_blue_btn_link;
			$cta_bt_green_btn_text       = $result->cta_bt_green_btn_text;
			$cta_bt_green_btn_link       = $result->cta_bt_green_btn_link;
			$cta_bt_description       = $result->cta_bt_description;
			$btn	   = "Update Member";
			$hidval	   = 2;
		}
	}
	else
	{
		$btn	   ="Add New Member";
		$id        = "";
		$cta_bt_title  	   = "";
		$cta_bt_dest_link     = "";
		$cta_bt_img_link   = "";
		$cta_bt_blue_btn_text       = "";
		$cta_bt_blue_btn_link       = "";
		$cta_bt_green_btn_text       = "";
		$cta_bt_green_btn_link       = "";
		$cta_bt_description       = "";
		$hidval	   = 1;
	}
?>
<div xmlns="http://www.w3.org/1999/xhtml" class="wrap nosubsub">

	<div class="icon32" id="icon-edit"><br/></div>
<h2>Members</h2>
	<style type="text/css">
	body {background-color: inherit !important;}
	.multiselect-container, .dropdown-menu{position:relative !important;}
	</style>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
        rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css"
        rel="stylesheet" type="text/css" />
    <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('#lstFruits').multiselect({
                includeSelectAllOption: true
            });
            $('#btnSelected').click(function () {
                var selected = $("#lstFruits option:selected");
                var message = "";
                selected.each(function () {
                    message += $(this).text() + " " + $(this).val() + "\n";
                });
                alert(message);
            });
        });
    </script>
<div id="col-left">
	<div class="col-wrap">
		<div>
			<div class="form-wrap">
				<h3>Add New Member</h3>
				<form class="validate" action="admin.php?page=member_add" method="post" id="addtag">
					<div class="form-field">
						<label for="tag-name">CTA Bottom Title</label>

						<input type="text" size="40" id="cta_bt_title" name="cta_bt_title" value="<?php echo $cta_bt_title; ?>"/>
					</div>
					<div class="form-field">
						<label for="tag-slug">CTA Bottom Destination Link</label>
						<input type="text" size="40" value="<?php echo $cta_bt_dest_link; ?>" id="cta_bt_dest_link" name="cta_bt_dest_link"/>
					</div>
					<div class="form-field">
						<label for="image">CTA Bottom Image Link</label>
						<input type="text" size="40" value="<?php echo $cta_bt_img_link; ?>" id="cta_bt_img_link" name="cta_bt_img_link"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="blue">CTA Bottom Blue Button Text</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_blue_btn_text; ?>" id="cta_bt_blue_btn_text" name="cta_bt_blue_btn_text"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="blue">CTA Bottom Blue Button Link</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_blue_btn_link; ?>" id="cta_bt_blue_btn_link" name="cta_bt_blue_btn_link"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="green">CTA Bottom Green Button Text</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_green_btn_text; ?>" id="cta_bt_green_btn_text" name="cta_bt_green_btn_text"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="green">CTA Bottom Green Button Link</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_green_btn_link; ?>" id="cta_bt_green_btn_link" name="cta_bt_green_btn_link"/>
					</div>
					<div class="form-field">
						<label for="tag-description">CTA Bottom Description</label>
						<textarea cols="40" rows="5" id="cta_bt_description" name="cta_bt_description"/><?php echo $cta_bt_description; ?></textarea>
					</div>
					<div class="form-field">

						<label for="lstFruits">CTA Bottom Assign to Posts</label>
						<select class="postform" id="lstFruits" name="cta_bt_assign_posts" multiple="multiple">
							<!--<option value="-1">None</option>-->											
					<?php
					$getpost_SQL="select id, post_title from ".$wpdb->prefix . "posts where post_type='post' AND post_status='publish'";
					$result_post = $wpdb->get_results($getpost_SQL);
					
					$arr_result_post = $result_post;
					if (sizeof($arr_result_post) > 0 )
					{
						foreach($arr_result_post as $key => $val)
						{
							//echo $post_id        = $result_post->id;?>
							<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title; ?></option>
						<?php }
						
					}
					?>
					</select>
					<!--<input type="button" id="btnSelected" value="Get Selected" />-->
					</div>

					<p class="submit">
						<input type="submit" value="<?php echo $btn; ?>" class="button" id="submit" name="submit"/>
						<input type="hidden" name="addme" value=<?php echo $hidval;?> >
						<input type="hidden" name="id" value=<?php echo $id;?> >
					</p>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
