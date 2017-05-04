<?php
/*
Plugin Name: User Photo Gallery
Plugin URI: http://odude.com/
Description: User Photo Gallery.
Version: 1.2
Author: ODude Network
Author URI: http://odude.com/
License: GPLv2 or later
Text Domain: wp-upg
*/

   
	define('upg_ROOT_URL', plugin_dir_url( __FILE__ ) );
	define('upg_FOLDER',dirname(plugin_basename( __FILE__ )));
	define('upg_BASE_DIR',WP_CONTENT_DIR.'/plugins/'.upg_FOLDER.'/');
	define('upg_PLUGIN_URL',content_url('/plugins/'.upg_FOLDER));
	

	
	
	 function upg_languages() 
	 {
        load_plugin_textdomain( 'wp-upg', false, dirname(plugin_basename( __FILE__ )).'/languages/' ); 
    }
	
	include(dirname(__FILE__)."/libs/functions.php");
	include(dirname(__FILE__)."/libs/lib.php");
	include(dirname(__FILE__)."/libs/hooks.php");
    include(dirname(__FILE__)."/libs/install.php");
	 include(dirname(__FILE__)."/libs/custom_column.php");
	  include(dirname(__FILE__)."/setting.php");
	  include(dirname(__FILE__)."/help.php");
	  include(dirname(__FILE__)."/addon.php");
	
	register_activation_hook(__FILE__,'upg_install');
	register_uninstall_hook(__FILE__,'upg_drop');

	
	
	//Adding meta boxes
	function upg_meta_boxes()
	{
		$prefix = 'upg_';

		$meta_boxes = array(
				'post_img'=>array('id'=> $prefix.'image','title'=>__('Main Image/Youtube','wp-upg'),'callback'=>'upg_meta_box_image','position'=>'advanced','priority'=>'high'),
				'upg-layout'=>array('title'=>__('Image Preview Layout',"odudeshop"),'callback'=>'upg_meta_box_layout','position'=>'side','priority'=>'core'),
			
			);

			   

			$meta_boxes = apply_filters("upg_meta_box", $meta_boxes);
			foreach($meta_boxes as $id=>$meta_box)
			{
				extract($meta_box);
				add_meta_box($id, $title, $callback,'upg', $position, $priority);
			}    
	}
	
	//Image upload in post type
	 function upg_meta_box_image($post)
	{     ?>
			<script>
		jQuery(document).ready(function($){
			   $("#tabs").tabs();
		});
		  </script>
	
	<div id="tabs">
	<ul>
		
        <li><a href="#tab-1"><?php echo __("Upload Image","odudeshop");?></a></li>
       
		<li><a href="#tab-2"><?php echo __("Post Youtube URL","odudeshop");?></a></li> 
		
				
	</ul>
	 <div id="tab-1">
		<?php include(dirname(__FILE__).'/libs/post_img.php'); ?>
	 </div>
	 <div id="tab-2">
		<?php include(dirname(__FILE__).'/libs/youtube_url.php'); ?>
	 </div>
	 </div>
	 

        
<?php


    }
	
	
	//Loading css files
	 function upg_enqueue_scripts()
	{
        global $upg_plugin,$current_screen;
		$options = get_option( 'upg_settings','' );
		
		 wp_enqueue_style('upg-style', plugins_url() .'/'. upg_FOLDER.'/css/style.css');
		 wp_enqueue_style('colorbox', plugins_url() .'/'. upg_FOLDER.'/css/colorbox.css','', '1', 'all');
         wp_enqueue_style('odude-pure', plugins_url() .'/'. upg_FOLDER.'/css/pure-min.css');
		 wp_enqueue_style('font-awesome-css','https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css');
		 wp_enqueue_style('odude-pure-grid', plugins_url().'/'. upg_FOLDER.'/css/grids-responsive-min.css');
		 
	  

		 wp_enqueue_script( 'colorbox-min', plugins_url() .'/'. upg_FOLDER.'/js/jquery.colorbox-min.js' ,array( 'jquery' ), '1', true );
		 wp_enqueue_script( 'upg_common', plugins_url() .'/'. upg_FOLDER.'/js/common.js' );
   
    }
	function upg_admin_enqueue_scripts()
	{
        global $upg_plugin,$current_screen;
		$screen = get_current_screen();
		//echo $screen->base;
		if ( $screen->base == 'upg_page_wp_upg')
		{
			wp_enqueue_style('odude-pure', plugins_url() .'/'. upg_FOLDER.'/css/pure-min.css');
		 //wp_enqueue_style('font-awesome-css','https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css');
		 wp_enqueue_style('odude-pure-grid', plugins_url().'/'. upg_FOLDER.'/css/grids-responsive-min.css');
		 
		}
		wp_enqueue_script('jquery');
       wp_enqueue_script('jquery-form');
       wp_enqueue_script('jquery-ui-core');
       //wp_enqueue_script('jquery-ui-datepicker'); 
       wp_enqueue_script('jquery-ui-tabs');// enqueue jQuery UI Tabs
	   //wp_enqueue_script('jquery-ui-accordion');
		
		$options = get_option( 'upg_settings','' );
		wp_enqueue_style('upg-style', plugins_url() .'/'. upg_FOLDER.'/css/aristo.css');
	}
	
	//Save data typed in post type
	function upg_save_meta_data( $post_id, $post ) 
	{

	
	
		if ( ! isset( $_POST['nonce_name'] ) ) //make sure our custom value is being sent
			return;
		if ( ! wp_verify_nonce( $_POST['nonce_name'], 'nonce_action' ) ) //verify intent
			return;
		if ( defined('DOING_AUTOSAVE') && DOING_AUTOSAVE ) //no auto saving
			return;
		if ( ! current_user_can( 'edit_post', $post_id ) ) //verify permissions
			return;
		//session_start();
		
	
			if($_POST['meta-box-media']!="pic_name")
			{
			$new_value = array_map( 'intval', $_POST['meta-box-media'] ); //sanitize
			
			
				foreach ( $new_value as $k => $v ) 
				{
					
					if($v!='0')
					update_post_meta( $post_id, $k, $v ); //save
					//$_SESSION["favcolor"] .= "green_".$v."<hr>";
				}
			}
			
		update_post_meta($post->ID, "upg_layout", $_POST["upg_layout"]);
		update_post_meta($post->ID, "youtube_url", sanitize_text_field($_POST["youtube_url"]));
		

	}

	//Move image meta box-media
