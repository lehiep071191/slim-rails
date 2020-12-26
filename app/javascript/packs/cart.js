$(document).on('turbolinks:load', function(){
 		$('.item-quantity').click(function(){

 			var id = $(this).data('id')
 			$.ajax({
 				url: 'order_details/'+ id,
 				type: 'put',
 				dataType: 'json',
 				data: {
 					authenticity_token: $('meta[name=csrf-token]').attr('content'),
 					quantity: $('#item-quantity-'+id).val()
 				},
 				success: function(data){
 					$('#total'+id).html(data.data_total)
 				}
 			})
 		})
 	})

	$(document).on('turbolinks:load', function(){
		$('.item-quantity').mouseleave(function(){
		 	 count = $('.total').length
		 	var sum = 0
		 	for (i = 0;i < count; i++) {
		 		var t = $('.total')[i]
		 		to = parseInt(t.innerHTML)
		 		sum = sum + to

		 	}

		 		$('.total-cart').html(sum)
		})
	})
	$(document).on('turbolinks:load', function(){
		$('.item-quantity').keypress(function(event){
			debugger
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if (keycode == 13){
		 	 count = $('.total').length
		 	var sum = 0
		 	for (i = 0;i < count; i++) {
		 		var t = $('.total')[i]
		 		to = parseInt(t.innerHTML)
		 		sum = sum + to
		 	}

		 		$('.total-cart').html(sum)
			}
		})
	})