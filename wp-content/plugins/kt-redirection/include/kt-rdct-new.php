<?php
	if ( ! defined('ABSPATH') ) {
		die('Please do not load this file directly!');
	}
	require_once( plugin_dir_path( __FILE__ ) . 'kt-rdct-class.php');
	$objRdct = new rdctClass();
	$add_rdct=$_POST["add_rdct"];
	global $wpdb;
	
	$info=$_REQUEST["info"];
	if($info=="saved")
	{	
		if(isset($_SESSION['notify']) && $_SESSION['notify']==1) { echo "<div class='updated' id='message'><p><strong>Redirection Setting Saved</strong>.</p></div>"; }		
		unset($_SESSION['notify']);
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
		unset($_SESSION['notify']);
	}
	
	if($info=="upd")
	{
		if(isset($_SESSION['notify']) && $_SESSION['notify']==1) { echo "<div class='updated' id='message'><p><strong>Redirection Setting Saved</strong>.</p></div>";}
		else if(isset($_SESSION['notify']) && $_SESSION['notify']==2) { echo "<div class='updated' id='message'><p><strong>Redirection Setting Updated</strong>.</p></div>";}
		unset($_SESSION['notify']);
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
			$cta_bt_assign_posts = $result->cta_bt_assign_posts;
			$cta_bt_status = $result->cta_bt_status;
			$cta_tp_title = $result->cta_tp_title;
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
			$cta_bt_assign_posts = $result->cta_bt_assign_posts;
			$cta_bt_status = $result->cta_bt_status;
			$cta_tp_title = $result->cta_tp_title;
			$cta_position = $result->cta_position;
			$cta_time = $result->cta_time;
		}
		$hidval = 1;
	}
?>
	<div class="icon32" id="icon-edit"><br/></div>
	<h2>Redirection</h2>
<div id="col-left" class="rdct-tp-div">
	<div class="col-wrap postbox widgetopts-sidebar-widget" style="border-color: #bbf310; border-width: 2px;">
		<div>
			<div class="form-wrap inside">
				<h3>Setting</h3>
				<form class="validate" action="admin.php?page=rdct_add" method="post" id="addtag">
					<ul>
					<li class="form-field">
						<label class="rdct-lbl" for="tag-slug">Redirected To Link</label>
						<input type="text" size="80" value="<?php echo esc_attr($cta_bt_dest_link); ?>" placeholder="Redirection URL" id="cta_bt_dest_link" name="cta_bt_dest_link"/>
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
							<option value="<?php echo esc_attr($all_menu_id->term_id); ?>"><?php echo esc_attr($all_menu_id->name); ?></option>
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
									$p_id = esc_attr($val->id);
									$p_title = esc_attr($val->post_title);
									$p_status = esc_attr($val->post_status);									
									if($val->post_status == 'publish') {										
										?>
									<option value="<?php echo $p_id;?>"><?php echo 'post ID['.$p_id.']   '.$p_title; ?></option>
									<?php } else {
										?>
									<option value="<?php echo $p_id;?>"><?php echo 'post ID['.$p_id.']   '.$p_title. '('.$p_status.')'; ?></option>
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
									$post_id = esc_attr($val->id);
									$post_title = esc_attr($val->post_title);
									$post_status = esc_attr($val->post_status);
									if($val->post_status == 'publish') {
									?>
									<option value="<?php echo $post_id;?>"><?php echo 'post ID['.$post_id.']   '.$post_title; ?></option>
									<?php } else {?>
									<option value="<?php echo $post_id;?>"><?php echo 'post ID['.$post_id.']   '.$post_title. '('.$post_status.')'; ?></option>
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
									$p_id = esc_attr($val->id);
									$p_title = esc_attr($val->post_title);
									$p_status = esc_attr($val->post_status);
									if($val->post_status == 'publish') {
									?>
									<option value="<?php echo $p_id;?>"><?php echo 'post ID['.$p_id.']   '.$p_title; ?></option>
								<?php } else {?>
									<option value="<?php echo $p_id;?>"><?php echo 'post ID['.$p_id.']   '.$p_title. '('.$p_status.')'; ?></option>
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
<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
</div>