function upg_admin_footer_hook() { global $post ;  if (get_post_type($post) == 'upg') { ?> <script type="text/javascript"> jQuery(document).ready(function($) { $('#normal-sortables').insertBefore('#postdivrich') ; }) ; </script>  <?php } }  /** Hook into the Admin Footer */ add_action('admin_footer','upg_admin_footer_hook');
    
//Generate auto media preview page
function upg_the_content($content)
	{
		
        global $post;      
        $settings = get_option('_upg_settings');    
       
	  // if(!is_single()||!isset($settings['generate_product_page_content']))
		//return $content;
        
		
		if($post->post_type!='upg')
			return $content;     
        
		    
		
		
       if( is_singular() && is_main_query() ) 
	   {
		   //Receving all the custom post values
			$all_upg_fields= get_post_custom($post->ID);
	
			if(isset($all_upg_fields["upg_layout"][0]))
			$upg_layout=$all_upg_fields["upg_layout"][0];
			else
			$upg_layout="basic";
		   
		    require_once("layout/media/$upg_layout/$upg_layout.php");
			return upg_product_content($post);
	   }
	  
    }
	
	//List ecards
	function upg_list($params)
	{
	  
    $abc=include(upg_BASE_DIR.'layout/catalog.php');
	return $abc;
	 
	}
	//Frontend User Post
	function upg_user_post($params)
	{
	  if(isset($params['type']))
	$type = $params['type'];
	else
	$type="image";

	if($type=="youtube")
	$abc=include(upg_BASE_DIR.'layout/post_youtube.php');	
	else
    $abc=include(upg_BASE_DIR.'layout/post_image.php');
	return $abc;
	 
	}
	

	
	//Layout of ecard
	 function upg_meta_box_layout()
	{
        global $post;
        $all_upg_fields= get_post_custom($post->ID);
		if(isset($all_upg_fields["upg_layout"][0]))
			$upg_layout=$all_upg_fields["upg_layout"][0];
			else
			$upg_layout="basic";
		
		$dir    = upg_BASE_DIR.'layout/media/';
		$filelist ="";
		$files = array_map("htmlspecialchars", scandir($dir));       

		foreach ($files as $file) 
		{
			if($upg_layout==$file)
				$checked='checked=checked';
			else
				$checked="";
			
			if(!strpos($file, '.') && $file != "." && $file != "..")	
			$filelist .= sprintf('<input type="radio" '.$checked.' name="upg_layout" value="%s"/>%s layout<br>' . PHP_EOL, $file, $file );
		}
echo $filelist;
   
	}
	
	//Adding popup button
	
	// Hooks your functions into the correct filters
function upg_add_mce_button() 
{
	// check user permissions
	if ( !current_user_can( 'edit_posts' ) && !current_user_can( 'edit_pages' ) ) 
	{
		return;
	}
	// check if WYSIWYG is enabled
	if ( 'true' == get_user_option( 'rich_editing' ) ) 
	{
		add_filter( 'mce_external_plugins', 'upg_add_tinymce_plugin' );
		add_filter( 'mce_buttons', 'upg_register_mce_button' );
	}
}
add_action('admin_head', 'upg_add_mce_button');

// Declare script for new button
function upg_add_tinymce_plugin( $plugin_array ) 
{
	$plugin_array['upg_mce_button'] = plugin_dir_url(__FILE__) . 'js/button_pop.js';
	return $plugin_array;
}

// Register new button in the editor
function upg_register_mce_button( $buttons ) 
{
	array_push( $buttons, 'upg_mce_button' );
	return $buttons;
}
	



//Delete image attached when post is deleted
add_action( 'before_delete_post', 'upg_delete_post' );
function upg_delete_post( $postid )
{

    // We check if the global post type isn't ours and just return
    global $post_type;   
    if ( $post_type != 'upg' ) return;

    // My custom stuff for deleting my custom post type here
	upg_log('Post Deleted with images-'.$postid);
	upg_delete_post_media($postid);
	//$ii=get_attached_media( 'image', $postid );
	//upg_log('Attached id.'.$ii);
	//wp_delete_attachment( 134 );
}

//Rewrite rules for user gallery
add_action('init', 'upg_user_url');
function upg_user_url()
{
	$options = get_option('upg_settings');
	
	if(isset($options['main_page']))
	{
		$main_page=basename(get_permalink($options['main_page']));
		
		add_rewrite_rule(
			'^'.$main_page.'/([^/]*)$',
			'index.php?user=$matches[1]&page_id='.$options['main_page'],
			'top'
		);
	}

}
function upg_query_vars($aVars) 
{
    $aVars[] = "user";    // represents the name of the variable as shown in the URL
    return $aVars;
}
 
add_filter('query_vars', 'upg_query_vars');

?>