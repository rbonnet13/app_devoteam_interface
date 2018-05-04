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

        <form:form commandName="newMember" id="reg">
            <h2>Inscription </h2>
            <table>
                <tbody>
                <tr>
                    <td><form:label path="name">Nom:</form:label></td>
                    <td><form:input path="name"/></td>
                    <td><form:errors class="invalid" path="name"/></td>
                </tr> 
                <tr>
                    <td><form:label path="email">Email:</form:label></td>
                    <td><form:input path="email"/></td>
                    <td><form:errors class="invalid" path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="phoneNumber">Telephone:</form:label></td>
                    <td><form:input path="phoneNumber"/></td>
                    <td><form:errors class="invalid" path="phoneNumber"/></td>
                </tr>
                <tr>
                    <td><p style="color: red">${error}</p></td>
                </tr>
                <tr>
                   <td><p href="src/main/webapp/views/login.jsp/" >Connexion</p></td>
                </tr>
                </tbody>
            </table>
            <table>
                <tr>
                    <td>
                        <input type="submit" value="Register" class="register"/>
                        <input type="reset" value="Cancel" class="cancel"/>
                    </td>
                </tr>
            </table>
        </form:form>
        <h2>Membres actifs</h2>
        <c:choose>
            <c:when test="${members.size()==0}">
                <em>Aucun membre actif</em>
            </c:when>
            <c:otherwise>
                <table id="membersTable" class="simpletablestyle">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nom</th>
                            <th>Email</th>
                            <th>Phone #</th>
                            <th>REST URL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${members}" var="member">
                            <tr>
                                <td>${member.id}</td>
                                <td>${member.name}</td>
                                <td>${member.email}</td>
                                <td>${member.phoneNumber}</td>
                                <td><a href="<c:url value="/rest/members/${member.id}"/>">/rest/members/${member.id}</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <table class="simpletablestyle">
                    <tr>
                        <td>
                            REST URL for all members: <a href="<c:url value="/rest/members"/>">/rest/members</a>
                        </td>
                    </tr>
                </table>
            </c:otherwise>
        </c:choose>
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
