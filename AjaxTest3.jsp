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
					<input type = "checkbox" value = "1" onclick = "getCheckboxValue(event)"> 맥주
					<input type = "checkbox" value = "2" onclick = "getCheckboxValue(event)"> 소주
					<input type = "checkbox" value = "3" onclick = "getCheckboxValue(event)"> 보드카
					<input type = "checkbox" value = "4" onclick = "getCheckboxValue(event)"> 양주
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
									// 넘어온 result 중에서 해당하는 값만 출력
									for (let i = 0 ; i < result.length; i ++) {
										// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
										console.log("for문 안")
										console.log(sort)
										// 해당 번호에 맞는 정보만 append
										if (sort-1 == i){
										let data = JSON.parse(result[i]);
											$("#result").append("<tr id = "+i+">"
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
									// 제대로된 값이 넘어왔는지 콘솔에서 확인
									console.log(result);
									// 넘어온 result 중에서 해당하는 값만 출력
									for (let i = 0 ; i < result.length; i ++) {
										// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
										console.log("for문 안")
										console.log(sort)
										// 해당 번호에 맞는 정보만 append
										if (sort-1 == i){
										let data = JSON.parse(result[i]);
											$("#result").append("<tr id = "+i+">"
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
						} else if ( sort == "3") {
							$.ajax({
								url : "Test",
								dataType : "json", // dataType 넘겨받을때의 데이터 타입 약속
								success : function(result){
									// 제대로된 값이 넘어왔는지 콘솔에서 확인
									console.log(result);
									// 넘어온 result 중에서 해당하는 값만 출력
									for (let i = 0 ; i < result.length; i ++) {
										// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
										console.log("for문 안")
										console.log(sort)
										// 해당 번호에 맞는 정보만 append
										if (sort-1 == i){
										let data = JSON.parse(result[i]);
											$("#result").append("<tr id = "+i+">"
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
						} else if (sort == "4") {
							$.ajax({
								url : "Test",
								dataType : "json", // dataType 넘겨받을때의 데이터 타입 약속
								success : function(result){
									// 제대로된 값이 넘어왔는지 콘솔에서 확인
									console.log(result);
									// 넘어온 result 중에서 해당하는 값만 출력
									for (let i = 0 ; i < result.length; i ++) {
										// for문안에 잘 들어왔는지, 분류값은 잘 유지되는지 확인
										console.log("for문 안")
										console.log(sort)
										// 해당 번호에 맞는 정보만 append
										if (sort-1 == i){
										let data = JSON.parse(result[i]);
											$("#result").append("<tr id = "+i+">"
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
						sort = event.target.value;
						console.log("해제된 체크박스 번호" , sort);
						if ( sort == 1) {
							$("#0").remove();							
						} else if ( sort == 2) {
							$("#1").remove();
						} else if ( sort == 3) {
							$("#2").remove();
						} else if ( sort == 4) {
							$("#3").remove();
						}
						
					}
					
				}
			
				$("button").on("click" , function(){
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