<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 
<!doctype html>

<html class="fixed">
<head>
<title>DSR</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="Idco::ERP Systems">
	<meta name="keywords" content="Idco::ERP Systems, Aashdit Technologies">
	<meta name="author" content="Aashdit Technologies">

	<!-- Favicon -->
	<link rel="shortcut icon" href="resources/images/favicon.png">	
	
	<!-- Vendor CSS -->
	<link rel="stylesheet" href="resources/assets/vendor/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/assets/vendor/font-awesome/css/font-awesome.css" />
	<link rel="stylesheet" href="resources/assets/vendor/magnific-popup/magnific-popup.css" />
	<link rel="stylesheet" href="resources/assets/vendor/bootstrap-datepicker/css/datepicker3.css" />
	<link rel="stylesheet" href="resources/assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.css" />
	<link rel="stylesheet" href="resources/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" href="resources/assets/stylesheets/theme.css" />

	<!-- Skin CSS -->
	<link rel="stylesheet" href="resources/assets/stylesheets/skins/default.css" />

	<!-- Theme Custom CSS -->
	<link rel="stylesheet" href="resources/assets/stylesheets/theme-custom.css">
	<link rel="stylesheet" href="resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
   	<link href="resources/assets/vendor/multi_select/css/multi-select.css" media="screen" rel="stylesheet" type="text/css">
	<!-- Head Libs -->
	<script src="resources/assets/vendor/modernizr/modernizr.js"></script>
	<script src="resources/assets/vendor/jquery/jquery.js"></script>
</head>

<body>	
	
	<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	     
	<c:choose>    
		<c:when test="${pageContext.request.userPrincipal.name != null}">
			<section class="body">
				<!-- start: header -->
				<tiles:insertAttribute name="header" /> 
				<!-- end: header -->

				<div class="inner-wrapper">			
	
					<tiles:insertAttribute name="leftMenu" /> 
	
					<!-- Body -->
					<tiles:insertAttribute name="body" />
					<!-- Body end-->
				</div>
			</section>
		</c:when>
		<c:otherwise> 	
	
	    <tiles:insertAttribute name="body" />
		</c:otherwise>
	</c:choose> 

	<!-- Vendor -->

	<script src="resources/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
	<script src="resources/assets/vendor/bootstrap/js/bootstrap.js"></script>
	<script src="resources/assets/vendor/nanoscroller/nanoscroller.js"></script>
	<script src="resources/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="resources/assets/vendor/magnific-popup/magnific-popup.js"></script>
	<script src="resources/assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
	<script src="resources/assets/vendor/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
	<script src="resources/assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
	<script src="resources/assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
	<script src="resources/assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
	<!-- Theme Base, Components and Settings -->
	<script src="resources/assets/javascripts/theme.js"></script>
	<script src="resources/assets/javascripts/bootbox.min.js"></script>
	<!-- Theme Custom -->
	<script src="resources/assets/javascripts/theme.custom.js"></script>
	
	<!-- Theme Initialization Files -->
	<script src="resources/assets/javascripts/theme.init.js"></script>

	<!-- Examples -->
	<script src="resources/assets/javascripts/tables/examples.datatables.default.js"></script>
	<script src="resources/assets/javascripts/tables/examples.datatables.row.with.details.js"></script>

</body>
</html>