<%-- 
    Document   : subject
    Created on : Feb 27, 2022, 10:25:08 AM
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
        
        <table border="1" style="border-color: greenyellow;">
            <c:forEach items="${sessionScope.data}" var="s" >
                <tbody>
                    <tr style="color: red;">
                        <td>Level:${s.level}<td>
                        ${s.title}
                    </tr>
                    <c:forEach items="${s.materials}" var="m" >
                        <tr>
                            <td></td>
                            <td>${m.content} ${m.inCurriculum?"is in Curriculum":""} <td>
                        </tr>
                    </c:forEach>
                </tbody>
            </c:forEach>
        </table>

    </body>
</html>
