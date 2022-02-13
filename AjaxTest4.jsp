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
					<input type = "radio" name = "drink" value = "1" onclick = "getCheckboxValue(event)"> 맥주
					<input type = "radio" name = "drink" value = "2" onclick = "getCheckboxValue(event)"> 소주
					<input type = "radio" name = "drink" value = "3" onclick = "getCheckboxValue(event)"> 보드카
					<input type = "radio" name = "drink" value = "4" onclick = "getCheckboxValue(event)"> 양주
				</td>
			</tr>
			</table>
			<button>소분류 가져오기</button>
			<br>
			<table border = "1" id = "result"></table>
			
			
			<script src = "jquery-3.6.0.min.js"></script>
			<script type = "text/javascript">
				
				function getCheckboxValue(event) {
					// 분류 번호 초기화
					let sort = "";
					if( event.target.checked ){
						// 체크박스에 이벤트 발생했다면 그때의 값을 담는다.
						sort = event.target.value;
						// 분류한 번호가 1번이라면
						if ( sort == "1" ) {
							$.ajax({
								url : "Test",
								dataType : "json", // dataType 넘겨받을때의 데이터 타입 약속
								success : function(result){
									// 제대로된 값이 넘어왔는지 콘솔에서 확인
									console.log(result);
									// 소분류 초기화
									$("#result").empty();
									// 넘어온 result 중에서 해당하는 값만 출력
									for (let i = 0 ; i < result.length; i ++) {
										// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
										console.log("for문 안")
										console.log(sort)
										// 해당 번호에 맞는 정보만 append
										if (sort-1 == i){
										let data = JSON.parse(result[i]);
											$("#result").append("<tr>"
													+"<td><input type = 'checkbox'>"+data.taste+"</td>"
													+"<td><input type = 'checkbox'>"+data.flavor+"</td>"
													+"<td><input type = 'checkbox'>"+data.abv+"</td>"
													+"</tr>");
										}
									}
									} ,
								error : function(){
									alert("실패");
								}
							});
							// 분류 번호가 2번이라면
						} else if ( sort == "2"){
							$.ajax({
								url : "Test",
								dataType : "json", // dataType 넘겨받을때의 데이터 타입 약속
								success : function(result){
									console.log(result);
									$("#result").empty();
									for (let i = 0 ; i < result.length; i ++) {
										console.log("for문 안")
										console.log(sort)
										if (sort-1 == i){
										let data = JSON.parse(result[i]);
											$("#result").append("<tr>"
													+"<td><input type = 'checkbox'>"+data.taste+"</td>"
													+"<td><input type = 'checkbox'>"+data.flavor+"</td>"
													+"<td><input type = 'checkbox'>"+data.abv+"</td>"
													+"</tr>");
										}
									}
									} ,
								error : function(){
									alert("실패");
								}
							});
						}
					} else {
						// 체크박스 해제시 소분류창 비우기
						// $("#result").empty();
					}
					
				}
			</script>
</body>
</html>