<?php

function upg_post_types()
{   
$settings = maybe_unserialize(get_option('_upg_settings'));  

	$product=" ";

    register_post_type("upg",array(
            
            'labels' => array(
                'name' => __('User Photo Gallery','wp-upg'),
                'singular_name' => __('Image','wp-upg'),
                'add_new' => __('Add '.$product.' Image','wp-upg'),
                'add_new_item' => __('Add New '.$product.' Image','wp-upg'),
                'edit_item' => __('Edit '.$product.' Image','wp-upg'), 
                'new_item' => __('New '.$product.' Image','wp-upg'),
                'view_item' => __('View Image','wp-upg'),
                'search_items' => __('Search Image','wp-upg'),
                'not_found' =>  __('No Image found','wp-upg'),
                'not_found_in_trash' => __('No image found in Trash','wp-upg'), 
                'parent_item_colon' => ''
            ),
            'public' => true,
            'publicly_queryable' => true,
            'has_archive' => true,
            'show_ui' => true, 
            'query_var' => true,
            'rewrite' => array('slug'=>'upg','with_front'=>true),
            'capability_type' => 'post',
            'hierarchical' => false,
            'menu_icon' =>upg_PLUGIN_URL.'/images/odude.png',
			//'supports' => array('title','editor','author','excerpt','thumbnail','ptype','comments'/*,'custom-fields'*/) ,            
            'supports' => array('title','editor','upg_cate','comments'/*,'custom-fields'*/) ,
            'taxonomies' => array('upg_cate'),
			'taxonomies' => array('upg_tag')
             
        )
    );     
	
	       
    
}




function register_upg_taxonomies()
{
  // Add new taxonomy, make it hierarchical (like categories)
  $labels = array(
    'name' => __( 'Image Albums','wp-upg' ),
    'singular_name' => __( 'Image Album','wp-upg'),
    'search_items' =>  __( 'Search Albums','wp-upg' ),
    'all_items' => __( 'All Albums','wp-upg' ),
    'parent_item' => __( 'Parent Album','wp-upg' ),
    'parent_item_colon' => __( 'Parent Album','wp-upg' ),
    'edit_item' => __( 'Edit Album','wp-upg' ), 
    'update_item' => __( 'Update Album','wp-upg' ),
    'add_new_item' => __( 'Add New Album','wp-upg' ),
    'new_item_name' => __( 'New Album Name','wp-upg' ),
    'menu_name' => __( 'Image Albums','wp-upg' ),
  );     

  register_taxonomy('upg_cate',array('upg'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'wp-upg' ),
  ));
 
 
  $labels = array(
    'name' => __( 'Image Tags','wp-upg' ),
    'singular_name' => __( 'Image Tag','wp-upg'),
    'search_items' =>  __( 'Search Tags','wp-upg' ),
    'all_items' => __( 'All Tags','wp-upg' ),
    'parent_item' => __( 'Parent Tag','wp-upg' ),
    'parent_item_colon' => __( 'Parent Tag:','wp-upg' ),
    'edit_item' => __( 'Edit Tag','wp-upg' ), 
    'update_item' => __( 'Update Tag','wp-upg' ),
    'add_new_item' => __( 'Add New Tag','wp-upg' ),
    'new_item_name' => __( 'New Tag Name','wp-upg' ),
    'menu_name' => __( 'Image Tags','wp-upg' ),
  );     

  register_taxonomy('upg_tag',array('upg'), array(
    'hierarchical' => false,
    'labels' => $labels,
    'show_ui' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'upg_tag' ),
  ));
	
  
}
function upg_install()
{
	
	upg_post_types();
    register_upg_taxonomies();
    flush_rewrite_rules(); 
		
	global $wpdb;	
		
	if(!$wpdb->get_var("select id from {$wpdb->prefix}posts where post_content like '%[upg-pick]%'"))
	{
       
	   wp_insert_post(array('post_title'=>'User\'s Photo Gallery','post_content'=>'[upg-list perrow="3" perpage="30" orderby="date" page="off" popup="off" layout="list"]','post_type'=>'page','post_status'=>'publish'));
        wp_insert_post(array('post_title'=>'Post Image','post_content'=>'[upg-post type="image"]','post_type'=>'page','post_status'=>'publish'));
		 wp_insert_post(array('post_title'=>'Post Youtube Video','post_content'=>'[upg-post type="youtube"]','post_type'=>'page','post_status'=>'publish'));
    }
	
	$parent_term = term_exists( '', 'upg_cate' ); // array is returned if taxonomy is given
$parent_term_id = $parent_term['term_id']; // get numeric term id
wp_insert_term(
  'Fruits', // the term 
  'upg_cate', // the taxonomy
  array(
    'description'=> 'Fruits images',
    'slug' => 'fruits',
    'parent'=> $parent_term_id
  )
);
	wp_insert_term(
  'Vegitable', // the term 
  'upg_cate', // the taxonomy
  array(
    'description'=> 'Vegitable images',
    'slug' => 'vegitable',
    'parent'=> $parent_term_id
  )
);

	
}

function upg_drop()
{
	
	//Function during uninstall
	
	
}


?>