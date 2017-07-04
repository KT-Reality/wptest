<?php 
	if ( ! defined('ABSPATH') ) {
		die();
	}		
	require_once( plugin_dir_path( __FILE__ ) . 'kt-rdct-class.php');	
	$objRdct = new ktrdctClass();		
	global $wpdb;	

	if(isset($_GET["del_act"]) && wp_verify_nonce( $_REQUEST['_wpnonce'], 'delete-rdct' ) && current_user_can('manage_options') ) {
		$objRdct->del_Rdct($table_name = $wpdb->prefix . "kt_redirect",$_GET); // function called iff admin has post method with hidden param del_act
	}
		
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
		$hidval = 2;
		$btn = "Update";
	} else {
		$id = $result->id;
		$cta_bt_title = $result->cta_bt_title;
		$cta_bt_dest_link = $result->cta_bt_dest_link;
		$cta_bt_assign_posts = $result->cta_bt_assign_posts;
		$cta_bt_status = $result->cta_bt_status;
		$cta_tp_title = $result->cta_tp_title;
		$cta_position = $result->cta_position;
		$cta_time = $result->cta_time;
		$hidval = 1;
		$btn  ="Save";
	}
?>
	<div class="icon32" id="icon-edit"><br/></div>
	<h2>Redirection</h2>
<div id="col-left" class="rdct-tp-div">
	<div class="col-wrap postbox widgetopts-sidebar-widget" style="border-color: #bbf310; border-width: 2px;">
		<div>
			<div class="form-wrap inside">
				<h3>Setting</h3>
				<form class="validate" action="admin.php?page=rdct_add" method="post" id="kt_rdct_form">
					<ul>
					<li class="form-field">
						<label class="rdct-lbl" for="tag-slug">Redirected To Link</label>
						<input type="text" size="80" value="<?php echo esc_url($cta_bt_dest_link); ?>" placeholder="Redirection URL" id="cta_bt_dest_link" name="cta_bt_dest_link"/>
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
						<select class="postform" id="isRdct" name="cta_bt_assign_posts" multiple="multiple">							
						<?php
						/* if($act=="upd"){ */
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
						<?php if(isset($hidval) && $hidval==2){
						wp_nonce_field('kt_edit_rdct', 'kt_rdct_edit_tkn');
						$nonce = wp_create_nonce( 'delete-rdct' );
						echo "<a href='admin.php?page=rdct_add&del_act=3&_wpnonce=".$nonce."' class='button reset'>Reset</a>";
						}
						else if(isset($hidval) && $hidval==1){
							wp_nonce_field('kt_add_rdct', 'kt_rdct_add_tkn');
						}
						?>
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
<?php
global $wpdb;
	$getpost_SQL="select cta_bt_dest_link, cta_position, cta_bt_assign_posts from ".$wpdb->prefix . "kt_redirect where cta_bt_status=0 AND id<> ''";
	$result_post = $wpdb->get_results($getpost_SQL);
	if(sizeof($result_post)>0){
		foreach($result_post as $rdct_menu){
			$rdct_menu_arr = explode(",", $rdct_menu->cta_position);
			$rdct_post_arr = explode(",", $rdct_menu->cta_bt_assign_posts);
			$redirect_link = $rdct_menu->cta_bt_dest_link;
		}
		$cur_url = "//".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		
		$postid = url_to_postid($cur_url);
		echo "postid :".$postid;
		//$valid_page_id_arr[] = $postid;
		$menulist_arr = $rdct_menu_arr; // array(206, 205, 253);
		for($mr=0; $mr<count($menulist_arr); $mr++){
			$menu_array = wp_get_nav_menu_items($menulist_arr[$mr]);
			foreach($menu_array as $pageres):
				$valid_page_id_arr[] = $pageres->object_id;
			endforeach;
		}
		
		
		for($pr=0; $pr<count($rdct_post_arr); $pr++){
			$valid_page_id_arr[] = $rdct_post_arr[$pr];
		}
		
		asort($valid_page_id_arr);
		
		
		
		$total_pageId_list = array_values(array_unique($valid_page_id_arr));
		var_dump($total_pageId_list);
		/* if(in_array($postid, $total_pageId_list)){} else{
			if(isset($redirect_link) && $redirect_link!=''){
				wp_redirect( $redirect_link );
				exit;
			} else{
				wp_redirect( home_url() );
				exit;
			}				
		} */
	}
?>