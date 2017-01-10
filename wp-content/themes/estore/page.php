<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package ThemeGrill
 * @subpackage eStore
 * @since eStore 0.1
 */

get_header(); ?>
	<?php
	do_action( 'estore_before_body_content' );

	$estore_layout = estore_layout_class();
	?>
	<div id="content" class="site-content"><!-- #content.site-content -->
		<div class="page-header clearfix">
			<div class="tg-container">
				<?php the_title('<h2 class="entry-title">', '</h2>'); ?>
				<h3 class="entry-sub-title"><?php estore_breadcrumbs(); ?></h3>
			</div>
		</div>
		<main id="main" class="clearfix <?php echo esc_attr($estore_layout); ?>">
			<div class="tg-container">
				<div id="primary">
					<?php
					while ( have_posts() ) : the_post(); ?>
					
					<div id="24lb_thread" class="lb_1368863"></div>
<script type="text/javascript">
(function() {
var lb24 = document.createElement('script'); lb24.type = 'text/javascript'; lb24.id = '24lbScript'; lb24.async = true; lb24.charset="utf-8";
lb24.src = '//v.24liveblog.com/embed/24.js?id=1368863';
(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(lb24);})();
</script>

						<?php get_template_part( 'template-parts/content', 'page' ); ?>

						<?php
						// If comments are open or we have at least one comment, load up the comment template.
						if ( comments_open() || get_comments_number() ) :
							comments_template();
						endif;
						
						get_template_part('navigation', 'none');
						
					endwhile; // End of the loop. ?>
				</div> <!-- Primary end -->
					<?php estore_sidebar_select(); ?>
			</div>
		</main>
	</div>

	<?php do_action( 'estore_after_body_content' ); ?>

<?php get_footer(); ?>
