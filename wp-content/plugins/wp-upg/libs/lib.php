<?php


function upg_date_picker()
{
	global $post;
	if(get_post_type( get_the_ID() )=='upg')
	{
	//jQuery UI date picker file
	wp_enqueue_script('jquery-ui-datepicker');
	//jQuery UI theme css file
	wp_enqueue_style('e2b-admin-ui-css','http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/themes/base/jquery-ui.css',false,"1.9.0",false);
	}
}



//Adding facebook image meta tag for product page
function upg_metatag_facebook_head() 
{
	global $post;
	if(get_post_type( get_the_ID() )=='upg')
	{
		
	echo '<meta property="og:image" content="'.upg_image_src('large',$post).'" />';
	}

}



function upg_image_src($size,$post)
{
	// global $post;
	wp_enqueue_media();
	$field_names = array( 'pic_name');
	
	
	$all_upg_extra= get_post_custom($post->ID);
			if(isset($all_upg_extra["youtube_url"][0]))
			$youtube_url=$all_upg_extra["youtube_url"][0];
			else	
			$youtube_url="";
		
		
	
	foreach ( $field_names as $name ) 
	{

			$value = $rawvalue = get_post_meta( $post->ID, $name, true );
			$image_attributes = wp_get_attachment_image_src( $rawvalue,$size );
			if ( $image_attributes )
			{
			return $image_attributes[0];
			}
			else
			{
				if(empty(trim($youtube_url)))
					return plugins_url( '../images/noimg.png', __FILE__ );
				else if(trim($youtube_url)!="")
					return upg_getimg_youtube($youtube_url);
				else
					return plugins_url( '../images/noimg.png', __FILE__ );
			}
					
			
	}
}
function upg_droplist_category()
{
	
		$disp='';
		$ptype='';
		

			$args = array(
			'show_option_all'    => '',
			'orderby'            => 'name',
			'order'              => 'ASC',
			'style'              => 'list',
			'show_count'         => 1,
			'hide_empty'         => 0,
			'use_desc_for_title' => 1,
			'feed'               => '',
			'feed_type'          => '',
			'feed_image'         => '',
			'exclude'            => '',
			'exclude_tree'       => '',
			'include'            => '',
			'hierarchical'       => 1,
			
			'number'             => null,
			'echo'               => 0,
			'depth'              => 0,
			'current_category'   => 0,
			'pad_counts'         => 0,
			'taxonomy'           => 'upg_cate',
			'walker'             => null,
			'value_field'	     => 'term_id'
			);

			

		

	 $disp.=wp_dropdown_categories( $args );
				
	
return $disp;

}

function upg_droplist_user($user)
{
	 $args = array(
    'show_option_all'         => null, // string
    'show_option_none'        => null, // string
    'hide_if_only_one_author' => null, // string
    'orderby'                 => 'display_name',
    'order'                   => 'ASC',
    'include'                 => null, // string
    'exclude'                 => null, // string
    'multi'                   => false,
    'show'                    => 'display_name',
    'echo'                    => true,
    'selected'                => $user,
    'include_selected'        => false,
    'name'                    => 'upg_settings[guest_user]', // string
    'id'                      => null, // integer
    'class'                   => null, // string 
    'blog_id'                 => $GLOBALS['blog_id'],
    'who'                     => null // string
	); 
	$disp= wp_dropdown_users( $args );
	return $disp;
}


function upg_html_content_type() 
{

	return 'text/html';
}
function upg_log($message) 
{
    if (WP_DEBUG === true) {
        if (is_array($message) || is_object($message)) {
            error_log(print_r($message, true));
        } else {
            error_log($message);
        }
    }
}
//log_me('This is a message for debugging purposes. wordks if dubug is enabled.');

function upg_delete_post_media( $post_id ) {

	if(!isset($post_id)) return; // Will die in case you run a function like this: delete_post_media($post_id); if you will remove this line - ALL ATTACHMENTS WHO HAS A PARENT WILL BE DELETED PERMANENTLY!
	elseif($post_id == 0) return; // Will die in case you have 0 set. there's no page id called 0 :)
	elseif(is_array($post_id)) return; // Will die in case you place there an array of pages.

	else {

	    $attachments = get_posts( array(
	        'post_type'      => 'attachment',
	        'posts_per_page' => -1,
	        'post_status'    => 'any',
	        'post_parent'    => $post_id
	    ) );

	    foreach ( $attachments as $attachment ) {
	        if ( false === wp_delete_attachment( $attachment->ID ) ) 
			{
	            upg_log('Unable to delete image-'.$post_id);
	        }
	    }
	}
}

function upg_getid_youtube($url)
{


$pattern = 
                '%^# Match any youtube URL
                (?:https?://)?  # Optional scheme. Either http or https
                (?:www\.)?      # Optional www subdomain
				(?:m\.)?      # Optional mobile subdomain
                (?:             # Group host alternatives
                  youtu\.be/    # Either youtu.be,
                | youtube\.com  # or youtube.com
                  (?:           # Group path alternatives
                    /embed/     # Either /embed/
                  | /v/         # or /v/
                  | /watch\?v=  # or /watch\?v=
                  )             # End path alternatives.
                )               # End host alternatives.
                ([\w-]{10,12})  # Allow 10-12 for 11 char youtube id.
                $%x'
                ;
            $result = preg_match($pattern, $url, $matches);
            if ($result) {
                return $matches[1];
            }
            return '';

}

function upg_getimg_youtube($url)
{
	$youtube_id=upg_getid_youtube($url);
	return 'http://img.youtube.com/vi/'.$youtube_id.'/mqdefault.jpg';
}


function upg_isVideo($post)
{
	$all_upg_extra= get_post_custom($post->ID);
			
			if(isset($all_upg_extra["youtube_url"][0]))
			$youtube_url=$all_upg_extra["youtube_url"][0];
			else	
			$youtube_url="";
		
		if($youtube_url=="")
			return '';
		else
			return $youtube_url;
	
}

function upg_video_preview_url($url)
{
	$youtube_id=upg_getid_youtube($url);
	return 'http://www.youtube.com/embed/'.$youtube_id.'?rel=0&amp;wmode=transparent';
}
?>