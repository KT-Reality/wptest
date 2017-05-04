
<?php


function upg_product_content($post)
{
	$options = get_option('upg_settings');
	
	
	$text=$post->post_content;
	
	require_once(upg_BASE_DIR."layout/media/header.php");
	$abc="";
	 $home = home_url('/');
	ob_start ();
	$image=upg_image_src('large',$post);
	
	$author = get_user_by('id', get_the_author_meta( 'ID' ));
	//echo $author->first_name;
	//echo $author->user_nicename;
	
	
	
	?>
	

<br>
	
<div class="pure-g">
<div class="pure-u-1-1" style="text-align:center;"><?php echo upg_position1(); ?></div>




	<div class="pure-u-1-1" style="text-align:center;">
	
	<?php
					 if(upg_isVideo($post))
					 {
						 $attr = array(
						'src'      => esc_url( upg_isVideo($post) ),
						'width'    => 560,
						'height'   => 315
						
						);
	
						echo wp_video_shortcode( $attr );
					 }
					else
					{
							 
						?>
					 <img src="<?php echo $image; ?>">
					  <?php
					}
						 ?>
	
	
	</div>
	
 
	<div class="pure-u-1-1"><?php echo $text; ?></div>
	<div class="pure-u-1-1" style="text-align:center;"><?php echo upg_position2(); ?></div>
	</div>
	
	
	<?php
echo upg_author($author);
	$abc=ob_get_clean (); 
	return $abc;
}
