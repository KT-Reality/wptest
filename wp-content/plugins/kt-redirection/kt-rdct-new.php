<?php
	
	require_once("kt-rdct-class.php");
	$objMem = new rdctClass();

	$add_rdct=$_POST["add_rdct"];
	global $wpdb;

	if($add_rdct==1)
	{
		$objMem->addNewRdct($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=kt-rdct/kt-rdct.php&info=saved");
		exit;
	}
	else if($add_rdct==2)
	{
		$objMem->updMember($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=kt-rdct/kt-rdct.php&info=upd");
		exit;
	}

	$act=$_REQUEST["act"];
	if($act=="upd")
	{
		$recid=$_REQUEST["id"];
		$sSQL="select * from ".$table_name = $wpdb->prefix . "kt_redirect where id=$recid";
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
			$cta_bt_bu = $result->cta_bt_bu;
			$cta_tp_title   = $result->cta_tp_title;
			$cta_tp_btn_text   = $result->cta_tp_btn_text;
			$cta_tp_btn_link   = $result->cta_tp_btn_link;
			$cta_position = $result->cta_position;
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
		$cta_bt_bu = "";
		$cta_tp_title   = "";
		$cta_tp_btn_text   = "";
		$cta_tp_btn_link   = "";
		$cta_position = "";
		$hidval	   = 1;
	}
?>
<div xmlns="http://www.w3.org/1999/xhtml" class="wrap nosubsub">

	<div class="icon32" id="icon-edit"><br/></div>
<h2>Redirection</h2>
	<style type="text/css">
	body {background-color: #F1F1F1 !important;}
	.multiselect-container, .dropdown-menu{position:relative !important; height: auto; max-height: 300px; width: 100%;, max-width: 750px; overflow: scroll !important;}
	button.multiselect span.multiselect-selected-text{white-space:pre-wrap; float: left; width: 96%;}
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
			
			$('#cta_pos').multiselect({
                includeSelectAllOption: true
            });
			
			<?php if($act!="upd"){ ?>
				$('button.multiselect').text('Select Posts');
			<?php } ?>
			
			$('#cta_locate').on('change', '.multiselect-container', function () {
				var position_selected = $("#cta_locate .multiselect-container li a :input[type=checkbox]:checked");
                var position_msg = "";
                position_selected.each(function () {
					if($(this).val()!='multiselect-all') {
						position_msg += $(this).val() + ",";					
						$('#cta_position').val(position_msg);						
					}
                });
				$('#cta_position').val(position_msg.substring(0,position_msg.length-1)).attr('rows',position_msg.length-1);
			});
			
            $('#btnSelected').click(function () {				
                 var post_selected = $("#assign_post .multiselect-container li a :input[type=checkbox]:checked");
                var post_message = "";
                post_selected.each(function () {
					if($(this).val()!='multiselect-all') {
						post_message += $(this).val() + ",";					
						$('#cta_bt_assign_posts').val(post_message);
						cta_bt_assign_posts
					}
                });
				$('#cta_bt_assign_posts').val(post_message.substring(0,post_message.length-1)).attr('rows',post_message.length-1);				
				
				var r = confirm("Are you confirmed with the selected posts to assign CTA Bottom");
				if (r == true) {
					$(':input[type="submit"]').prop('disabled', false);
					$('#assign_post .multiselect-container').toggle();
				} else {
					$('#assign_post .multiselect-container').toggle();
					return false;
				}
				               
            });
			
			var select_frm_db=$('#cta_bt_assign_posts').val();	
			var selected_post = "";
			$.each(select_frm_db.split(","), function(index, values) {
				$('#assign_post .multiselect-container li a :input[type=checkbox][value='+values+']').attr('checked', true);
				$('#assign_post .multiselect-container li a :input[type=checkbox][value='+values+']').parent().parent().parent().addClass('active');					
				$("#assign_post .multiselect-container li a:contains('draft')").css({"opacity": "0.5" });					
				selected_post += $('#assign_post .multiselect-container li a :input[type=checkbox][value='+values+']').parent().text()+", ";					
				$('#assign_post button.multiselect span').text(selected_post.substring(0,selected_post.length-2)).attr('rows',selected_post.length-2);
			});
			
			var select_frm_position = $('#cta_position').val();	
			var selected_position = "";
			$.each(select_frm_position.split(","), function(index, values) {
				$('#cta_locate .multiselect-container li a :input[type=checkbox][value='+values+']').attr('checked', true);
				$('#cta_locate .multiselect-container li a :input[type=checkbox][value='+values+']').parent().parent().parent().addClass('active');					
				$("#cta_locate .multiselect-container li a:contains('draft')").css({"opacity": "0.5" });					
				selected_position += $('#cta_locate .multiselect-container li a :input[type=checkbox][value='+values+']').parent().text()+", ";					
				$('#cta_locate button.multiselect span').text(selected_position.substring(0,selected_position.length-2)).attr('rows',selected_position.length-2);
			});
			
			$('#addtag')
				.on('click', '#assign_post button.multiselect', function() {
					$('#assign_post .dropdown-search').toggle();
					$('#assign_post .multiselect-container').toggle();
				})
				.on('input', '.dropdown-search', function() {
					var target = $(this);
					var search = target.val().toLowerCase();
				
					if (!search) {
						$('#assign_post .multiselect-container li').show();
						return false;
					}
				
					$('#assign_post .multiselect-container li').each(function() {
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
					
					<div class="form-field" id="cta_locate">
						<label for="tag-position">Exclude Menu</label>
						<select class="postform cta_position" id="cta_pos" name="cta_position" multiple="multiple" >
							<option value="1">Top</option>
							<option value="2">Bottom</option>
							<option value="3">Top-Right-Rail</option>							
						</select>
					</div>
					<div class="form-field topcta-wrap">
						<div class="form-field">
							<label for="tag-name">Top CTA Title</label>
							<input type="text" size="40" id="cta_tp_title" name="cta_tp_title" value="<?php echo $cta_tp_title; ?>"/>
						</div>
						<div class="form-field">
							<label for="tag-text">Top CTA Button Text</label>
							<input type="text" size="40" value="<?php echo $cta_tp_btn_text; ?>" id="cta_tp_btn_text" name="cta_tp_btn_text"/>
						</div>
						<div class="form-field">
							<label for="tag-link">Top CTA Button Link</label>
							<input type="text" size="40" value="<?php echo $cta_tp_btn_link; ?>" id="cta_tp_btn_link" name="cta_tp_btn_link"/>
						</div>
					</div>
					
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
						<label for="tag-status">Redirection Status</label>
						<select class="postform" name="cta_bt_status">
							<option value="0" <?php if($cta_bt_status == 0) echo 'selected';?>>Enable</option>
							<option value="1" <?php if($cta_bt_status == 1) echo 'selected';?>>Disable</option>
						</select>
					</div>
					<div class="form-field">
						<label for="tag-status">Business Unit</label>
						<select class="postform" name="cta_bt_bu">
							<option value="3" <?php if($cta_bt_bu == 3) echo 'selected';?>>DSM</option>
							<option value="1" <?php if($cta_bt_bu == 1) echo 'selected';?>>DBA</option>
							<option value="5" <?php if($cta_bt_bu == 5) echo 'selected';?>>zOS</option>
							<option value="4" <?php if($cta_bt_bu == 4) echo 'selected';?>>P&A </option>
							<option value="2" <?php if($cta_bt_bu == 2) echo 'selected';?>>DCA</option>
						</select>
					</div>
					<div class="form-field" id="assign_post">
						<label for="lstFruits">Posts to Exclude</label>
						<input type="search" placeholder="Search Blog Posts to select" class="dropdown-search" style="display: none;"/>
						<select class="postform" id="lstFruits" multiple="multiple">							
						<?php
						if($act=="upd"){
							$cta_id = $_REQUEST['id'];
							$getpost_SQL="select cta_bt_assign_posts from ".$wpdb->prefix . "kt_redirect where id=$cta_id";
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
							
							$getpost_SQL_except_assign="select cta_bt_assign_posts from ".$wpdb->prefix . "kt_redirect where (id <> $cta_id AND cta_bt_assign_posts <> '')";
							$result_post_except_assign = $wpdb->get_results($getpost_SQL_except_assign);
							
							$cta_post_id_except_assign = array();
							
							$arr_result_post_except_assign = $result_post_except_assign;
							foreach($arr_result_post_except_assign as $key => $val){ $cta_post_id_except_assign[] = $val->cta_bt_assign_posts;}
							$cta_post_id_except_assign[] = $cta_post_id;
							$not_assign_posts = rtrim(implode(",", $cta_post_id_except_assign),',');
							
							
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id NOT IN(".$not_assign_posts.")";
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
							$getpost_SQL_except_assign="select cta_bt_assign_posts from ".$wpdb->prefix . "kt_redirect where (cta_bt_assign_posts <> '')";
							$result_post_except_assign = $wpdb->get_results($getpost_SQL_except_assign);
							
							$cta_post_id_except_assign = array();
							
							$arr_result_post_except_assign = $result_post_except_assign;
							foreach($arr_result_post_except_assign as $key => $val){ $cta_post_id_except_assign[] = $val->cta_bt_assign_posts;}
							$cta_post_id_except_assign[] = $cta_post_id;
							$not_assign_posts = rtrim(implode(",", $cta_post_id_except_assign),',');
							
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id NOT IN(".$not_assign_posts.")";
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
					<input type="hidden" size="40" value="<?php echo $cta_position; ?>" id="cta_position" name="cta_position"/>
					</div>
					<p class="submit">
						<input type="submit" value="<?php echo $btn; ?>" class="button" id="submit" name="submit"/>
						<input type="hidden" name="add_rdct" value=<?php echo $hidval;?> >
						<input type="hidden" name="id" value=<?php echo $id;?> >
					</p>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
</div>
