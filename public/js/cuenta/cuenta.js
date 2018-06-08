$(function(){
	var totalOk = 0;
	$('.monto').each(function(index){

		totalOk += ($(this).html().substring(3, 25) * 1);
		$('.total').eq( index ).html(totalOk.toFixed(2));
		console.log($(this).html().substring(3, 25));
		$('#tablaCuenta .color').css('background-color', '#7FFFD4');
		$('#tablaCuenta td:last').css('background-color', 'yellow');
	});
});