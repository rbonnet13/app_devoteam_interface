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
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
</head>

<body>
<div id="container">
    <div class="dualbrand">
        <img src="<c:url value="/static/resources/gfx/devoteam.jpg"/>" height="130" width="300"/>
    </div>
    <div id="content">
        <h1>Welcome to DevoApp!</h1>

        <div>
            <p>Bienvenu sur notre service d'application.</p>
        </div>
        <div>
          <table>
            <tr>
                <td><a href="login">Login</a>
                </td>
                <td><a href="register">Register</a>
                </td>
            </tr>
        </table>
        </div>
		<div id="aside">
        <p>Rester en contact avec nos �quipes.</p>
        <ul>
            <li><a href="https://script.google.com/a/macros/devoteam.com/s/AKfycbx-QrWfN1tycniy-GYbWA3_yGW44YZ_yuIu5Iql7ARrzDCRjb8/exec">IT PORTAL</a></li>
            <li><a href="https://france.devoteam.com/">DEVOTEAM</a></li>
             <li><a href="../views/application.html">Application</a></li>
        </ul>
    </div>
    <div id="footer">
        <p>
            Ce projet � �t� developp� par devoteam.<br/>
        </p>
    </div>
</div>
</body>
</html>
