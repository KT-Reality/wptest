<?php
global $post; 
global $wp_query;
if(isset($wp_query->query_vars['user']))
$user=sanitize_text_field($wp_query->query_vars['user']);
else
$user="";

$author = get_user_by('slug', $user);

$output='<div class="odude-shop">
<div id="catalog" class="row-fluid">';
global $wp_query;
$postsperpage = 15;
$perrow = 2;
$album='';
$orderby='';
$page='';
$popup="off";
if(isset($params['perpage'])&&$params['perpage']>0) $postsperpage = $params['perpage'];
if(isset($params['perrow'])&&$params['perrow']>0) $perrow = $params['perrow'];
if(isset($params['album'])) $album = $params['album'];
if(isset($params['orderby'])) $orderby = $params['orderby'];
if(isset($params['page'])) $page = $params['page'];
if(isset($params['popup'])) $popup = $params['popup'];

if(isset($params['layout']))
	$layout = $params['layout'];
else
	$layout="list";

//if($popup=="on")
	//add_thickbox();

//query_posts('post_type=upg&posts_per_page='.$postsperpage.'&paged='.$wp_query->query_vars['paged'].'&ptype='.$ptype);
$paged = ( get_query_var('paged') ) ? get_query_var('paged') : 1;


//to list of specific user


if(isset($params['album']))
{
$args = array(
	'post_type' => 'upg',
	'paged' => $paged,
	'posts_per_page' => $postsperpage,
	'orderby' => $orderby,
	'order'   => 'DESC',
	'tax_query' => array(
		array(
			'taxonomy' => 'upg_cate',
			'field'    => 'slug',
			'terms'    => explode(',',$album),
			//'terms'    => array( 'mobile', 'sports' ),
		),
		
	),
);
}
else
{
	$args = array(
	'post_type' => 'upg',
	'paged' => $paged,
	'posts_per_page' => $postsperpage,
	'author_name' => $user,
);
}

$query = new WP_Query($args); 

$put="";
ob_start ();



if(file_exists(upg_BASE_DIR."/layout/grid/".$layout."/".$layout."_up.php"))
	include(upg_BASE_DIR."/layout/grid/".$layout."/".$layout."_up.php");
	else
	echo __('Layout Not Found','wp-upg').": ".$layout;

while($query->have_posts()) : $query->the_post();
$permalink=get_permalink();
$thetitle=get_the_title();
$image=upg_image_src('thumbnail',$post);
$image_large=upg_image_src('large',$post);

	if(upg_isVideo($post))
	{
		$preview_large=upg_video_preview_url(upg_isVideo($post));
		$preview_type='youtube';
	}
	else
	{
		$preview_large=$image_large;
		$preview_type='wp-upg';
	}
if(file_exists(upg_BASE_DIR."/layout/grid/".$layout."/$layout.php"))
	include(upg_BASE_DIR."/layout/grid/".$layout."/$layout.php"); 



endwhile;

if(file_exists(upg_BASE_DIR."/layout/grid/".$layout."/".$layout."_down.php"))
	include(upg_BASE_DIR."/layout/grid/".$layout."/".$layout."_down.php");



echo '</div> </div>';



if(function_exists('wp_pagenavi'))
{
	if($page=="on")
	echo "<br>".wp_pagenavi( array( 'query' => $query ) );
}

$put=ob_get_clean (); 
return $put."".$output;
?>


