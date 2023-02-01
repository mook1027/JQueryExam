<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	// https://api.jquery.com/ 에서 공부하기
	
	// 마우스 이벤트 : click(=on, =bind), dblclick, mouseover, mouseout
	 
	// 키보드 이벤트 : keypress, keyup, keydown
	
	// form 이벤트 : submit, select, focus, focusin/out, change, blur
	
	$(document).ready(function() {
		// click : 동적처리 불가능
		//$("#p1").click(function() { alert("클릭 성공"); });
	
		// 주체가 되는 부모 속성의 이벤트를 물려 받아서 지정 선택자에게 이벤트 연결
		// $("상위 선택자").on("click", "하위 선택자", function() { });
		//$("#p1").on("click", function() { alert("on 클릭 성공"); });
		
		// 동적처리
		//$("#p1").bind("click", function() { alert("bind 클릭 성공"); });
		
		// double click
		//$("#p1").dblclick(function() { alert("double click 성공"); });
		
		// 마우스 포인트 올렸을 때, 벗어날 때
		// attr => 속성 설정
		$("#img").mouseover(function() {
			//javascript: this => 선택된 객체
			$(this).attr("src", "images/pic_bulbon.gif");
		});
		$("#img").mouseout(function() {
			$(this).attr("src", "images/pic_bulboff.gif");
		});
		
		// keyup : 글자를 입력하고 키를 눌렀다가 땠을 때
		// val()
		$("#name").keyup(function() {
			//alert("누르셨네요");
			
			var name = $(this).val();
			alert(name);
		});
		
		// 체크 박스 : change(), select(), radio
		$("#chk").change(function() {
			var str = $("#addr").val(); //getter
			//$("#addr2").val(str); //setter
			
			//is(":checked") : 체크된 상태면 true
			if ($(this).is(":checked")) { 
				$("#addr2").val(str);
			} else {
				$("#addr2").val("");
			}
		});
		
		// 비밀번호 확인 처리
		$("#pwd2").keyup(function() {
			if ($("#pwd").val() == $("#pwd2").val()) {
				$("#s1").html("<b> 비밀번호가 일치합니다.</b>");
			} else
				$("#s1").html("<b> 비밀번호가 일치하지 않습니다.</b>");
		});
		
	});
	
</script>
</head>
<body>
	<p><span id="p1">이벤트 처리</span></p>
	<p><img id="img" src="images/pic_bulboff.gif"></p>
	<p><input type="text" name="name" id="name"></p>
	<hr>
	
	<p>주소 : <input type="text" name="addr" id="addr"></p>
	<p> <input type="checkbox" id="chk">상동</p>
	<p>주소 : <input type="text" name="addr2" id="addr2"></p>
	<hr>
	
	<p> 비번 : <input type="password" name="pwd" id="pwd"></p>
	<p> 비번확인 : <input type="password" name="pwd2" id="pwd2"></p>
	<p><span id="s1"></span></p>
</body>
</html>

