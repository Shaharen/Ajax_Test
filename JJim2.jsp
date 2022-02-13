<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
	<tr>
		<td>상품명</td>
		<td>향</td>
		<td>맛</td>
		<td>도수</td>
		<td>찜하기</td>
		<td>찜하기 카운터</td>
	</tr>
	<tr>
		<td>앱솔루트</td>
		<td>무향</td>
		<td>사과맛</td>
		<td>50</td>
		<td><button id = "jjim">찜하기</button></td>
		<td id = "jjimCnt">0</td>
	</tr>
	
	</table>
	
	<script src = "jquery-3.6.0.min.js"></script>
	<script type = "text/javascript">
	
	// 판단 변수
	var bSubmit = false;
	
	$("button").click( function(){
		if ( bSubmit == false ) {
			// 색 변경
			$("#jjim").css("color","red");
			bSubmit = true;
			// ajax
			$.ajax({
				type : "post",
				url : "Test3",
				async : true,
				data : {"bSubmit" : bSubmit },
				success : function(msg) {
					alert("찜목록에 등록되었습니다.")
					// 통신 성공시 알림 메시지 출력
					// 찜하기 카운터보다는 추천수 출력으로 쓰일듯
					console.log(msg); // 잘 넘어왔는지 확인
					$("#jjimCnt").html(msg) // 넘어온 수로 값 변경
				},
				error : function() {
					alert("ajax error");
				}
			});
		} else {
			// 다시 원래대로
			$("#jjim").css("color","black");
			bSubmit = false;
			// ajax
			$.ajax({
				type : "post",
				url : "Test3",
				async : true,
				data : {"bSubmit" : bSubmit},
				success : function(msg) {
					alert("찜목록에서 제거되었습니다.")
					console.log(msg);
					$("#jjimCnt").html(msg)
				},
				error : function() {
					alert("ajax error");
				}
			});
		}
	});
	
	
	</script>
</body>
</html>