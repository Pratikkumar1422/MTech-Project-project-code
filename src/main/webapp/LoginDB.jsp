<%@ page import = "java.sql.*"%>


<%
String pswrd = request.getParameter("password");
String eml = request.getParameter("email");
int flag=0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDB","root","");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select Email, Password from Users");
	String uid, psd;
	
	while(rs.next()){
		uid = rs.getString(1);
		psd = rs.getString(2);
		if(eml.equals(uid) && pswrd.equals(psd)){
			response.sendRedirect("dashboard.jsp");
			flag=1;
			break;
		}
	}
	if(flag==0){
		response.sendRedirect("fail.jsp");
	}
	con.close();
} catch (Exception e) {
	out.println(e);
}

%>