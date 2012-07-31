$(function() {
	var numFields = 1
	
	function addField(){
		var question = '#question' + numFields;
		$(question).unbind('keypress');
		numFields ++;
		var id = 'question' + numFields;
		$('.questions').append('<input type="text" id=' + id + '><br/>');
		appendHandlerToFields();
	};
	
	function appendHandlerToFields(){
		var question = '#question' + numFields;
		$(question).keypress(function() {
				addField();
		});
	};
	
	appendHandlerToFields();
});