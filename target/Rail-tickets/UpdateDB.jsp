<%@ page import = "java.sql.*"%>


<%
String pd = request.getParameter("newpassword");
String uid = request.getParameter("email");
String ph = request.getParameter("phone");
int flag=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDB","root","");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from Users where Email='"+uid+"' and Phone='"+ph+"'");
	
	while(rs.next()){
		flag=1;
		stmt.executeUpdate("update Users set Password='"+pd+"' where Email='"+uid+"'");
		response.sendRedirect("update.jsp");
	}
	if(flag==0){
		response.sendRedirect("fail.jsp?");
	}
	con.close();
} catch (Exception e) {
	out.println(e);
}

%>