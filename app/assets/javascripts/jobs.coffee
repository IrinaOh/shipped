# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
	$('.jobbutton').on 'click', (e) -> 
		$('#job_id').val($(this).prev('input').val())
		window.add_boats_btn = $(e.target).closest('.jobinfo')
		$('.modal').modal()
	$('#addingboats').on 'click', ->
		$('#myModal').modal('hide')
	

	$('.boatbutton').on 'click', (e) -> 
		$('#boat_id').val($(this).prev('input').val())
		window.add_jobs_btn = $(e.target).closest('.boatinfo')
		$('.modal').modal()
	$('#addingjobs').on 'click', ->
		$('#myJobsModal').modal('hide')