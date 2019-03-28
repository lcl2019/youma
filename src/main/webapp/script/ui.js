$(function() {
	$("#dialog").dialog({
		autoOpen : false,
		show : {
			effect : "blind",
			duration : 100
		},
		hide : {
			effect : "explode",
			duration : 100
		}

	});
	$("#opener").click(function() {
        alert("aaaaaaaa")
		$("#dialog").dialog("open");
	})
});