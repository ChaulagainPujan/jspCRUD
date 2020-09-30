<%-- 
    Document   : index
    Created on : May 30, 2019, 3:50:53 PM
    Author     : Pujan Chaulagain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form action="_JspCrud.jsp" method="POST">
        <table>
            <h1>Student Registration</h1>
            <hr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <td>Faculty</td>
                <td><select name="select"><option></option><option>Science</option><option>Business</option><option>Humanities</option></select></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="radio" name="gender" value="Male">Male<input type="radio" name="gender" value="Female">Female</td>
            </tr>
            <tr>
                    <td></td>
                    <td><input type="submit" value="Insert"></td>
                </tr>
        </table>
        </form>
        <a href="list.jsp">Student list</a>
        ${param.msg}
    </center> 
    </body>
</html>
