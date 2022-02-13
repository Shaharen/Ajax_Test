<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<label for ="id"> 아이디 </label>
	<input type = "text" id ="input_id" placeholder = "아이디를 입력하세요">
	<div id = "_rgetid"></div>
	
	<button id ="joinBtn" class = "btn-default">회원가입</button>
	<h3> 현재 저장된 아이디 : admin, smhrd, night</h3>
	
	<script src = "jquery-3.6.0.min.js"></script>
	<script type = "text/javascript">
	// 알림 메시지
	function idCheckMsg(msg) {
		if (msg > 0) {
			$("#_rgetid").html("사용할 수 없는 아이디");
			$("#_rgetid").css("margin" , "2px");
			$("#_rgetid").css("color" , "red");
			$("#_rgetid").css("font-family" , "Nanum Gothic");
		} else {
			$("#_rgetid").html("사용할 수 있는 아이디");
			$("#_rgetid").css("margin" , "2px");
			$("#_rgetid").css("color" , "blue");
			$("#_rgetid").css("font-family" , "Nanum Gothic");
		}
	}
	// 아이디 중복 체크
		$("#input_id").keyup(function() {
			let input_id = $("#input_id").val();
			$.ajax({
				type : "post",
				url : "test2_2",
				async : true,
				data : {"input_id": input_id },
				success : function(msg) {
					// 통신 성공시 중복 여부 메시지 출력
					idCheckMsg(msg);
				},
				error : function() {
					alert("ajax error");
				}
			});
		});
	
	// 공백 제어
	$("#joinBtn").click(function() {
		var id = $("#input_id").val();
		if(id == "") {
			// 아이디 입력란 공백 제어
			alert("아이디를 입력해 주십시옹");
		}
	});
	</script>
</body>
</html>