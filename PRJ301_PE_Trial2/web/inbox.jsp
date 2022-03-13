<%-- 
    Document   : inbox
    Created on : Mar 13, 2022, 5:18:53 PM
    Author     : tuan anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <c:if test="${sessionScope.currentUser == null}">
            <h1 style="color: red;" >${msgF}</h1>
        </c:if>

        <c:if test="${sessionScope.currentUser != null}">
            <a href="#" >Create Message</a>

            <table border="1">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>From</th>
                        <th>At</th>
                        <th>Seen</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listM}" var="m" >
                        <tr>
                            <td><a href="${pageContext.request.contextPath}/message?id=${m.messageid}" >${m.messagetitle}</a></td>
                            <td>${m.from}</td>
                            <td>${m.messagetime}</td>
                            <td>
                                ${m.isread?"<img src='img/eye.png'>":""}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>


    </body>
</html>
