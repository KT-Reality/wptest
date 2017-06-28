jQuery(function ($) {
			$('a.button.reset').click(function () {
				var rst = confirm("Are you sure to remove setting!");
				if (rst == true) {
					return true;
				} else {
					return false;
				}
			});
			
			$('.act_updt:input[type="submit"]').prop('disabled', true);
            $('#isRdct').multiselect({
                includeSelectAllOption: true
            });
			
			$('#cta_pos').multiselect({
                includeSelectAllOption: true
            });
				
			function GetURLParameter(sParam)
			{
				var sPageURL = window.location.search.substring(1);
				var sURLVariables = sPageURL.split('&');
				for (var i = 0; i < sURLVariables.length; i++) 
				{
					var sParameterName = sURLVariables[i].split('=');
					if (sParameterName[0] == sParam) 
					{
						return sParameterName[1];
					}
				}
			}
			var act = GetURLParameter('act');
			if(act=="upd" || act!="upd"){
				$('#cta_locate button.multiselect').prepend('Select Menus');
				$('#assign_post button.multiselect').prepend('Select Posts');
			}
			
			$('#cta_locate').on('change', '.multiselect-container', function () {
				var position_selected = $("#cta_locate .multiselect-container li a :input[type=checkbox]:checked");
                var position_msg = "";
                position_selected.each(function () {
					if($(this).val()!='multiselect-all') {
						position_msg += $(this).val() + ",";					
						$('#cta_position').val(position_msg);						
					}
                });
				$('#cta_position').val(position_msg.substring(0,position_msg.length-1)).attr('rows',position_msg.length-1);
			});
			
            $('#btnSelected').click(function () {				
                 var post_selected = $("#assign_post .multiselect-container li a :input[type=checkbox]:checked");
                var post_message = "";
                post_selected.each(function () {
					if($(this).val()!='multiselect-all') {
						post_message += $(this).val() + ",";					
						$('#cta_bt_assign_posts').val(post_message);
						cta_bt_assign_posts
					}
                });
				$('#cta_bt_assign_posts').val(post_message.substring(0,post_message.length-1)).attr('rows',post_message.length-1);				
				
				var r = confirm("Are you confirmed with the selected posts to exclude from Redirection");
				if (r == true) {
					$('.act_updt:input[type="submit"]').prop('disabled', false);
					$('#assign_post .multiselect-container').toggle();
				} else {
					$('#assign_post .multiselect-container').toggle();
					return false;
				}
				               
            });
			
			var select_frm_db=$('#cta_bt_assign_posts').val();	
			var selected_post = "";
			$.each(select_frm_db.split(","), function(index, values) {
				$('#assign_post .multiselect-container li a :input[type=checkbox][value='+values+']').attr('checked', true);
				$('#assign_post .multiselect-container li a :input[type=checkbox][value='+values+']').parent().parent().parent().addClass('active');					
				$("#assign_post .multiselect-container li a:contains('draft')").css({"opacity": "0.5" });					
				selected_post += $('#assign_post .multiselect-container li a :input[type=checkbox][value='+values+']').parent().text()+", ";					
				$('#assign_post button.multiselect span').text(selected_post.substring(0,selected_post.length-2)).attr('rows',selected_post.length-2);
			});
			
			var select_frm_position = $('#cta_position').val();	
			var selected_position = "";
			$.each(select_frm_position.split(","), function(index, values) {
				$('#cta_locate .multiselect-container li a :input[type=checkbox][value='+values+']').attr('checked', true);
				$('#cta_locate .multiselect-container li a :input[type=checkbox][value='+values+']').parent().parent().parent().addClass('active');					
				$("#cta_locate .multiselect-container li a:contains('draft')").css({"opacity": "0.5" });					
				selected_position += $('#cta_locate .multiselect-container li a :input[type=checkbox][value='+values+']').parent().text()+", ";					
				$('#cta_locate button.multiselect span').text(selected_position.substring(0,selected_position.length-2)).attr('rows',selected_position.length-2);
			});
			
			$('#addtag')
				.on('click', '#assign_post button.multiselect', function() {
					$('#assign_post .dropdown-search').toggle();
					$('#assign_post .multiselect-container').toggle();
				})
				.on('input', '.dropdown-search', function() {
					var target = $(this);
					var search = target.val().toLowerCase();
				
					if (!search) {
						$('#assign_post .multiselect-container li').show();
						return false;
					}
				
					$('#assign_post .multiselect-container li').each(function() {
						var text = $(this).text().toLowerCase();
						var match = text.indexOf(search) > -1;
						$(this).toggle(match);
					});
				})			
        });