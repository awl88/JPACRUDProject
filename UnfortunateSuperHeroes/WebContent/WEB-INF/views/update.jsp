<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>UPDATE THIS WEAKLING</h1>

		<form action="updateSuperHeroPage.do" method="POST">
		<input type="hidden" name="shid" value="${sh.id}"/>
			Name: <input type="text" name="name" value="${sh.name}"/> <br> 
			Power: <input type="text" name="power" value="${sh.power}"/> <br> 
			Weakness: <input type="text" name="weakness" value="${sh.weakness}"/> <br> 
			active: <select name="active">
				<option value="ACTIVE">ACTIVE</option>
				<option value="NONACTIVE">NONACTIVE</option>
				<option value="DECEASED">DECEASED</option>
			</select> <br> <input type="submit" value="UPDATE ME!">
		</form>
	</div>
</body>
</html>