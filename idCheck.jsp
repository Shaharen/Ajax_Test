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
	<input type = "text" id ="id" name = "id" placeholder = "아이디를 입력하세요">
	<div id = "_rgetid"></div>
	
	<button type = "submit" id ="_btnGetId" class = "btn-default">중복확인</button>
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
			$("#_rgetid").val("");
		} else {
			$("#_rgetid").html("사용할 수 있는 아이디");
			$("#_rgetid").css("margin" , "2px");
			$("#_rgetid").css("color" , "blue");
			$("#_rgetid").css("font-family" , "Nanum Gothic");
			$("#_rgetid").val( $("c_id").val());
		}
	}
	
	// 중복확인 ajax
	function idCheckFunc(id) {
		$.ajax({
			type : "post",
			url : "test2",
			async : true,
			data : "id=" + id,
			success : function(msg) {
				alert("ajax success")
				// 통신 성공시 중복 여부 메시지 출력
				idCheckMsg(msg);
			},
			error : function() {
				alert("ajax error");
			}
		});
	}
	
	
	$("#_btnGetId").click(function() {
		var id = $("#id").val();
		if(id == "") {
			// 아이디 입력란 공백 제어
			alert("아이디를 입력해 주십시옹");
		} else {
			// 공백이 아닐경우 id 중복확인 ajax실시
			idCheckFunc(id);
		}
	});
	</script>
	
	
</body>
</html>