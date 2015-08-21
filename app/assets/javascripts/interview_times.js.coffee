# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#interview_time_interview_date').datepicker(dateFormat: 'dd-mm-yy');
  $('#interview_time_interview_time').timepicker({ 'scrollDefault': '17:00' });