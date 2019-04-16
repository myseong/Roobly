
$(function(){ 
		//메뉴보기1
		$('.category').click(function(){
			//형식) $('선택자').load('경로포함해서 불러올 문서명')
			$('.hero-area').empty()
			$('.blog-wrapper').load('category.html .blog-wrapper')
			
			return false
			//event.preventDefault()
		})
		
})