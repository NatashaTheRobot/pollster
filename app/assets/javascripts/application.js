// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require bootstrap
//= require jquery
//= require jquery_ujs
//= require_tree .


$(function() {
	var numFields = 1
	
	function addField(){
		$('#question' + numFields).unbind('keypress');
		numFields ++;
		var id = 'question' + numFields;
		$('.questions').append('<input type="text" id=' + id + '>');
		appendHandlerToFields();
	}
	
	function appendHandlerToFields(){
		$('#question' + numFields).keypress(function() {
				addField();
		});
	}
	
	appendHandlerToFields();
});