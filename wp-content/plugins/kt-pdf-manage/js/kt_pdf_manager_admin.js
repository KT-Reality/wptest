jQuery(document).ready( function($) {
	
	$("#kt_pdf_manager_categories_id").change( function() {
		var cat_id = $(this).val();
		var new_action = $("#kt-pdf-manager-pdfs-form-id").attr('action') + '&cat=' + cat_id;
		
		$("#kt-pdf-manager-pdfs-form-id").attr('action', new_action);
		
		$("#kt-pdf-manager-pdfs-form-id").submit();
	});
	
	$("#doaction").click( function() {
		var cat_id = $("#kt_pdf_manager_categories_id").val();
		var new_action = $("#kt-pdf-manager-pdfs-form-id").attr('action') + '&cat=' + cat_id;
		
		$("#kt-pdf-manager-pdfs-form-id").attr('action', new_action);
		
		return true;
	});
	
	$("#kt_pdf_manager_category_save").click( function() {
		var cat_title = $("#cat_title_id").val();
		if ($.trim(cat_title) == ''){
			alert('Category title can not be NULL.');
			
			$("#cat_title_id").focus();
			return false;
		}
		
		$("#kt-pdf-manager-category-edit-form-id").submit();
	});
	
	$("#kt_pdf_manager_pdf_save_form").click( function() {
		//check category
		var category = $("#kt_pdf_manager_pdf_edit_categories_id").val();
		if (category < 1){
			alert('Please select category.');
			$("#kt_pdf_manager_pdf_edit_categories_id").focus();
			return false;
		}
		
		//check title
		var pdf_title = $("#kt_pdf_manager_pdf_titile_id").val();
		if ($.trim(pdf_title) == ''){
			alert('PDF title can not be NULL.');
			$("#kt_pdf_manager_pdf_titile_id").focus();
			return false;
		}
		
		//check file
		if ($("#kt_pdf_manager_pdf_file_old_id").length > 0){
			var is_delete = $("#kt_pdf_manager_pdf_file_rmv_id").attr('checked');
			if (is_delete){
				var file_name = $("#kt_pdf_file_id").val();
				file_name = $.trim(file_name);
				if (file_name == ""){
					alert('Please select a new PDF to upload because you checked delete old one.');
					$("#kt_pdf_file_id").focus();
					return false;
				}
			}
			
		}else{
			var file_name = $("#kt_pdf_file_id").val();
			file_name = $.trim(file_name);
			if (file_name == ""){
				alert('Please select a file to upload.');
				$("#kt_pdf_file_id").focus();
				return false;
			}
		}
		
		$("#kt-pdf-manager-pdfs-form-id").submit();
	});
	
	if( $(".kt-date").length > 0 ){
		$(".kt-date").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	}
	
	/* Pro tips */
	$(".kt-pdf-pro-tip-viewer").mouseover(function(){
		var attr_id = $(this).attr("attrid");
		var attr_text = $("#" + attr_id).val();
		if( attr_text == "" ){
			return;
		}
		$(".kt-pro-tips-box-tip").html( attr_text );
	});
	
	$(".kt-pdf-pro-tip-viewer").mouseout(function(){
		var attr_text = $("#kt_pdf_manager_hidden_tip_box_tip_ID").val();
		if( attr_text == "" ){
			return;
		}
		$(".kt-pro-tips-box-tip").html( attr_text );
	});
	
	if( $("#tip_4_kt_pdf_manager_bulk_change_category_view_id").length > 0 ){
		$("#tip_4_kt_pdf_manager_bulk_change_category_view_id").insertAfter( "#doaction2" );
		$("#tip_4_kt_pdf_manager_bulk_change_category_view_id").css( "margin-top", "5px" );
	}
	
	/* tab switch */
	$("#kt_pdfm_setings_wrap_ID .nav-tab-wrapper a").click(function(){
		//alert( $(this).index() );
		$('#kt_pdfm_setings_wrap_ID section').hide();
		$('#kt_pdfm_setings_wrap_ID section').eq($(this).index()).show();
		
		$(".nav-tab").removeClass( "nav-tab-active" );
		$(this).addClass( "nav-tab-active" );
		
		return false;
	});
	
});
