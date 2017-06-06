<?php

//Add Custom Post Type
add_action( 'init', 'create_posttype' );
function create_posttype() {
  register_post_type( 'history_post',
    array(
      'labels' => array(
        'name' => __( 'History Timeline' ),
        'singular_name' => __( 'History-data' )
      ),
      'public' => true,
      'has_archive' => true,
      'rewrite' => array('slug' => 'history'),
      'show_ui' => true,
	  'capability_type' => 'post',
	  'hierarchical' => false,
    'menu_icon' => plugin_dir_url(__FILE__).'/img/timeline.png', // 16px16
	  'supports' => array('title', 'editor', 'thumbnail')
    )
  );
}

include '/include/history-table_list.php';?>