<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>테스트</h1>
		<table border = "1" id = "start">
			<tr>
				<td colspan = "3">
					<input type = "checkbox"> 맥주
					<input type = "checkbox"> 소주
					<input type = "checkbox"> 보드카
					<input type = "checkbox"> 양주
				</td>
			</tr>
			</table>
			<button>소분류 가져오기</button>
			
			<script src = "jquery-3.6.0.min.js"></script>
			<script type = "text/javascript">
			
				$("input").on("click" , function(){
					$.ajax({
						url : "Test",
						dataType : "json", // dataType 넘겨받을때의 데이터 타입 약속
						success : function(result){
							alert("성공");
							// json 형식의 문자열을 사용가능한 객체로 바꾸어 줌
							// console.log(JSON.parse(result[0]));
							for (let i = 0 ; i < result.length; i ++) {
								// 현재 배열의 원소를 사용가능한 객체로 바꿔줌
								let data = JSON.parse(result[i]);
								if ( data.taste == null ){
									$("#start").append("<tr>"
											+"<td>"+data.flavor+"</td>"
											+"<td>"+data.abv+"</td>"
											+"</tr>");
								} else if (data.flavor == null ) {
									$("#start").append("<tr>"
											+"<td>"+data.taste+"</td>"
											+"<td>"+data.abv+"</td>"
											+"</tr>");
								} else if ( data.abv == null ) {
									$("#start").append("<tr>"
											+"<td>"+data.taste+"</td>"
											+"<td>"+data.flavor+"</td>"
											+"</tr>");
								} else {
									$("#start").append("<tr>"
											+"<td>"+data.taste+"</td>"
											+"<td>"+data.flavor+"</td>"
											+"<td>"+data.abv+"</td>"
											+"</tr>");
								}
								
							}
						} ,
						error : function(){
							alert("실패");
						}
					});
				});
			</script>
</body>
</html>