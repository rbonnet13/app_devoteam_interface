<%--
    JBoss, Home of Professional Open Source
    Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
    contributors by the @authors tag. See the copyright.txt in the
    distribution for a full listing of individual contributors.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
    <title>DevoApp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>    
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/style.css"/>"/>
    
</head>

<body>
 <div id="container">
 <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
	  <a href="index.jsp">Accueil</a>
	  <a href="#applications">Applications</a>
	  <a href="#contact">Contact</a>
	  <a href="https://www.devoteam.com">DEVOTEAM.COM</a>
</div>
</div>
<div class="img-devo">
        <img src="<c:url value="/static/resources/gfx/devoteam.jpg"/>" style="height:70px; width:180px; float:right;" />
</div>
<script>
function openNav() {
    document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
    document.getElementById("myNav").style.width = "0%";
}
</script>
    <div id="content">
        <h1>Welcome to DevoApp!</h1>
        <div>
            <p>Bienvenu sur notre service d'application.</p>
        </div>
        <div>
          <table>
            <tr>
                 <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
				    <script type="text/javascript">
				      function onSignIn(googleUser) {
				        // Useful data for your client-side scripts:
				        var profile = googleUser.getBasicProfile();
				        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
				        console.log('Full Name: ' + profile.getName());
				        console.log('Given Name: ' + profile.getGivenName());
				        console.log('Family Name: ' + profile.getFamilyName());
				        console.log("Image URL: " + profile.getImageUrl());
				        console.log("Email: " + profile.getEmail());
				
				        // The ID token you need to pass to your backend:
				        var id_token = googleUser.getAuthResponse().id_token;
				        console.log("ID Token: " + id_token);
				      };
				    </script>
            </tr>
        </table>
        </div>
       </div>
		<div id="aside">
	        <p>Rester en contact avec nos équipes.</p>
	        <ul>
	            <li><a href="https://script.google.com/a/macros/devoteam.com/s/AKfycbx-QrWfN1tycniy-GYbWA3_yGW44YZ_yuIu5Iql7ARrzDCRjb8/exec">IT PORTAL</a></li>
	            <li><a href="https://france.devoteam.com/">DEVOTEAM</a></li>
	             <li><a href="../views/application.html">Application</a></li>
	        </ul>
      </div>
      <div id="footer">
        <p>
            Ce projet à été developpé par devoteam.<br/>
        </p>
     </div>
</div>
</body>
</html>