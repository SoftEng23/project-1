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
<title>Reimbursements</title>
<link
	href="data:image/x-icon;base64,AAABAAEAEBAAAAEACABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAB9fXsATEpGAFhVUACEmMQAlafTAKysqwBgWVUAi46NAGdjYgBNWoUAJSIsAFpXUwBbV1MAUUxJADMrKwBzhLMAfXt5AHqUyABXZIoAd4q7AHBycgDZ2dkAorr5AFhVUQBUUUwAXGmVAHZ1cgB5mtkAT1JSAMnIyACFpOYAHBojAGFeWQBRT0oAUk9KAJOq3QCUrOgAhqbpAD5BQQBUUU0AX1xXAFVRTQA3MC8AOzc0AEI7OQCBnt8AZHiuAN3e3QBrdZUAiKXkAEE9PABHREEAUk9LAFlTUABdWlUAU09LAF5aVQBDQDwAepnVAHyXygBZVlAAlafWAJKq7wBfXFgAVVFOAJmt3gAeFhcANjMwAFtYUwBRTUkAMywrAFxYUwBiYmAAXVhTAHp4dACTsO8ASERCAF1aVgB1jb4AWFZRAE5LRwBZVlEAVlFPAGBcWQBGQkAAy8zQAFtYVABwir8ATUlFAFdUTwBcV1cAnZybAHJzcwCvtcgAWVZSAE5RUAA/PDkAWlZSAFVSTQCGodkA29zdAF1iYgCOos4AUlBLAFNQSwAQCgoA/v/+AKinpgB1kMgAPDU1AEdDPwCDgX4AXFlTAPPy8gBJRUIAXltWAHySwwB8jsYAcoHKAP///wBaV1EAaXecABQQEwBJTU0AVVVPAFxZVABSTkoAXVlUAP39/QD3+PsAWFRSAF5bVwBPTEgAWVdSAFpXUgBAPTkAW1dSAI+cwADL0uQA2dnYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhDKEUUQ8J30cfVZ9SXArYDNUCzgLNwxiZXOGTSh/Q4dYfFY2R1ZWJntzP14gNlA5SiF9YVkLRFxffT+Dc4gCNC9QKTdoF1MFB0g2hU9SGAB3gHI3NX5rFRRbQHhFDWd3d3d3cQFMVRs7HW4iEHd3d3d3d3d3bxMJGYmCd3d3d3d3d3d3d2oePjp5d3d3d3d3d3d3d3djMXZsTnd3d3d3d3d3d3eBJEslFnWKd3d3d3d3d3d3ZFcuLQ90XXd3d3d3d3d3d21mQSMwElp3d3d3d3d3d3cGAwQ9EQosd3d3d3d3d3d3i2lpH3pCGnd3d3d3d3d3d3cIKkYOb3d3d3d3dwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
	rel="icon" type="image/x-icon" />
<style media="screen">
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
	box-shadow: 0 5px #32A5CE;
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

.custom-text {
	margin-left: 10px;
	font-family: sans-serif;
	color: #aaa;
}

.file-upload {
	display: inline-flex;
	align-items: center;
	font-size: 15px;
}

.file-upload__input {
	display: none;
}

.file-upload__button {
	-webkit-appearance: none;
	padding: 8px 15px;
	font-size: 24px;
	cursor: pointer;
	outline: none;
	border: none;
	border-radius: 15px;
	margin: 20px 15px 0px 15px;
	text-align: center;
	outline: none;
	color: white;
	background-color: #32A5CE;
}

.file-upload__button:active {
	background-color: #32A5CE;
	box-shadow: 0 5px white;
	transform: translateY(4px);
}

.file-upload__button:hover {
	background-color: #ddd
}

