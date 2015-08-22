# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#interview_questionnaire_date_of_birth').datepicker(dateFormat: 'dd-mm-yy', defaultDate: '-18y', gotoCurrent: true, changeYear: true, changeMonth: true);