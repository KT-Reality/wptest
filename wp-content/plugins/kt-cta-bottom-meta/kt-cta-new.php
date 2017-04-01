<?php

	require_once("kt-cta-class.php");
	$objMem = new memberClass();

	$addme=$_POST["addme"];
	global $wpdb;

	if($addme==1)
	{
		$objMem->addNewMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=kt-cta/kt-cta.php&info=saved");
		exit;
	}
	else if($addme==2)
	{
		$objMem->updMember($table_name = $wpdb->prefix . "member",$_POST);
		header("Location:admin.php?page=kt-cta/kt-cta.php&info=upd");
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
			$cta_bt_assign_posts = $result->cta_bt_assign_posts;
			$cta_bt_status = $result->cta_bt_status;
			$btn	   = "Update CTA";
			$hidval	   = 2;
		}
	}
	else
	{
		$btn	   ="Add New CTA";
		$id        = "";
		$cta_bt_title  	   = "";
		$cta_bt_dest_link     = "";
		$cta_bt_img_link   = "";
		$cta_bt_blue_btn_text       = "";
		$cta_bt_blue_btn_link       = "";
		$cta_bt_green_btn_text       = "";
		$cta_bt_green_btn_link       = "";
		$cta_bt_description       = "";
		$cta_bt_assign_posts = "";
		$cta_bt_status = "";
		$hidval	   = 1;
	}
?>
<div xmlns="http://www.w3.org/1999/xhtml" class="wrap nosubsub">

	<div class="icon32" id="icon-edit"><br/></div>
<h2>CTA Bottom</h2>
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
			$(':input[type="submit"]').prop('disabled', true);
            $('#lstFruits').multiselect({
                includeSelectAllOption: true
            });
			<?php if($act!="upd"){ ?>
				$('button.multiselect').text('Select Posts');
			<?php } ?>
            $('#btnSelected').click(function () {				
                var selected = $(".multiselect-container li a :input[type=checkbox]:checked");
                var message = "";
                selected.each(function () {
                    message += $(this).val() + ",";					
					$('#cta_bt_assign_posts').val(message);
					cta_bt_assign_posts
                });
				$('#cta_bt_assign_posts').val(message.substring(0,message.length-1)).attr('rows',message.length-1);
				var r = confirm("Are you confirmed with the selected posts to assign CTA Bottom");
				if (r == true) {
					$(':input[type="submit"]').prop('disabled', false);
				} else {
					return false;
				}
				               
            });
			
			//$('.multiselect').click(function () {
				var select_frm_db=$('#cta_bt_assign_posts').val();	
				var selected_post = "";
				$.each(select_frm_db.split(","), function(index, values) {
					$('.multiselect-container li a :input[type=checkbox][value='+values+']').attr('checked', true);
					$('.multiselect-container li a :input[type=checkbox][value='+values+']').parent().parent().parent().addClass('active');
					selected_post += $('.multiselect-container li a :input[type=checkbox][value='+values+']').parent().text()+", ";
					
					$(".multiselect-container li a:contains('draft')").css({"opacity": "0.5" });
					//$('#cta_bt_assign_posts').val(message.substring(0,message.length-1)).attr('rows',message.length-1);
					$('button.multiselect span').text(selected_post.substring(0,selected_post.length-2)).attr('rows',selected_post.length-2);
				//});
				
			});
			
			$('#addtag')
				.on('click', 'button.multiselect', function() {
					$('.dropdown-search').toggle();
					$('.multiselect-container').toggle();
					/* $(".dropdown-search").insertAfter("button.multiselect"); */
				})
				.on('input', '.dropdown-search', function() {
				var target = $(this);
				var search = target.val().toLowerCase();
			
				if (!search) {
					$('.multiselect-container li').show();
					return false;
				}
			
				$('.multiselect-container li').each(function() {
					var text = $(this).text().toLowerCase();
					var match = text.indexOf(search) > -1;
					$(this).toggle(match);
				});
			})
			
        });
    </script>
