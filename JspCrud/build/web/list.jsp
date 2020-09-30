<%-- 
    Document   : list
    Created on : May 30, 2019, 4:52:52 PM
    Author     : Pujan Chaulagain
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="DBConnection.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student List</h1>
        <hr>
        <table>
            <tr>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Faculty</th>
            <th>Gender</th>
            <th></th>
            <th></th>
            </tr>
            <%
                PreparedStatement ps=con.prepareStatement("select * from jspopn");
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    %>
                    <tr>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><a href="edit.jsp?id=<%=rs.getInt(1)%>">Edit</a>||</td><td><a href="delete.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                    </tr>
                    <%
                }
            
            %>
        </table>
    </body>
</html>
