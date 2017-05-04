<?php
function upg_add_admin_menu(  ) 
{ 

	add_submenu_page( 'edit.php?post_type=upg', 'User Photo Gallery Settings', 'UPG Settings', 'manage_options', 'wp_upg', 'upg_options_page' );
	add_submenu_page( 'edit.php?post_type=upg', 'User Photo Gallery Help', 'Help / Feedback', 'manage_options', 'wp_upg_help', 'upg_help_page' );
	add_submenu_page( 'edit.php?post_type=upg', 'FREE and Premium plugins', 'UPG Addon', 'manage_options', 'wp_upg_addon', 'upg_addon_page' );
}


function upg_settings_init(  ) 
{ 
	
	
	//Basic Setting
	register_setting( 'ImageSettingPage', 'upg_settings' );
	

	add_settings_section(
		'upg_ImageSettingPage_section', 
		__( 'Settings', 'upg' ), 
		'upg_settings_section_callback', 
		'ImageSettingPage'
	);
	add_settings_field( 
		'upg_select_pickup_field', 
		__( 'Quick Settings', 'upg' ), 
		'upg_free_settings', 
		'ImageSettingPage', 
		'upg_ImageSettingPage_section' 
	);
	add_settings_field( 
		'upg_text_date_enable', 
		__( 'Other Settings', 'upg' ), 
		'upg_pro_settings', 
		'ImageSettingPage', 
		'upg_ImageSettingPage_section' 
	);
	
	
	//End Basic Setting
	

	
	//3rd Party Shortcode
	register_setting( 'ImageSetting_shortcode_Page', 'upg_settings' );
		add_settings_section(
		'upg_ImageSettingPage_shortcode_section', 
		__( '3rd Party Shortcode', 'upg' ), 
		'upg_settings_section_shortcode_callback', 
		'ImageSetting_shortcode_Page'
	);
	
	 add_settings_field( 
		'upg_textarea_shortcode_1', 
		__( 'Shortcode for Position 1st', 'upg' ), 
		'upg_textarea_shortcode_1_render', 
		'ImageSetting_shortcode_Page', 
		'upg_ImageSettingPage_shortcode_section' 
	); 
	 add_settings_field( 
		'upg_textarea_shortcode_2', 
		__( 'Shortcode for Position 2nd', 'upg' ), 
		'upg_textarea_shortcode_2_render', 
		'ImageSetting_shortcode_Page', 
		'upg_ImageSettingPage_shortcode_section' 
	); 
	/* add_settings_field( 
		'upg_select_pick_layout', 
		__( 'Select Layout', 'upg' ), 
		'upg_select_pick_layout_render', 
		'ImageSettingPage', 
		'upg_ImageSettingPage_section' 
	); */
	
	

	
	


}



 function upg_textarea_shortcode_1_render(  ) 
{ 

	$options = get_option( 'upg_settings' );
	if(isset($options['upg_textarea_shortcode_1']))
		$output=$options['upg_textarea_shortcode_1'];
		else
		$output="";
	?>
	<textarea cols='60' rows='3' name='upg_settings[upg_textarea_shortcode_1]'><?php echo $output; ?></textarea>
	<?php

} 
 function upg_textarea_shortcode_2_render(  ) 
{ 

	$options = get_option( 'upg_settings' );
	if(isset($options['upg_textarea_shortcode_2']))
		$output=$options['upg_textarea_shortcode_2'];
		else
		$output="";
	?>
	<textarea cols='60' rows='3' name='upg_settings[upg_textarea_shortcode_2]'><?php echo $output; ?></textarea>
	<?php

} 
function upg_settings_section_shortcode_callback(  ) 
{ 

	echo __( 'You can include any other plugin shortcode or message. Eg. social share, buttons, notices<br><br><b>Position 1st</b> = Just above the image preview<br><b>Position 2nd</b>=Just below the image preview.<br>', 'upg' );
	
	
}


 
 function upg_free_settings() 
 {
$options = get_option('upg_settings');


	if(!isset($options['guest_user']))
		$options['guest_user']="";
	if(!isset($options['publish']))
		$options['publish']="0";
	if(!isset($options['editor']))
		$options['editor']="0";
	?>
	
	<b>Assign user for unregistered or not logged in users: </b><?php upg_droplist_user($options['guest_user']); ?> <br>It's better to <a href="<?php echo admin_url( 'user-new.php' );?>">create GUEST USER</a> with minimum access.
	<br><br>
	<b>Publish picture as soon as posted:</b> <input type="checkbox" name='upg_settings[publish]' value='1' <?php if($options['publish']=='1') echo 'checked="checked"'; ?> >
	<br><br>
	<b>Enable GUI Editor for Visitor:</b> <input type="checkbox" name='upg_settings[editor]' value='1' <?php if($options['editor']=='1') echo 'checked="checked"'; ?> >
	<br>
	<br>
	
	
	<?php
	if(!isset($options['main_page']))
		$options['main_page']="";

	echo "<b>Select USER PHOTO GALLERY main <a href='".admin_url( 'edit.php?post_type=page' )."'>page</a>. It is used for SEO.</b>: ";
    wp_dropdown_pages(
        array(
             'name' => 'upg_settings[main_page]',
             'echo' => 1,
             //'show_option_none' => __( '&mdash; Select &mdash;' ),
             //'option_none_value' => '0',
             'selected' => $options['main_page']
			 
        )
    );
	echo "<br>Page cannot be static front page.";
	
	
}

 function upg_pro_settings() 
 {
	$options = get_option('upg_settings');
	echo "---";
	
}


function upg_settings_section_callback(  ) 
{ 

	//echo __( 'Update or modify required settings.', 'upg' );
	/**
 * Detect plugin. For use on Front End only.
 */
 //include_once( ABSPATH . 'wp-admin/includes/plugin.php' );
	
	
}





function upg_options_page(  ) 
{ 

/**
 * Detect plugin. For use on Front End only.
 */
 //include_once( ABSPATH . 'wp-admin/includes/plugin.php' );
	$proactive=false;
 
	if ( is_plugin_active( 'wp-upg-pro/odude-ecard-pro.php' ) ) 
	{
		 $proactive=true;
	} 
	
	$propassive="This features under development.";




	?>
	
	<script>
jQuery(document).ready(function($){
       $("#tabs").tabs();
});
  </script>
  
<div class="wrap">
	



	<form action='options.php' method='post'>
		
		<h2>User Photo Gallery</h2>
		<div id="tabs">
	<ul>
		
        <li><a href="#tab-1"><?php echo __("Basic Settings","wp-upg");?></a></li>
       
		<li><a href="#tab-2"><?php echo __("Any Plugin Shortcode","wp-upg");?></a></li> 
		
		
		<?php
		do_action( "upg_setting_tab_title" , $upg_tab_title_id="", $upg_tab_title_label="" );
		?>
				
	</ul>
	 <div id="tab-1">
     <?php
	 settings_fields( 'ImageSettingPage' );
	do_settings_sections( 'ImageSettingPage' );
	 ?>
    </div>
   
	 <div id="tab-2">
      <?php
	  
	  settings_fields( 'ImageSetting_shortcode_Page' );
	  do_settings_sections( 'ImageSetting_shortcode_Page' );
	  
	  ?>
    </div>
	
	
	<?php
		do_action( "upg_setting_tab_body" , $upg_tab_title_id="");
		?>
	
	</div>
		
		<?php
		flush_rewrite_rules();
		submit_button();
		?>
		
	</form>
</div>
	<?php

}
?>