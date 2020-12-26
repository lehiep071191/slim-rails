$(document).on('turbolinks:load', function(){
		$('.find_price').click(function(){
		debugger
		var min = $('#price_min').val()
		var max = $('#price_max').val()
			if (max != "" && min != ""){
				if (parseInt(min) < parseInt(max)){
					$('.find_price').attr("href", '/products?max='+parseInt(max)+'&min='+parseInt(min))
				}else{
					alert( 'gia nho nhat phai nho hon gia lon nhat')
				}
			}else {
				alert('hay nhap vao gia nho nhat va gia lon nhat')
			}
		})
	})
