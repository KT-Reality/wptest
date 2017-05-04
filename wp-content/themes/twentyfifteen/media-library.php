<?php
/* Template Name: MEdia */
get_header();
the_title();
?>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<div class="seach-div"><input type="search" placeholder="Search Blog/CTA/List-Item" class="dropdown-search"/></div>
<script>
jQuery(function () {
	 jQuery('.site-content')
	.on('input', '.dropdown-search', function() {
		console.log('Entered');
		var target = jQuery(this);
		var search = target.val().toLowerCase();
	
		if (!search) {
			jQuery('#media-gallery ul li').show();
			return false;
		}
	
		jQuery('#media-gallery ul li').each(function() {
			var text = jQuery(this).text().toLowerCase();
			var match = text.indexOf(search) > -1;
			jQuery(this).toggle(match);
		});
	}) 
});
</script>
<?php
echo get_images_from_media_library();
?>
<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.5.0/lodash.min.js"></script>
<?php
get_sidebar();
get_footer();
?>