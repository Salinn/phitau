# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#event_event_date').datepicker(dateFormat: 'dd-mm-yy');
  $('#event_start_time').timepicker({ 'scrollDefault': 'now' });
  $('#event_end_time').timepicker({ 'scrollDefault': 'now' });