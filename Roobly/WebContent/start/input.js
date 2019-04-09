/**
 *  회원가입의 인증부분 처리
 */
$(function(){ 
	//처음에 에러메시지 안보이게 설정
	//특정태그를 화면에 보여주기(show) or 숨기기(hide)
	$('#id_error').hide()
	$('#p_error1').hide()
	$('#p_error2').hide()
	$('#n_error').hide()
	$('#phone_error1').hide()
	$('#phone_error2').hide()
	$('#email_error').hide()
	$('#addr_error').hide()
	$('#A_error').hide()
	$('.brbr').hide()
	
	//input 텍스트에 커서가 들어갈 때
	$('.inputcheck').focus(function(){ 
		//현재 클릭한 텍스트에서 커서가 벗어났을 때
		$(this).blur(function(){
			 //1.id입력체크
			 var id=$('#uid').val()
			 if(id.length < 1){
				 $('#id_error').show()
				 $('.brbr').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#id_error').hide()
			 }

			 //2.pwd입력체크
			 var pwd1=$('#pw').val()
			 if(pwd1.length < 1){
				 $('#p_error1').show()
				 //$('#pwd1').next().show()
				 return false;
			 }else{ //한글자라도 입력했다면
				$('#p_error1').hide()
				 //$('#pwd1').next().hide()
			 }
			 
			 //3.pwd 불일치 여부 체크
			 var pwd2=$('#pwCheck').val()
			 if(pwd2.length < 1){
				 $('#p_error2').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#p_error2').hide()
			 }
			 //불일치 체크
			 if(pwd1!=pwd2){
				 $('#p_error2').show() //불일치하다는 에러메세지 출력
			 }
			 
			//4.이름 입력체크
			 var name=$('#name').val()
			 if(name.length < 1){
				 $('#n_error').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#n_error').hide()
			 }
			 
			//5.age입력체크
			 var phone=$('#phone').val()
			 if(phone.length < 1){
				 $('#phone_error1').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#phone_error1').hide()
			 }
			 //6.age이 숫자인지 체크->2a or,a,23a->입력받은 문자열의 길이->isNaN()이용
			 //0~9범위를 벗어나면 ->문자
			 for(var i=0;i<phone.length;i++){
				 var data=phone.charAt(i).charCodeAt(0)//아스키코드값으로 변환
				 //alert(data)//48~57
				 if(data < 48 || data > 57){ //문자를 입력했다면 ->isNaN
					 $('#phone_error2').show()
					 return false;
					 break;//탈출문(처음,중간,마지막->문자가 나오면)
				 }else{//숫자를 입력한 경우라면
					 $('#phone_error2').hide()
				 }
			 }
			 
			//7.이메일 입력체크
			 var email=$('#email').val()
			 if(email.length < 1){
				 $('#email_error').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#email_error').hide()
			 }
			 
			//8.나머지주소 입력체크
			 var addr=$('#addr').val()
			 if(addr.length < 1){
				 $('#addr_error').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#addr_error').hide()
				 $('.brbr').show().hide()
			 }
			 
			//9.답변 입력체크
			 var answer=$('#answer').val()
			 if(answer.length < 1){
				 $('#A_error').show()
				 return false;
			 }else{ //한글자라도 입력했다면
				 $('#A_error').hide()
			 }
			 
			 //다 입력했다면 document.form객체명.submit()->action='register.jsp'
			 //$('#signup').attr('action','index.html').submit() 
		
		
		return true //전송가능
		})
	})
})
