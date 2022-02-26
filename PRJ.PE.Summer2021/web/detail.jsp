<%-- 
    Document   : detail
    Created on : Jan 18, 2022, 8:13:02 AM
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

        <h1>Entry's info</h1>
        <p>EntryID: ${e.getEntryID()}</p>
        <p>EntryTitle: ${e.title}</p>
        <p>EntryContent: ${e.content}</p>
        <p>Date modified: ${e.dateModified}</p>

        <h1>Comment of the entry</h1>
        <table>
            <thead>
                <tr>
                    <th>Comment ID</th>
                    <th>Comment Content</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${listC}" >
                    <tr>
                        <td>${c.getCommentID()}</td>
                        <td>${c.getCommentContent()}</td>
                        <td><a href="delete?cid=${c.getCommentID()}">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>
