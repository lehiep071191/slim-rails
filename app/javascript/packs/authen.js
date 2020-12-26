$(document).on('turbolinks:load',function(){
	$('#authensubmit').click(function(){
		var name = $('#name').val()
		var pass = $('#pass').val()
		if (name == "hiepdaica" && pass == 'hiepdaica'){
			$('.authen').show();
		}else{
			alert('nhap sai roi ban oi')
		}
	})
})