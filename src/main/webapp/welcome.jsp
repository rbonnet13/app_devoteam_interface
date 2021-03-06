<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/style.css"/>"/>
        
        <title>Bienvenu</title>
    </head>
<body class="body-app">
    <div id="container">
		<div id="myNav" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		  <div class="overlay-content">
			  <a href = <c:url value = "/views/index.jsp"/>>Accueil</a>
			  <a href=<c:url value = "/views/application.html"/>>Applications</a>
			  <a href="#contact">Contact</a>
			  <a href="https://www.devoteam.com">Devoteam.com</a>
		</div>
		</div>
		<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu DevoApp</span>
		
		<script>
		function openNav() {
		    document.getElementById("myNav").style.width = "100%";
		}
		
		function closeNav() {
		    document.getElementById("myNav").style.width = "0%";
		}
		</script>
     	<div class="img-devo">
        	<img src="<c:url value="/static/resources/gfx/devoteam.jpg"/>" height="250" width="550"/>
    	</div>
        <table>
            <tr>
                <td>Bienvenu sur l'App devoteam</td>
            </tr>
        </table>
     </div>
    </body>
    </html>