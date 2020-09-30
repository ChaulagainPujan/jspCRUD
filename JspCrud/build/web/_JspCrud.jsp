<%@page import="java.sql.PreparedStatement"%>
<%@ include file="DBConnection.jsp"%>
<%

PreparedStatement pstmt=con.prepareStatement("insert into jspopn values(?,?,?,?,?,?)");
pstmt.setString(1, null);
pstmt.setString(2, request.getParameter("name"));
pstmt.setString(3, request.getParameter("address"));
pstmt.setString(4, request.getParameter("phone"));
pstmt.setString(5, request.getParameter("select"));
pstmt.setString(6, request.getParameter("gender"));
int r=pstmt.executeUpdate();
if(r>0)
{
    response.sendRedirect("index.jsp?msg=user inserted successfully");
}
else
{
    response.sendRedirect("index.jsp?msg=user could not be inserted");
}
%>