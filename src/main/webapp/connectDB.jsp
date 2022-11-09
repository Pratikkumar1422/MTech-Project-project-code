<%@ page import = "java.sql.*"%>
<%
String fullname = request.getParameter("fname");
String pwd = request.getParameter("password");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String gender = request.getParameter("gender");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDB","root","");
	PreparedStatement ps = com.prepareStatement("INSERT INTO Users (FullName,Phone,Gender,Email,Password) VALUES(?,?,?,?,?)");
	ps.setString(1,fullname);
	ps.setString(2,phone);
	ps.setString(3,gender);
	ps.setString(4,email);
	ps.setString(5,pwd);
	int x = ps.executeUpdate();
	if(x > 0){
		response.sendRedirect("success.jsp?");
	}else{
		response.sendRedirect("fail.jsp?");
	}
} catch (Exception e) {
	out.println(e);
}

%>