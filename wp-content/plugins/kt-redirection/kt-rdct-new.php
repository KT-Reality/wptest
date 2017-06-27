<?php	
	require_once("kt-rdct-class.php");
	$objRdct = new rdctClass();
	$add_rdct=$_POST["add_rdct"];
	global $wpdb;
	
	$info=$_REQUEST["info"];
	if($info=="saved")
	{	
		if(isset($_SESSION['notify']) && $_SESSION['notify']==1) { echo "<div class='updated' id='message'><p><strong>Redirection Setting Saved</strong>.</p></div>"; }		
		session_destroy();		
		//echo "<div class='updated' id='message'><p><strong>Redirection Setting Saved</strong>.</p></div>";
	}	
	
	
	if($_REQUEST["act"]=="add" && $_REQUEST["delt"]=="rem")
	{			
		global $wpdb;
		$getpost_SQL="select id FROM ".$wpdb->prefix . "kt_redirect where id <> ''";
		$result_count = $wpdb->get_var($getpost_SQL);		
		if($result_count>0) { $_SESSION['notify'] = 3; }
		$table_name = $wpdb->prefix . "kt_redirect";
		$wpdb->query("delete from ".$table_name);		
		if(isset($_SESSION['notify']) && $_SESSION['notify']==3){
			echo "<div class='updated' id='message'><p><strong>Setting Removed.</strong>.</p></div>";
		}
		session_destroy();
	}
	
	if($info=="upd")
	{
		//echo "Test: ". $_SESSION['notify'];
		if(isset($_SESSION['notify']) && $_SESSION['notify']==1) { echo "<div class='updated' id='message'><p><strong>Redirection Setting Saved</strong>.</p></div>";}
		else if(isset($_SESSION['notify']) && $_SESSION['notify']==2) { echo "<div class='updated' id='message'><p><strong>Redirection Setting Updated</strong>.</p></div>";}
		session_destroy();
	}	

	if($add_rdct==1) 
	{
		$objRdct->addNewRdct($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=rdct_add&act=upd&info=upd");
		exit;
	}
	else if($add_rdct==2)
	{
		$objRdct->upd_Rdct($table_name = $wpdb->prefix . "kt_redirect",$_POST);
		header("Location:admin.php?page=rdct_add&act=upd&id=1&info=upd");
		exit;
	}

	$act=$_REQUEST["act"];
	if($act=="upd")
	{
		$recid=$_REQUEST["id"];
		$hidval = 2;
		$btn = "Update";
		$sSQL="select * from ".$table_name = $wpdb->prefix . "kt_redirect where id<> ''";
		$result = $wpdb->get_results($sSQL);
		$result = $result[0];
		if (sizeof($result) > 0 )
		{
			$id = $result->id;
			$cta_bt_title = $result->cta_bt_title;
			$cta_bt_dest_link = $result->cta_bt_dest_link;
			$cta_bt_img_link = $result->cta_bt_img_link;
			$cta_bt_blue_btn_text = $result->cta_bt_blue_btn_text;
			$cta_bt_blue_btn_link = $result->cta_bt_blue_btn_link;
			$cta_bt_green_btn_text = $result->cta_bt_green_btn_text;
			$cta_bt_green_btn_link = $result->cta_bt_green_btn_link;
			$cta_bt_description = $result->cta_bt_description;
			$cta_bt_assign_posts = $result->cta_bt_assign_posts;
			$cta_bt_status = $result->cta_bt_status;
			$cta_bt_bu = $result->cta_bt_bu;
			$cta_tp_title = $result->cta_tp_title;
			$cta_tp_btn_text = $result->cta_tp_btn_text;
			$cta_tp_btn_link = $result->cta_tp_btn_link;
			$cta_position = $result->cta_position;
			$cta_time = $result->cta_time;
		}
	}
	else
	{
		$btn  ="Save";
		$sSQL="select * from ".$table_name = $wpdb->prefix . "kt_redirect where id<> ''";
		$result = $wpdb->get_results($sSQL);
		$result = $result[0];
		if (sizeof($result) > 0 )
		{
			$id = $result->id;
			$cta_bt_title = $result->cta_bt_title;
			$cta_bt_dest_link = $result->cta_bt_dest_link;
			$cta_bt_img_link = $result->cta_bt_img_link;
			$cta_bt_blue_btn_text = $result->cta_bt_blue_btn_text;
			$cta_bt_blue_btn_link = $result->cta_bt_blue_btn_link;
			$cta_bt_green_btn_text = $result->cta_bt_green_btn_text;
			$cta_bt_green_btn_link = $result->cta_bt_green_btn_link;
			$cta_bt_description = $result->cta_bt_description;
			$cta_bt_assign_posts = $result->cta_bt_assign_posts;
			$cta_bt_status = $result->cta_bt_status;
			$cta_bt_bu = $result->cta_bt_bu;
			$cta_tp_title = $result->cta_tp_title;
			$cta_tp_btn_text = $result->cta_tp_btn_text;
			$cta_tp_btn_link = $result->cta_tp_btn_link;
			$cta_position = $result->cta_position;
			$cta_time = $result->cta_time;
		}
		$hidval = 1;
	}
?>
<div xmlns="http://www.w3.org/1999/xhtml" class="wrap nosubsub">

	<div class="icon32" id="icon-edit"><br/></div>
<h2>Redirection</h2>
	<style type="text/css">
	body {background-color: #F1F1F1 !important;}
	.multiselect-container, .dropdown-menu{position:relative !important; height: auto; max-height: 300px; width: 100%;, max-width: 750px; overflow: scroll !important;}
	button.multiselect span.multiselect-selected-text{white-space:pre-wrap; float: left; width: 96%;}
	.rdct-tp-div .button.reset {background: #bbf310; font-size: 14px; height: 40px; padding: 5px; }
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
			$('a.button.reset').click(function () {
				var rst = confirm("Are you sure to remove setting!");
				if (rst == true) {
					return true;
				} else {
					return false;
				}
			});
			$('.act_updt:input[type="submit"]').prop('disabled', true);
            $('#isRdct').multiselect({
                includeSelectAllOption: true
            });
			
			$('#cta_pos').multiselect({
                includeSelectAllOption: true
            });
			
			<?php if($act="upd" || $act!="upd"){ ?>
				$('#cta_locate button.multiselect').prepend('Select Menus');
				$('#assign_post button.multiselect').prepend('Select Posts');
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
				
				var r = confirm("Are you confirmed with the selected posts to exclude from Redirection");
				if (r == true) {
					$('.act_updt:input[type="submit"]').prop('disabled', false);
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
	<style>
	.rdct-tp-div .form-field label.rdct-lbl {font-size: 14px; text-shadow: 0 1px;}
	.rdct-tp-div .form-wrap .form-field {border-left: 3px solid #222; margin: 10px 0 15px; padding: 5px 0 0 10px; }
	.rdct-tp-div select {border: 1px solid #c5c5c5; border-radius: 5px; height: 35px; padding: 5px; width: 150px; }
	.rdct-tp-div #submit.button {background: #bbf310; font-size: 14px; height: 40px; padding: 5px; }
	/* .rdct-tp-div button, .rdct-tp-div p .button {height: 35px;} */
	</style>
<div id="col-left" class="rdct-tp-div">
	<div class="col-wrap postbox widgetopts-sidebar-widget" style="border-color: #bbf310; border-width: 2px;">
		<div>
			<div class="form-wrap inside">
				<h3>Setting</h3>
				<form class="validate" action="admin.php?page=rdct_add" method="post" id="addtag">
					<ul>
					<li class="form-field">
						<label class="rdct-lbl" for="tag-slug">Redirected To Link</label>
						<input type="text" size="80" value="<?php echo $cta_bt_dest_link; ?>" placeholder="Redirection URL" id="cta_bt_dest_link" name="cta_bt_dest_link"/>
					</li>
					<li class="form-field" id="cta_locate">
						<label class="rdct-lbl" for="tag-position">Menu to Exclude from Redirection</label>
						<?php function get_all_wordpress_menus(){
								return get_terms( 'nav_menu', array( 'hide_empty' => true ) ); 
							}
							$all_menu = get_all_wordpress_menus();
						?>
						<select class="postform cta_position" id="cta_pos" name="cta_position" multiple="multiple" >
							<?php foreach($all_menu as $all_menu_id ) :?>
							<option value="<?php echo $all_menu_id->term_id; ?>"><?php echo $all_menu_id->name; ?></option>
							<?php endforeach; ?>
						</select>
					</li>					
					<li class="form-field" id="assign_post">
						<label class="rdct-lbl" for="isRdct">Posts to Exclude from Redirection</label>
						<input type="search" size="80" placeholder="Search Blog Posts to select" class="dropdown-search" style="display: none;"/>
						<select class="postform" id="isRdct" multiple="multiple">							
						<?php
						if($act=="upd"){
							$cta_id = 1;
							$getpost_SQL="select cta_bt_assign_posts from ".$wpdb->prefix . "kt_redirect where id<> ''";
							$result_post = $wpdb->get_results($getpost_SQL);
							
							$arr_result_post = $result_post;
							foreach($arr_result_post as $key => $val){ $cta_post_id = $val->cta_bt_assign_posts;}
							
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id in('".$cta_post_id."')";
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
							
							
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id NOT IN('".$not_assign_posts."')";
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
							
							$getpost_SQL="select id, post_title, post_status from ".$wpdb->prefix . "posts where post_type='post' AND (post_status='publish' OR post_status='draft') AND id NOT IN('".$not_assign_posts."')";
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
					</li>
					<li class="form-field">
						<label class="rdct-lbl" for="tag-status">Redirection Status</label>
						<select class="postform" name="cta_bt_status">
							<option value="0" <?php if($cta_bt_status == 0) echo 'selected';?>>Enable</option>
							<option value="1" <?php if($cta_bt_status == 1) echo 'selected';?>>Disable</option>
						</select>
					</li>
					</ul>
					<div>
					<input type="hidden" size="40" value="<?php echo $cta_bt_assign_posts; ?>" id="cta_bt_assign_posts" name="cta_bt_assign_posts"/>
					<input type="hidden" size="40" value="<?php echo $cta_position; ?>" id="cta_position" name="cta_position"/>
					</div>
					<p class="submit">						
						<input type="submit" value="<?php echo $btn; ?>" class="button act_updt" id="submit" name="submit" title="Enable - Confirm Selected Posts"/>
						<?php if(isset($hidval) && $hidval==2): echo '<a href="admin.php?page=rdct_add&act=add&delt=rem" class="button reset" name="reset">Reset</a>'; endif; ?>
						<input type="hidden" name="add_rdct" value="<?php echo $hidval;?>" >
						<input type="hidden" name="cta_time" value="<?php if(isset($cta_time)) echo $cta_time; else echo date("Y-m-d h:i:s");?>" >
						<input type="hidden" name="id" value="<?php echo $id;?>" >
						<input type="hidden" size="40" id="cta_bt_title" name="cta_bt_title" value="Excude Redirect"/>
					</p>
				</form>
			</div>
		</div>
	</div>
</div>

<?php
/* function kt_page_valid_test( $query ){
    //if( is_user_logged_in()) {
		$getpost_SQL="select cta_position from ".$wpdb->prefix . "kt_redirect where id<> ''";
		$result_post = $wpdb->get_results($getpost_SQL);		
		foreach($result_post as $rdct_menu){
			$rdct_menu_arr = explode(",", $rdct_menu->cta_position);
		}
		print_r($rdct_menu_arr);
							
		//$valid_page_id_arr = array(43339, 46535, 46536, 45822, 45823);
		$cur_url = "//".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		
		$postid = url_to_postid($cur_url);		
		//$valid_page_id_arr[] = $postid;
		$menulist_arr = $rdct_menu_arr; // array(206, 205, 253);
		for($mr=0; $mr<count($menulist_arr); $mr++){
			$menu_array = wp_get_nav_menu_items($menulist_arr[$mr]);
			foreach($menu_array as $pageres):
				$valid_page_id_arr[] = $pageres->object_id;
			endforeach;
		}
		asort($valid_page_id_arr);
		$total_pageId_list = array_values(array_unique($valid_page_id_arr));
		print_r($total_pageId_list);
	if(in_array($postid, $total_pageId_list))
		{
			//echo "Valid Page";
		}
		else
		{
			wp_redirect( home_url() );
			exit;
		}   
}
add_action( 'template_redirect', 'kt_page_valid_test' ); */
?>
<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
</div>