<div id="col-left">
	<div class="col-wrap">
		<div>
			<div class="form-wrap">
				<h3><?php echo $btn; ?></h3>
				<form class="validate" action="admin.php?page=cta_add" method="post" id="addtag">
					<div class="form-field">
						<label for="tag-name">CTA Title</label>

						<input type="text" size="40" id="cta_bt_title" name="cta_bt_title" value="<?php echo $cta_bt_title; ?>"/>
					</div>
					<div class="form-field">
						<label for="tag-slug">Destination Link</label>
						<input type="text" size="40" value="<?php echo $cta_bt_dest_link; ?>" id="cta_bt_dest_link" name="cta_bt_dest_link"/>
					</div>
					<div class="form-field">
						<label for="image">Image Link</label>
						<input type="text" size="40" value="<?php echo $cta_bt_img_link; ?>" id="cta_bt_img_link" name="cta_bt_img_link"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="blue">Blue Button Text</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_blue_btn_text; ?>" id="cta_bt_blue_btn_text" name="cta_bt_blue_btn_text"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="blue">Blue Button Link</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_blue_btn_link; ?>" id="cta_bt_blue_btn_link" name="cta_bt_blue_btn_link"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="green">Green Button Text</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_green_btn_text; ?>" id="cta_bt_green_btn_text" name="cta_bt_green_btn_text"/>
					</div>
					<div class="form-field">
						<label for="tag-slug"><font color="green">Green Button Link</font></label>
						<input type="text" size="40" value="<?php echo $cta_bt_green_btn_link; ?>" id="cta_bt_green_btn_link" name="cta_bt_green_btn_link"/>
					</div>
					<div class="form-field">
						<label for="tag-description">Description</label>
						<textarea cols="40" rows="5" id="cta_bt_description" name="cta_bt_description"/><?php echo $cta_bt_description; ?></textarea>
					</div>
					
					<div class="form-field">
						<label for="tag-status">CTA Status</label>
						<select class="postform" name="cta_bt_status">
							<option value="0" <?php if($cta_bt_status == 0) echo 'selected';?>>Enable</option>
							<option value="1" <?php if($cta_bt_status == 1) echo 'selected';?>>Disable</option>
						</select>
					</div>
					
					<div class="form-field">
						<label for="lstFruits">Assign to Posts</label>
						<input type="search" placeholder="Search Blog Posts" class="dropdown-search" style="display: none;"/>
						<select class="postform" id="lstFruits" multiple="multiple">							
						<?php
						if($act=="upd"){
							$cta_id = $_REQUEST['id'];
							$cta_id_arr = array();
							$getpost_SQL="select cta_bt_assign_posts from ".$wpdb->prefix . "member where id=$cta_id";
							$result_post = $wpdb->get_results($getpost_SQL);
							
							$arr_result_post = $result_post;
							foreach($arr_result_post as $key => $val){ $cta_post_id = $val->cta_bt_assign_posts;}
							
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id in(".$cta_post_id.")";
							$result_post = $wpdb->get_results($getpost_SQL);
							
							$arr_result_post = $result_post;
							if (sizeof($arr_result_post) > 0 )
							{
								foreach($arr_result_post as $key => $val)
								{
									if($val->post_status == 'publish') {?>
									<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title; ?></option>
								<?php } else {?>
									<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title. '('.$val->post_status.')'; ?></option>
								<?php }
								}						
							}					
							
							$getpost_SQL_except_assign="select cta_bt_assign_posts from ".$wpdb->prefix . "member where id <> $cta_id";
							$result_post_except_assign = $wpdb->get_results($getpost_SQL_except_assign);
							
							$cta_post_id_except_assign = array();
							
							$arr_result_post_except_assign = $result_post_except_assign;
							foreach($arr_result_post_except_assign as $key => $val){ $cta_post_id_except_assign[] = $val->cta_bt_assign_posts;}
							//var_dump($cta_post_id_except_assign);
							echo $not_assign_posts = implode(",", $cta_post_id_except_assign);
							
							
							$getpost_SQL = "select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id NOT IN('".$cta_post_id."')";
							$result_post = $wpdb->get_results($getpost_SQL);
							
							$arr_result_post = $result_post;
							if (sizeof($arr_result_post) > 0 )
							{
								foreach($arr_result_post as $key => $val)
								{
									if($val->post_status == 'publish') {?>
									<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title; ?></option>
								<?php } else {?>
									<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title. '('.$val->post_status.')'; ?></option>
								<?php }
								}
								
							}
						} else{
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft')";
							$result_post = $wpdb->get_results($getpost_SQL);
							
							$arr_result_post = $result_post;
							if (sizeof($arr_result_post) > 0 )
							{
								foreach($arr_result_post as $key => $val)
								{
									if($val->post_status == 'publish') {?>
									<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title; ?></option>
								<?php } else {?>
									<option value="<?php echo $val->id;?>"><?php echo 'post ID['.$val->id.']   '.$val->post_title. '('.$val->post_status.')'; ?></option>
								<?php }
								}
								
							}
						}
						?>
						</select>
						<input type="button" id="btnSelected" value="Confirm Selected Posts" />
					</div>
					
					<div>
					<input type="hidden" size="40" value="<?php echo $cta_bt_assign_posts; ?>" id="cta_bt_assign_posts" name="cta_bt_assign_posts"/>
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
<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
</div>
