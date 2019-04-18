<%@page import="dev.sgp.entite.VisiteWeb"%>
<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - Statistiques</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/styles/bootstrap-4.3.1-
dist/css/bootstrap.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet media=" screen" type="text/css"
	href="<%=request.getContextPath()%>/styles/style.css" />
</head>
<body>

	<h1>Statistiques</h1>
	<ul>
		<%
			List<VisiteWeb> listeVisites = (List<VisiteWeb>) request.getAttribute("listeVisites");
			for (VisiteWeb v : listeVisites) {
		%>
		<li><%= v %></li>
		<%
			}
		%>
	</ul>

</body>
</html>