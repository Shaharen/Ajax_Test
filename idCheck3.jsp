<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td><label for="id"> 아이디 </label></td>
			<td><input type="text" class = "input" id = "input_id" placeholder="아이디를 입력하세요">
			</td>
			<td><div id="idInfo"></div></td>
		</tr>
		<tr>
			<td><label for="pw"> 비밀번호 </label></td>
			<td><input type="text" class = "input" id = "pw1" placeholder="비밀번호를 입력하세요">
			</td>
			<td><div id="pwInfo"></div></td>
		</tr>
		<tr>
			<td><label for="pw2"> 비밀번호 확인 </label></td>
			<td><input type="text" class = "input" id = "pw2" placeholder="비밀번호를 입력하세요">
			</td>
			<td><div id="pwInfo2"></div></td>
		</tr>
		<tr>
			<td><label for="nick"> 닉네임 </label></td>
			<td><input type="text" class = "input" id = "input_nick" placeholder="닉네임을 입력하세요">
			</td>
			<td><div id="nickInfo"></div></td>
		</tr>
		<tr>
			<td colspan="3">
				<button id="joinBtn" class="btn-default">회원가입</button>
			</td>
		<tr>
	</table>

	<h3>현재 저장된 아이디 : admin, smhrd, night</h3>


	<script src="jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		// 비밀번호 동일 여부
		$("#pw1,#pw2").keyup(function() {
			let pw1 = $("#pw1").val();
			let pw2 = $("#pw2").val();
			if ( pw2 != "" ) {
				if( pw1 == pw2 ) {
					$("#pwInfo2").html("비밀번호가 같습니다");
					$("#pwInfo2").css("margin", "2px");
					$("#pwInfo2").css("color", "blue");
					$("#pwInfo2").css("font-family", "Nanum Gothic");
				} else {
					$("#pwInfo2").html("비밀번호가 다릅니다");
					$("#pwInfo2").css("margin", "2px");
					$("#pwInfo2").css("color", "red");
					$("#pwInfo2").css("font-family", "Nanum Gothic");
				}				
			}
		})
		
		// 아이디 알림 메시지
		function idCheckMsg(count) {
			if (count > 0) {
				$("#idInfo").html("사용할 수 없는 아이디");
				$("#idInfo").css("margin", "2px");
				$("#idInfo").css("color", "red");
				$("#idInfo").css("font-family", "Nanum Gothic");
			} else {
				$("#idInfo").html("사용할 수 있는 아이디");
				$("#idInfo").css("margin", "2px");
				$("#idInfo").css("color", "blue");
				$("#idInfo").css("font-family", "Nanum Gothic");
			}
		}
		// 아이디 중복 체크
		$("#input_id").keyup(function() {
			let input_id = $("#input_id").val();
			console.log(input_id);
			$.ajax({
				type : "post",
				url : "test2_3",
				async : true,
				data : {"input_id" : input_id },
				success : function(Count) {
					// 통신 성공시 중복 여부 메시지 출력
					idCheckMsg(Count)
				},
				error : function() {
					alert("ajax error");
				}
			});
		});

		// 공백 제어
		$("#joinBtn").click(function() {
			var id = $("#input_id").val();
			var nick = $("#input_nick").val();
			if (id == "") {
				// 아이디 입력란 공백 제어
				alert("아이디를 입력해 주십시옹");
			}
			if (nick == "") {
				alert("닉네임을 입력해 주십시옹");
			}
		});
	</script>
</body>
</html>