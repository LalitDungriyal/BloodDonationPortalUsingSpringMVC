<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.util.*" %>

<%@ page import="java.io.ByteArrayInputStream" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.io.File" %>
<%@ page import="javax.imageio.ImageIO" %>

<%! String name; String firstname,lastname; 
	byte[] image;
	BufferedImage bImage2;
	String b64;
%>

<% 
	HttpSession ses=request.getSession();
	name=(String)ses.getAttribute("logininfo");
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/bloodportal";
		String username = "root";
		String password = "root";
		String query = "select * from user where username = "+"\""+name+"\"";
		Connection conn = DriverManager.getConnection(url, username, password);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		
		while(rs.next())
		{
			firstname=rs.getString("fname");
			lastname=rs.getString("lname");
		}
		
		firstname=firstname.length() == 0 ? firstname
			    : firstname.length() == 1 ? firstname.toUpperCase()
			    	    : firstname.substring(0, 1).toUpperCase() + firstname.substring(1).toLowerCase();
		
		lastname=lastname.length() == 0 ? lastname
			    : lastname.length() == 1 ? lastname.toUpperCase()
			    	    : lastname.substring(0, 1).toUpperCase() + lastname.substring(1).toLowerCase();
		
		query = "select * from userinfo where username = "+"\""+name+"\"";

		Connection conn2 = DriverManager.getConnection(url, username, password);
		Statement stmt2 = conn2.createStatement();
		ResultSet rs2 = stmt2.executeQuery(query);
		
		while(rs2.next())
		{
			image=rs2.getBytes("image");
		}
		
		b64 = javax.xml.bind.DatatypeConverter.printBase64Binary(image);
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	
%>