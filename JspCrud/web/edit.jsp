<%-- 
    Document   : edit
    Created on : Jun 1, 2019, 8:29:51 PM
    Author     : Pujan Chaulagain
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="DBConnection.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
            
    <center>
        <form action="_edit.jsp?id=<%=request.getParameter("id")%>" method="POST">
        
            <%
            PreparedStatement pstmt=con.prepareStatement("select * from jspopn where id=?");
            pstmt.setString(1, request.getParameter("id"));
            ResultSet rs=pstmt.executeQuery();
            if(rs.next())
            {
                %>
                <table>
                    <h1>Student Registration</h1>
            <hr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="<%=rs.getString(2)%>"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" value="<%=rs.getString(3)%>"></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><input type="text" name="phone" value="<%=rs.getString(4)%>"></td>
            </tr>
            <tr>
                <td>Faculty</td>
                <td>
                    <select name="select">
                    <option value="Science" <%=rs.getString(5).equalsIgnoreCase("Science")?"selected":""%>>Science</option>
                    <option value="Business" <%=rs.getString(5).equalsIgnoreCase("Business")?"selected":""%>>Business</option>
                    <option value="Humanities" <%=rs.getString(5).equalsIgnoreCase("Humanities")?"selected":""%>>Humanities</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td>Gender</td>
                <td><input type="radio" name="gender" value="Male" <%=rs.getString(6).equalsIgnoreCase("Male")?"checked":""%>>Male
                    <input type="radio" name="gender" value="Female" <%=rs.getString(6).equalsIgnoreCase("Female")?"checked":""%>>Female
                </td>
                
            </tr>
            <tr>
                    <td></td>
                    <td><input type="submit" value="Update"></td>
                </tr>
                
                
                
           <% }
            %>
            
        </table>
        </form>
        <a href="list.jsp">Student list</a>
    </center> 
        ${param.msg}
    </body>
</html>
