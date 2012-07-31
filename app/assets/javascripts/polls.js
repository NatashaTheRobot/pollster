$(function() {
	var numFields = 1
	
	function appendHandlerToFields(){
		$('#question' + numFields).keypress(function() {
				addField();
		});
	};
	
	function addField(){
		$(question = '#question' + numFields).unbind('keypress');
		numFields ++;
		var id = 'question' + numFields;
		var param = id + '[text]'
		$('<br /><input type="text" id=' + id + ' name=' + id +'>').insertAfter('#question' + (numFields - 1));
		appendHandlerToFields();
	};
	
	appendHandlerToFields();
});