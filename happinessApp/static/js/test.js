$(function() {
	$.ajax({
		type: "GET",
		url: "/chlorandlinedata",
		success: function(data){
			console.log(data)
		}
	});
});

$("#posttest").click(function() {
	date = 2019
	$.ajax({
		type: 'POST',
		url: '/chlorandlinedata',
		datatype: 'json',
		data: JSON.stringify(date),
		contentType:"application/json",
		success: function(data){
			console.log(data)
		}
	});
});
