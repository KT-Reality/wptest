<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "site-content" div and all content after.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
?>

	</div><!-- .site-content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="site-info">
			<?php
				/**
				 * Fires before the Twenty Fifteen footer text for footer customization.
				 *
				 * @since Twenty Fifteen 1.0
				 */
				do_action( 'twentyfifteen_credits' );
			?>
			<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'twentyfifteen' ) ); ?>"><?php printf( __( 'Proudly powered by %s', 'twentyfifteen' ), 'WordPress' ); ?></a>
		</div><!-- .site-info -->
	</footer><!-- .site-footer -->

</div><!-- .site -->
<script>
jQuery(document).ready(function(){
	hostname = new RegExp(location.host);
	var arr_css = [], l = document.styleSheets;
	for(var i=0; i<l.length; i++) {
		if(hostname.test(l[i].href)){
			arr_css.push(l[i].href);
		}
		else{
			//arr_css.push(l[i].href);
		}
	  
	}
	console.log(arr_css);	
	
	var arr_js = [], l = document.scripts;
	for(var i=0; i<l.length; i++) {
		if(hostname.test(l[i].src)){
			arr_js.push(l[i].src);
		}
		else{
			//arr_js.push(l[i].src);
		}
	  
	}
	console.log(arr_js);	
	
	var arr_img = [], l = document.images;
	for(var i=0; i<l.length; i++) {
		if(hostname.test(l[i].src)){
			arr_img.push(l[i].src);
		}
		else{
			//arr_img.push(l[i].src);
		}
	  
	}
	console.log(arr_img);
});
</script>
<script type='text/javascript' src='http://example.com/js/myjs.js'></script>
<?php wp_footer(); ?>

</body>
</html>
