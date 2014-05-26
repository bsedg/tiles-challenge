# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('.tile').click ->
		$(this).removeClass('tile')
		$(this).addClass('clickedTile')

$('.tile').hover(ev) => $(this).toggleClass 'activeTile'

	