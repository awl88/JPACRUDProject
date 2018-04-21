<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create the next Superman Form!</title>
</head>
<body>
	<div>
		<h1>CREATE A BEING OF IMMENSE POWER<br>... or not</h1>

		<form action="createSuperHeroPage.do" method="POST">
			Name: <input type="text" name="name" /> <br> Power: <input
				type="text" name="power" /> <br> Weakness: <input type="text"
				name="weakness" /> <br> active: <select name="active">
				<option value="ACTIVE">ACTIVE</option>
				<option value="NONACTIVE">NONACTIVE</option>
				<option value="DECEASED">DECEASED</option>
			</select> <br> <input type="submit" value="CREATE ME!">
		</form>
	</div>
</body>
</html>