<?php

/*Meta Box Creation*/

//Register Meta Box
function cd_meta_box_add()
{
    add_meta_box( 'history-date', 'History Top Title & Date', 'history_meta_box', 'history_post', 'normal', 'high' );
}
add_action( 'add_meta_boxes', 'cd_meta_box_add' );

//Add field
function history_meta_box( $meta_id ) {
 //Title field
    $outline = '<label for="history_top_title" style="width:150px; display:inline-block;">'. esc_html('History Top Title (Numeric):', 'text-domain') .'</label>';
    $title_field = esc_html(get_post_meta( $meta_id->ID, 'history_top_title', true ));
    $outline .= '<input type="number" name="history_top_title" id="history_top_title" class="history_top_title" value="'. esc_attr($title_field) .'" style="width:300px;"/>';

//calender field
    $date_field = esc_html(get_post_meta( $meta_id->ID, 'history-date', true ));
    $date = date_create($date_field);
    $date_formate = date_format($date,"Y/m/d");
    $history_date_value = date("Y-m-d", strtotime($date_formate));
    /*echo "$history_date_value";*/
    $outline .= '</br></br><label for="history-date" style="width:150px; display:inline-block;">History Date (MM/DD/YYYY):</label><input type="date" name="history-date" id="history-date" class="history-date" value="'. esc_attr($history_date_value) .'" style="width:300px;">'; 
    echo $outline;
}

//Save meta Data
function save_custom_meta_box_top_History($post_id, $post, $update)
{
	global $wpdb;
    if(!current_user_can("edit_post", $post_id))
        return $post_id;

    if(defined("DOING_AUTOSAVE") && DOING_AUTOSAVE)
        return $post_id;

    $slug = "history_post";
    if($slug != $post->post_type)
        return $post_id;

    $meta_box_top_history_title_val = "";
    $meta_box_history_date_val = "";
	
    if(isset($_POST["history_top_title"]))
    {
        $meta_box_top_history_title_val = sanitize_text_field($_POST["history_top_title"]);
    }   
    update_post_meta($post_id, "history_top_title", $meta_box_top_history_title_val);

    if(isset($_POST["history-date"])) 
    {
		$meta_box_history_date_val = date('Y-m-d H:i:s', strtotime($_POST["history-date"]));
    }
	
	$result = $wpdb->get_results( "SELECT post_id as history_dt_num FROM kt_postmeta WHERE meta_key = 'history-date' AND meta_value = '".$_POST["history-date"]." 00:00:00'");
	//echo sizeof($result); exit;
	if(sizeof($result)<1){
		update_post_meta($post_id, "history-date", $meta_box_history_date_val);
	} else
	{
		wp_die(
			'Error, History date can not be same with other history dates.', 
			'Error',  
			array( 
				'response' => 500, 
				'back_link' => true 
			)
		);		
		//echo "<script>alert('Please')</script>";
		//$meta_box_history_date_val = date('Y-m-d H:i:s', strtotime('2017-05-02'));
	}
	
    
}
add_action("save_post", "save_custom_meta_box_top_History", 10, 3);
/* End Meta Box Creation*/ ?>