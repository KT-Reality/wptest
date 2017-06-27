<?php
$args = array( 'post_type' => 'history_post', 'posts_per_page' => -1, 'meta_key' => 'history-date',
            'orderby' => 'meta_value', 'order' => 'ASC' );
				$loop = new WP_Query( $args );
				/*$i = '01/01/2000';*/
				while ( $loop->have_posts() ) : $loop->the_post();
					$history_date = esc_html(get_post_meta( get_the_ID(), 'history-date', true ));
					$date = date_create($history_date);
				    $date_formate = date_format($date,"Y/m/d");
				    $history_date_value = date("d/m/Y", strtotime($date_formate));
					//apply_filters( 'the_content', get_the_content() );
					$content .='<li data-date="'.esc_attr($history_date_value).'"><h2>'.esc_attr(get_the_title()).'</h2>'.get_the_content().'</li>';
					/*echo $i;*/
					/*$i = date('d/m/Y',strtotime("+1 week", strtotime($i)));*/
					/*$i++;*/
				endwhile; ?>