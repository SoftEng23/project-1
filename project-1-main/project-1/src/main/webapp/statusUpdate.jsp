<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert</title>
<link
	href="data:image/x-icon;base64,AAABAAEAEBAAAAEACABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAB9fXsATEpGAFhVUACEmMQAlafTAKysqwBgWVUAi46NAGdjYgBNWoUAJSIsAFpXUwBbV1MAUUxJADMrKwBzhLMAfXt5AHqUyABXZIoAd4q7AHBycgDZ2dkAorr5AFhVUQBUUUwAXGmVAHZ1cgB5mtkAT1JSAMnIyACFpOYAHBojAGFeWQBRT0oAUk9KAJOq3QCUrOgAhqbpAD5BQQBUUU0AX1xXAFVRTQA3MC8AOzc0AEI7OQCBnt8AZHiuAN3e3QBrdZUAiKXkAEE9PABHREEAUk9LAFlTUABdWlUAU09LAF5aVQBDQDwAepnVAHyXygBZVlAAlafWAJKq7wBfXFgAVVFOAJmt3gAeFhcANjMwAFtYUwBRTUkAMywrAFxYUwBiYmAAXVhTAHp4dACTsO8ASERCAF1aVgB1jb4AWFZRAE5LRwBZVlEAVlFPAGBcWQBGQkAAy8zQAFtYVABwir8ATUlFAFdUTwBcV1cAnZybAHJzcwCvtcgAWVZSAE5RUAA/PDkAWlZSAFVSTQCGodkA29zdAF1iYgCOos4AUlBLAFNQSwAQCgoA/v/+AKinpgB1kMgAPDU1AEdDPwCDgX4AXFlTAPPy8gBJRUIAXltWAHySwwB8jsYAcoHKAP///wBaV1EAaXecABQQEwBJTU0AVVVPAFxZVABSTkoAXVlUAP39/QD3+PsAWFRSAF5bVwBPTEgAWVdSAFpXUgBAPTkAW1dSAI+cwADL0uQA2dnYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhDKEUUQ8J30cfVZ9SXArYDNUCzgLNwxiZXOGTSh/Q4dYfFY2R1ZWJntzP14gNlA5SiF9YVkLRFxffT+Dc4gCNC9QKTdoF1MFB0g2hU9SGAB3gHI3NX5rFRRbQHhFDWd3d3d3cQFMVRs7HW4iEHd3d3d3d3d3bxMJGYmCd3d3d3d3d3d3d2oePjp5d3d3d3d3d3d3d3djMXZsTnd3d3d3d3d3d3eBJEslFnWKd3d3d3d3d3d3ZFcuLQ90XXd3d3d3d3d3d21mQSMwElp3d3d3d3d3d3cGAwQ9EQosd3d3d3d3d3d3i2lpH3pCGnd3d3d3d3d3d3cIKkYOb3d3d3d3dwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
	rel="icon" type="image/x-icon" />

<style>
.font {
	margin: 10px 0px 30px 100px;
	color: black;
}

.div {
	margin: 30px;
}

.custom-button {
	padding: 8px 15px;
	font-size: 24px;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: #000;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #32A5CE;
	margin: 20px 15px 0px 15px;
}

.custom-button:hover {
	background-color: #ddd
}

.custom-button:active {
	background-color: #32A5CE;
	box-shadow: 0 5px white;
	transform: translateY(4px);
}

.button:hover {
	background-color: white
}

.button:active {
	background-color: white;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

img {
	position: absolute;
	left: 10px;
	top: 10px;
	z-index: 1;
}
</style>
</head>
<body style="background-color: #00b7ff;">
	<div class="div">
		<div class="font">
			<div align="center">
				<sql:setDataSource var="conn" user="root" password="Softw@re23!"
					driver="com.mysql.cj.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/p1" />
				<sql:query dataSource="${conn}" var="rs">select * from employee where status='${param.status}'</sql:query>

				<c:forEach var="user" items="${rs.rows}">
					<c:out
						value="Updated Status: ${user.status} reimbursement ticket!!!"></c:out>

					<button class="custom-button">
						<a style="text-decoration: none; color: #32A5CE"
							; href="index.html"><strong>Logout</strong></a>
					</button>
				</c:forEach>

			</div>
		</div>
	</div>
</html>