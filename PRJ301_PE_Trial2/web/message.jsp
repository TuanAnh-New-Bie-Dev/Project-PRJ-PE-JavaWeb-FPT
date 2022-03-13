<%-- 
    Document   : message
    Created on : Mar 13, 2022, 6:19:43 PM
    Author     : tuan anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>From</td>
                    <td><input readonly type="text" value="${m.from}" /></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><input readonly type="text" value="${m.messagetitle}" /></td>
                </tr>
                <tr>
                    <td>Created Time</td>
                    <td><input readonly type="text" value="${m.messagetime}" /></td>
                </tr>
                <tr>
                    <td>Content</td>
                    <td><input readonly type="text" value="${m.messagecontent}" /></td>
                </tr>
            </tbody>
        </table>

        
    </body>
</html>
