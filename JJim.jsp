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
	</tr>
	<tr>
		<td>앱솔루트</td>
		<td>무향</td>
		<td>사과맛</td>
		<td>50</td>
		<td><button id = "jjim">찜하기</button></td>
		<td>찜하기 카운터</td>
	</tr>
	
	</table>
	
	<script src = "jquery-3.6.0.min.js"></script>
	<script type = "text/javascript">
	
	var bSubmit = false;
	$("button").click( function(){
		if ( bSubmit == false ) {
			// 색 변경
			alert("찜목록에 등록되었습니다.")
			$("#jjim").css("color","red");
			bSubmit = true;
		} else {
			// 다시 원래대로
			alert("찜목록에서 제거되었습니다.")
			$("#jjim").css("color","black");
			bSubmit = false;
		}
	});
	
	
	</script>
</body>
</html>