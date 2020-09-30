<%@page import="java.sql.*" %>
<%@include file= "DBConnection.jsp"%>

<%

PreparedStatement pstmt=con.prepareStatement("update jspopn set name=?,address=?,phone=?,faculty=?,gender=? where id=?");
pstmt.setString(1, request.getParameter("name"));
pstmt.setString(2, request.getParameter("address"));
pstmt.setString(3, request.getParameter("phone"));
pstmt.setString(4, request.getParameter("select"));
pstmt.setString(5, request.getParameter("gender"));
pstmt.setString(6, request.getParameter("id"));
int r=pstmt.executeUpdate();
if(r>0)
{
    response.sendRedirect("list.jsp");
    
}
else
{
    response.sendRedirect("list.jsp");
   
}




%>