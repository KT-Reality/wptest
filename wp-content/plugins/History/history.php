<?php
/*
Plugin Name: Timeline History
Description: This plugin used for show your history as a timeline.
Version: 1.0
Licence: GPL2
Author: Reality
Author URI: https://www.realitypremedia.com/
*/

require 'post-type.php';
require 'metabox.php';


/*$querystr = "SELECT meta_value FROM wp_postmeta WHERE meta_key = 'history-date'";
    $pageposts = $wpdb->get_results($querystr, OBJECT);
    
    var_dump($pageposts);*/


//Main Fuction of Shortcode
function history_data() {

	wp_enqueue_style( 'history-content-style', plugin_dir_url(__FILE__) . 'css/history.css', array(), '4.2.7', 'all');
	wp_enqueue_style( 'history-style-css', plugin_dir_url(__FILE__) . 'css/style.css', array(), '4.2.8', 'all');	

	wp_enqueue_script( 'jquery' );
	wp_enqueue_script( 'history', plugin_dir_url(__FILE__) . 'js/history.js', array(), '4.6.4', true );	

	$check_post = array('numberposts' => 1, 'post_type' => array('history_post'));

	$post_avaibility = get_posts($check_post);
	/*var_dump($history3);*/
	if ($post_avaibility) {
	$content='<section class="cd-horizontal-timeline">
		<div class="timeline">
			<div class="events-wrapper">
				<div class="events">
					<ol>';

//require file for create events-top-title of timeline.
	require '/include/top-title.php';

					$content .='</ol>
					<span class="filling-line" aria-hidden="true"></span>
				</div> <!-- .events -->
			</div> <!-- .events-wrapper -->
				
			<ul class="cd-timeline-navigation">
				<li><a href="#0" class="prev inactive">Prev</a></li>
				<li><a href="#0" class="next">Next</a></li>
			</ul> <!-- .cd-timeline-navigation -->
		</div> <!-- .timeline -->

		<div class="events-content">
			<ol>';

//require file for events-content of timeline.
	require '/include/content.php';				

				$content .='</ol>
		</div> <!-- .events-content -->
		<script>
			jQuery(document).ready(function(){
			   jQuery(".events ol>li a:first").addClass("selected");
			   jQuery(".events-content ol>li:first").addClass("selected");   
			});
		</script>
	</section>';    
	 }
	else {
		$content = '<h2 style="color:red; textalign:center;">No Content Found!</h2>';
	} 
	return $content;
}
add_shortcode( 'timeline-history', 'history_data' );