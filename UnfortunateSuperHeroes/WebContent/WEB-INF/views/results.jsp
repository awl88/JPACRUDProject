<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Super Hero finder results!!!</title>
</head>
<body>

	<c:choose>
		<c:when test="${!empty superhero}">
			<div>
				<h1>${superhero.name}</h1>
				<ul>
					<p>P-P-P-POWER: ${superhero.power}</p>
					<p>weakness: ${superhero.weakness}</p>
					<p>Activity Level: ${superhero.active}</p>
				</ul>
				<form action="updateSuperHero.do" method="GET">
					<input type="submit" value="Update ${superhero.name}" />
					<input type="hidden" name="shid" value="${superhero.id}"/>
				</form>
				<form action="deleteSuperHero.do" method="POST">
					<input type="submit" value="DELETE ${superhero.name}" />
					<input type="hidden" name="shid" value="${superhero.id}"/>
				</form>
			</div>
		</c:when>
		<c:otherwise>
			<c:forEach var="s" items="${allSuperheroes}">
				<div>
					<a href="getSuperHeroById.do?shid=${s.id}"><h1>${s.name}</a></h1>
					<ul>
						<p>P-P-P-POWER: ${s.power}</p>
						<p>weakness: ${s.weakness}</p>
						<p>Activity Level: ${s.active}</p>
					</ul>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>

</body>
</html>