.file-upload__label {
	max-width: 250px;
	font-size: 0.95em;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.font {
	margin: 10px 0px 30px 40px;
	color: white;
}

.div {
	margin: 10px;
}

.type_reimb {
	padding: 8px 8px 8px 8px;
	font-size: 24px;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: #32A5CE;
	border: none;
	border-radius: 8px;
	margin: 15px 0px 0px 0px;
}

.type_reimb:hover {
	background-color: #ddd
}

.type_reimb:active {
	background-color: #32A5CE;
	box-shadow: 0 5px white;
	transform: translateY(4px);
}
</style>
</head>
<body style="background-color: black;">
	<div class="font">
		<div align="center">
			<div class="div">
				<form action="pastTicket.jsp" method="post">
					<table>
						<tbody>
							<tr>
								<th>Employee ID</th>
							</tr>
							<tr>
								<td>Eid :</td>
								<td><input type="number" name="eid" required="required">
								</td>
							</tr>
							<tr>
								<td align="center"><input class="type_reimb"
									style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; color: White;"
									type="submit" value="View Tickets"></td>
							</tr>

						</tbody>
					</table>
				</form>
				<br> <br>
				<h3>Upload Your Receipt(s)</h3>
			</div>
			<div class="file-upload">
				<input class="file-upload__input" type="file" name="myFile[]"
					id="myfile" multiple />
				<button class="file-upload__button" type="button">Choose
					File(s)</button>
				<span class="file-upload__label"></span>
			</div>

			<script>
				Array.prototype.forEach.call(document
						.querySelectorAll('.file-upload__button'), function(
						button) {
					const hiddenInput = button.parentElement
							.querySelector('.file-upload__input');
					const label = button.parentElement
							.querySelector('.file-upload__label');
					const defaultLabelText = 'No file(s) selected';

					//Set Default Text for label
					label.textContent = defaultLabelText;
					label.title = defaultLabelText;

					button.addEventListener('click', function() {
						hiddenInput.click();
					});
					hiddenInput.addEventListener('change', function() {
						const filenameList = Array.prototype.map.call(
								hiddenInput.files, function(file) {
									return file.name;
								});
						label.textContent = filenameList.join(', ')
								|| defaultLabelText;
						label.title = label.textContent;
					});
				});
			</script>
			<br> <br>

			<form action="submittedReimb.jsp" method="POST">

				<table>
					<tbody>
						<tr>
							<th>Reimbursement Type</th>
						</tr>
						<tr>
						<tr>
							<td>Lodging</td>
							<td><input type="checkbox" name="type" value="Lodging">
							</td>
						</tr>
						<tr>
							<td>Travel</td>
							<td><input type="checkbox" name="type" value="Travel">
							</td>
						</tr>
						<tr>
							<td>Food</td>
							<td><input type="checkbox" name="type" value="Food">
							</td>
						</tr>
						<tr>
							<td>Other</td>
							<td><input type="checkbox" name="type" value="Other">
							</td>
						</tr>
						<tr>
						<tr>
							<td>Total Amount:</td>
							<td><input type="text" name="amount" required="required">
							</td>
						</tr>

						<tr>
							<td>Confirm Password :</td>
							<td><input type="password" name="pwd" required="required">
							</td>
						</tr>
						<tr>
							<td><input class="type_reimb"
								style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; background-color: #32A5CE"
								; color: White;"
									type="submit" value="Submit"></td>
						</tr>

					</tbody>
				</table>
			</form>

			<br>


			<sql:setDataSource var="conn" user="root" password="Softw@re23!"
				driver="com.mysql.cj.jdbc.Driver"
				url="jdbc:mysql://localhost:3306/p1" />

			<sql:query dataSource="${conn}" var="rs">select * from employee where username='${param.username}' and password='${param.pwd}';</sql:query>

			<c:forEach var="user" items="${rs.rows}">
				<c:out value="Hello ${user.username}, Your Login was Successfull!!!"></c:out>
				<button class="custom-button">
					<a style="text-decoration: none; color: #32A5CE"
						; href="index.html"><strong>Home</strong></a>
				</button>
				<button class="custom-button">
					<a style="text-decoration: none; color: #32A5CE"
						; href="index.html"><strong>Logout</strong></a>
				</button>
			</c:forEach>
			<%-- 	<c:otherwise> --%>
			<%-- 		<c:out value="Error While Logging In. Pls Check the Credentials!!!"></c:out> --%>
			<%-- 	</c:otherwise> --%>
		</div>
	</div>
</body>
</html>
