/**
 * 
 */

$(function() {
	// 메뉴보기1
	$('#template').click(function() {
		// 형식) $('선택자').load('경로포함해서 불러올 문서명')
		$('#main').load('template.html #main')

		return false
		// event.preventDefault()
	})

	$('#topMenu').click(function() {
		$('#main').load('topMenu.html #content')
		return false
	})
	
	$('#categorySet').click(function() {
		$('#main').load('categorySet.html #content')
		return false
	})

})