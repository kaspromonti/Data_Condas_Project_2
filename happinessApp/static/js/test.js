$(function getData(){
	$.ajax({
		type: "GET",
		url: "/chlorandlinedata",
		success: function(data){
			console.log(data)
		}
	});
});

$("#posttest").click(function () {
	date = 2019
	$.ajax({
		type: "POST",
		url: '/chlorandlinedata',
		data: date,
		success: function(){
			console.log(date)
		}
	});
});
	





	// $(function getDataWithDate(){
	// 	date = 2019
	// 	$.ajax({
	// 		type: "POST",
	// 		url: "/chlorandlinedata",
	// 		data: date,
	// 		success: function(){
	// 			console.log(date)
	// 		}
	// 	})
	// });
