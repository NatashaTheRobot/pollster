$(function() {
	var numFields = 1
	
	function addField(){
		$(question = '#question' + numFields).unbind('keypress');
		numFields ++;
		var id = 'question' + numFields;
		$('<br /><input type="text" id=' + id + '>').insertAfter('#question' + (numFields - 1));
		appendHandlerToFields();
	};
	
	function appendHandlerToFields(){
		$('#question' + numFields).keypress(function() {
				addField();
		});
	};
	
	appendHandlerToFields();
});