<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Unfortunate Super Heroes</title>
</head>
<body>
	<h1>Welcome to the Internet's Super Hero Graveyard!</h1>
	<form action="getSuperHeroById.do" method="GET">
		<input type="text" name="shid" /> 
		<input type="submit" value="Find Super Hero!" />
	</form>
	<form action="getAllSuperHeroes.do" method="GET">
		<input type="submit" value="Get ALL Super Heroes!" />
	</form>
	<form action="createSuperHero.do" method="GET">
		<input type="submit" value="Create a Super Hero!" />
	</form>
</body>
</html>