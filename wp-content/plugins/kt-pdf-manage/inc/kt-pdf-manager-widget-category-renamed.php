<?php
	class KTPDFManagerWidgetCategory extends WP_Widget {
		
		public function __construct() {
			parent::__construct(
				'kt_pdf_manager_widget_category', // Base ID
				'Document Category', // Name
				array( 'description' => 'Display all PDFs within a given category' ) // Args
			);
		}
	
		/**
		 * Front-end display of widget.
		 *
		 * @see WP_Widget::widget()
		 *
		 * @param array $args     Widget arguments.
		 * @param array $instance Saved values from database.
		 */
		public function widget( $args, $instance ) {
			global $wpdb;
			
			$kt_pdf_manager_category = isset( $instance[ 'kt_pdf_manager_category' ] ) ? $instance[ 'kt_pdf_manager_category' ] : 0;
			$kt_pdf_manager_open_in_new = isset( $instance[ 'kt_pdf_manager_open_in_new' ] ) ? $instance[ 'kt_pdf_manager_open_in_new' ] : 'NO';
			$kt_pdf_manager_show_ordered_list = isset( $instance[ 'kt_pdf_manager_show_ordered_list' ] ) ? $instance[ 'kt_pdf_manager_show_ordered_list' ] : 'NO';
			
			
			echo $args['before_widget'];

			if( trim($instance['widget_title']) ){
				echo '<h2 class="widget-title">'.$instance['widget_title'].'</h2>';
			}
			
			if( $kt_pdf_manager_category ){
				global $KT_PDF_manager, $wpdb;
					
				$pdfs_upload_path = $KT_PDF_manager->_kt_pdf_manager_upload_path.'/'.$KT_PDF_manager->_kt_pdf_manager_upload_folder;
				
				$sql = "SELECT * FROM `".$KT_PDF_manager->_kt_pdf_manager_pdfs_tbl_name."` WHERE `cat_id` = ".$kt_pdf_manager_category." ORDER BY `title` ASC";
				$pdf_items = $wpdb->get_results( $sql );
				if( count($pdf_items) < 1 ){
					return;
				}
	
				if( $kt_pdf_manager_open_in_new == 'YES' ){
					$open_target_str = 'target="_blank"';
				}
				if( $kt_pdf_manager_show_ordered_list == 'YES' ){
					echo '<ol>';
				}else{
					echo '<ul>';
				}
				
				$str_body = '';
				foreach($pdf_items as $pdf_obj){
					if ( $pdf_obj->file_name && file_exists($pdfs_upload_path.$pdf_obj->file_name) ){
						$str_body .= '<li><a href="'.site_url().'/'.$KT_PDF_manager->_kt_pdf_manager_upload_folder.$pdf_obj->file_name.'" '.$open_target_str.'>'.$pdf_obj->title.'</a></li>'."\n";
					}
				}
				echo $str_body;
				
				if( $kt_pdf_manager_show_ordered_list == 'YES' ){
					echo '</ol>';
				}else{
					echo '<ul>';
				}
			}
			
			echo $args['after_widget'];
		}
	
		/**
		 * Sanitize widget form values as they are saved.
		 *
		 * @see WP_Widget::update()
		 *
		 * @param array $new_instance Values just sent to be saved.
		 * @param array $old_instance Previously saved values from database.
		 *
		 * @return array Updated safe values to be saved.
		 */
		public function update( $new_instance, $old_instance ) {
			$instance = array();
			
			$instance['widget_title'] = strip_tags( $new_instance['widget_title'] );
			$instance['kt_pdf_manager_category'] = strip_tags( $new_instance['kt_pdf_manager_category'] );
			$instance['kt_pdf_manager_show_ordered_list'] = $new_instance['kt_pdf_manager_show_ordered_list'];
			$instance['kt_pdf_manager_open_in_new'] = $new_instance['kt_pdf_manager_open_in_new'];
			

			return $instance;
		}
	
		/**
		 * Back-end widget form.
		 *
		 * @see WP_Widget::form()
		 *
		 * @param array $instance Previously saved values from database.
		 */
		public function form( $instance ) {
			global $KT_PDF_manager, $wpdb;


			$widget_title = isset( $instance[ 'widget_title' ] ) ? $instance[ 'widget_title' ] : '';
			$kt_pdf_manager_category = isset( $instance[ 'kt_pdf_manager_category' ] ) ? $instance[ 'kt_pdf_manager_category' ] : 0;
			$kt_pdf_manager_show_ordered_list = isset( $instance[ 'kt_pdf_manager_show_ordered_list' ] ) ? $instance[ 'kt_pdf_manager_show_ordered_list' ] : 'NO';
			$kt_pdf_manager_open_in_new = isset( $instance[ 'kt_pdf_manager_open_in_new' ] ) ? $instance[ 'kt_pdf_manager_open_in_new' ] : 'NO';
			
			$sql = 'SELECT * FROM '.$KT_PDF_manager->_kt_pdf_manager_cats_tbl_name;
			$categoreies = $wpdb->get_results($sql);
		?>
        <p>Title:<br />
        	<input name="<?php echo $this->get_field_name( 'widget_title' ); ?>" id="<?php echo $this->get_field_id( 'widget_title' ); ?>" value="<?php echo $widget_title; ?>" style="width:100%;" />
        </p>
        <p>Category:<br />
        	<select name="<?php echo $this->get_field_name( 'kt_pdf_manager_category' ); ?>" id="<?php echo $this->get_field_id( 'kt_pdf_manager_category' ); ?>" value="<?php echo $kt_pdf_manager_category; ?>" style="width:100%;">
            <?php
			$select_str_body = '';
			if (!$categoreies || count($categoreies) < 1){
				$select_str_body = '<option value="0">Please add category first</option>';
			}else{
				$select_str_body = '<option value="0">Please select category</option>';
				foreach($categoreies as $category){
					if ($kt_pdf_manager_category == $category->id){
						$select_str_body .= '<option value="'.$category->id.'" selected="selected">'.$category->cat_title.'</option>';
					}else{
						$select_str_body .= '<option value="'.$category->id.'">'.$category->cat_title.'</option>';
					}
				}
			}
			echo $select_str_body;
			?>
            </select>
        </p>
        <?php
		$checked_str = $kt_pdf_manager_show_ordered_list == 'YES' ? ' checked="checked"' : '';
		?>
        <p><label>Show PDF as ordered list  ? <input type="checkbox" name="<?php echo $this->get_field_name( 'kt_pdf_manager_show_ordered_list' ); ?>" value="YES"<?php echo $checked_str; ?> /></label></p>
        <?php
		$checked_str = $kt_pdf_manager_open_in_new == 'YES' ? ' checked="checked"' : '';
		?>
        <p><label>Opens PDF in a new window or tab  ? <input type="checkbox" name="<?php echo $this->get_field_name( 'kt_pdf_manager_open_in_new' ); ?>" value="YES"<?php echo $checked_str; ?> /></label></p>
		<hr />    
        <p style="margin-top:20px;"><b><em>The following feature only availabel for Pro version</em></b></p>
        <p><label>Shows category title ? <input type="checkbox" name="<?php echo $this->get_field_name( 'kt_pdf_manager_show_cat_title' ); ?>" value="YES" /></label></p>
        <p>Order by:&nbsp;
        	<select name="<?php echo $this->get_field_name( 'kt_pdf_manager_cat_order_by' ); ?>">
            	<option value="title">Title</option>
                <option value="file_name">File name</option>
                <option value="last_date">Date</option>
                <option value="order_num">Custom Order</option>
            </select>
        </p>
        <p>Order:&nbsp;
        	<select name="<?php echo $this->get_field_name( 'kt_pdf_manager_cat_order' ); ?>">
            	<option value="ASC">ASC</option>
                <option value="DESC">DESC</option>
            </select>
        </p>
        <p>Top <input type="number" name="<?php echo $this->get_field_name( 'kt_pdf_manager_category_top' ); ?>" value="" style="width:50px;" /> PDFs will be shown&nbsp;&nbsp;<span style="font-style:italic;">( 0 means show all )</span></p>
        <p><label>Shows featured image ? <input type="checkbox" name="<?php echo $this->get_field_name( 'kt_pdf_manager_show_thumbnail' ); ?>" value="YES" class="kt-pdf-manager-category-widget-show-thumbnail" id="<?php echo $this->get_field_id( 'kt_pdf_manager_show_thumbnail' ); ?>" /></label></p>
        <?php
		}
	} // class