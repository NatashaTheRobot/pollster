$(function() {
	var numFields = 0;
	function appendHandlerToFields(){
		
		$('#poll_questions_attributes_' + numFields + '_text').keypress(function() {
				addField();
		});
	};
	
	function addField(){
		$('#poll_questions_attributes_' + numFields + '_text').unbind('keypress');
		numFields ++;
		var id = 'poll_questions_attributes_' + numFields + '_text';
		var name = 'poll[questions_attributes][' + numFields +'][text]';
		$('<br /><input id=' + id + ' name=' + name + ' size="30" type="text">').insertAfter('#poll_questions_attributes_' + (numFields - 1) + '_text');
		appendHandlerToFields();
	};
	
	appendHandlerToFields();
});