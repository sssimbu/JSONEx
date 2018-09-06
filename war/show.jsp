<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.json.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%		Test obj=new Test();

HashMap<String,String> newobj=(HashMap<String,String>) obj.ShowTest(); 


for(Map.Entry m:newobj.entrySet()){  
	   System.out.println(m.getKey()+" "+m.getValue());  
	  } 
%>



</body>
</html>