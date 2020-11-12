<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Product Application</title>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="error" scope = "session" value = "${errorcode}" />
	<c:if test ="${error == 101}">
		<p align="center" >Barcode already exists !!!<p>  
		
	</c:if>
	<div align="center">
			<table border="2" cellpadding="8">
            <caption>
            	<h1>Product Summary </h1>
            </caption>
            <tr>
                <th>Barcode</th>
                <th>Name</th>
                <th>Color</th>
                <th>Information</th>
                
            </tr>
        	<tr>
        	    <c:set var="prod" scope = "session" value = "${proddal}" />  
            	<td><c:out value="${prod.id}" /></td>
                <td><c:out value="${prod.name}" /></td>
                <td><c:out value="${prod.color}" /></td>
                <td><c:out value="${prod.info}" /></td>
 
            </tr>
            
			</table>
	</div>
</body>
</html>