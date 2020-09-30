<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@include file="DBConnection.jsp"%>
<%

PreparedStatement pstmt=con.prepareStatement("delete from jspopn where id=?");
pstmt.setInt(1, Integer.parseInt(request.getParameter("id")));
int r=pstmt.executeUpdate();
if(r>0)
{
    response.sendRedirect("list.jsp");
}



%>