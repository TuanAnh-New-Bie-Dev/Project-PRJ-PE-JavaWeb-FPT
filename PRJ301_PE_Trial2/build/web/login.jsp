<%-- 
    Document   : login
    Created on : Mar 13, 2022, 4:58:00 PM
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
        
        <form action="login" method="post" >
            <h1 style="color: red;" >${msgF}</h1>
            <h1 style="color: greenyellow;" >${msgS}</h1>
            <table border="1">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input name="username" type="text" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input name="password" type="password" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>

            
        </form>
        
    </body>
</html>
