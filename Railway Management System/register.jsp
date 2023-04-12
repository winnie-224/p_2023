<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%

  if(request.getParameter("rusername")!=null && request.getParameter("rpass")!=null)
  {
   Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Shree");  	   
       PreparedStatement stmt=con.prepareStatement("insert into registrations(rusername,rpass,ConfirmPass,SecurityQuestion,Answer,fname,lname,Gender,DateofBirth,Occupation,EmailId,MobileNo,Address,PinCode,City,State)values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
	   stmt.setString(1,request.getParameter("rusername"));
	   stmt.setString(2,request.getParameter("rpass"));
	   stmt.setString(3,request.getParameter("confirmPass"));
	   stmt.setString(4,request.getParameter("SecurityQuestion"));
	   stmt.setString(5,request.getParameter("Answer"));
	   stmt.setString(6,request.getParameter("fname"));
	   stmt.setString(7,request.getParameter("lname"));
	   stmt.setString(8,request.getParameter("Gender"));
	   stmt.setString(9,request.getParameter("DD") + "-" + request.getParameter("Month") + "-" + request.getParameter("Year"));
       stmt.setString(10,request.getParameter("Occupation"));
	   stmt.setString(11,request.getParameter("EmailId"));	   
	   stmt.setString(12,request.getParameter("MobileNo"));
	   stmt.setString(13,request.getParameter("Address"));
	   stmt.setString(14,request.getParameter("pincode"));
	   stmt.setString(15,request.getParameter("City"));
	   stmt.setString(16,request.getParameter("State"));
	   stmt.execute();   
	 response.sendRedirect("suceessful.jsp");
  }

%>

</body>
</html>