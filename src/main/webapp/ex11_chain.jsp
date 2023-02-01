<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chain : 다양한 액션을 . 으로 구분해서 연속적으로 연결해서 사용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style type="text/css">
	#box {
		background: tomato;
		width: 300px;
		height: 300px;
		position: absolute;
		display : none;
	}
</style>
<script type="text/javascript">
	// chain을 종료시키는 명령 : .end()
	
	$(document).ready(function() {
		$("#btn").click(function() {
			$("#box").slideDown(1000)
				.slideUp(1000)
				.show(1000)
				.fadeOut(1000)
				.fadeIn(1000)
				.end()
				//.css('background', 'skyblue');			
		});
	});
</script>
</head>
<body>
	<button id="btn"> 눌러주세요</button><br>
	<div id="box"></div>
</body>
</html>