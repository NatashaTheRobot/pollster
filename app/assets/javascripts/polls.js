$(function() {
	var numFields = 1
	
	function addField(){
		$(question = '#question' + numFields).unbind('keypress');
		numFields ++;
		var id = 'question' + numFields;
		$('.questions').append('<input type="text" id=' + id + '><br/>');
		appendHandlerToFields();
	};
	
	function appendHandlerToFields(){
		$('#question' + numFields).keypress(function() {
				addField();
		});
	};
	
	appendHandlerToFields();
});