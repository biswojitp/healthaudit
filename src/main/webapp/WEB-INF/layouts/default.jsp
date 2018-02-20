<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/stylesheets/theme.css" rel="stylesheet"></link>
 
<title><tiles:insertAttribute name="title" /></title>
 
</head>
<body>
 
	<tiles:insertAttribute name="header" />
	<br />
	<div class="inner-wrapper">			
	
					<tiles:insertAttribute name="leftMenu" /> 
	
					<!-- Body -->
					<tiles:insertAttribute name="content" />
					<!-- Body end-->
				</div>
	<br />
	
	<br />
	<tiles:insertAttribute name="footer" />
 
</body>
</html>