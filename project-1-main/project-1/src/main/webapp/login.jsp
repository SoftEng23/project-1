<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Manager Login</title>
<link
	href="data:image/x-icon;base64,AAABAAEAEBAAAAEACABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAB9fXsATEpGAFhVUACEmMQAlafTAKysqwBgWVUAi46NAGdjYgBNWoUAJSIsAFpXUwBbV1MAUUxJADMrKwBzhLMAfXt5AHqUyABXZIoAd4q7AHBycgDZ2dkAorr5AFhVUQBUUUwAXGmVAHZ1cgB5mtkAT1JSAMnIyACFpOYAHBojAGFeWQBRT0oAUk9KAJOq3QCUrOgAhqbpAD5BQQBUUU0AX1xXAFVRTQA3MC8AOzc0AEI7OQCBnt8AZHiuAN3e3QBrdZUAiKXkAEE9PABHREEAUk9LAFlTUABdWlUAU09LAF5aVQBDQDwAepnVAHyXygBZVlAAlafWAJKq7wBfXFgAVVFOAJmt3gAeFhcANjMwAFtYUwBRTUkAMywrAFxYUwBiYmAAXVhTAHp4dACTsO8ASERCAF1aVgB1jb4AWFZRAE5LRwBZVlEAVlFPAGBcWQBGQkAAy8zQAFtYVABwir8ATUlFAFdUTwBcV1cAnZybAHJzcwCvtcgAWVZSAE5RUAA/PDkAWlZSAFVSTQCGodkA29zdAF1iYgCOos4AUlBLAFNQSwAQCgoA/v/+AKinpgB1kMgAPDU1AEdDPwCDgX4AXFlTAPPy8gBJRUIAXltWAHySwwB8jsYAcoHKAP///wBaV1EAaXecABQQEwBJTU0AVVVPAFxZVABSTkoAXVlUAP39/QD3+PsAWFRSAF5bVwBPTEgAWVdSAFpXUgBAPTkAW1dSAI+cwADL0uQA2dnYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhDKEUUQ8J30cfVZ9SXArYDNUCzgLNwxiZXOGTSh/Q4dYfFY2R1ZWJntzP14gNlA5SiF9YVkLRFxffT+Dc4gCNC9QKTdoF1MFB0g2hU9SGAB3gHI3NX5rFRRbQHhFDWd3d3d3cQFMVRs7HW4iEHd3d3d3d3d3bxMJGYmCd3d3d3d3d3d3d2oePjp5d3d3d3d3d3d3d3djMXZsTnd3d3d3d3d3d3eBJEslFnWKd3d3d3d3d3d3ZFcuLQ90XXd3d3d3d3d3d21mQSMwElp3d3d3d3d3d3cGAwQ9EQosd3d3d3d3d3d3i2lpH3pCGnd3d3d3d3d3d3cIKkYOb3d3d3d3dwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
	rel="icon" type="image/x-icon" />
	<style>
h5 {
align-items: center;
align:center;
}
</style>
</head>
<body style="background-color: #00b7ff;">

	<h2>
		<marquee align="center">
			<strong>Welcome to the Reimbursement Portal</strong>
		</marquee>
	</h2>
	<%-- JSP Comment --%>
	<%-- <%= Expression Tag --%>
	<%-- <% scriplet Tag --%>
	<%-- <%@ Directive Tag --%>
	<form action="checkLogin.jsp" method="post">
		<table align="center">
			<tbody>
				<tr>
					<th>Manager Portal</th>
				</tr>
				<tr>
					<td>Username :</td>
					<td><input type="text" name="username" required="required">
					</td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="pwd" required="required">
					</td>
				</tr>
				<tr>
					<td align="center"><input
						style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; background-color: #AA0808; color: White;"
						type="reset" value="Clear"></td>
					<td align="center"><input
						style="padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px; background-color: #AA0808; color: White;"
						type="submit" value="Manager Login"></td>
				</tr>

			</tbody>
		</table>
	</form>
	<h5 align="center">
		<%=new Date()%>
	</h5>
</body>
</html>