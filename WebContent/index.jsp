<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Product Application</title>
</head>
<body>
	<center>
		<h1>Product Database</h1>
        
	</center>
    <div align="center">
     
			<form action="insert" method="post">
        
        <table border="1" cellpadding="5">
            <caption>
            	<h2>Add New Product </h2>
            </caption>
        		          
            <tr>
                <th>Barcode(max 10 digits): </th>
                <td>
                	<input type="text" name="barcode" size="45"
                			value="<c:out value='${prod.id}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Product name: </th>
                <td>
                	<input type="text" name="name" size="45"
                			value="<c:out value='${prod.name}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Product color: </th>
                <td>
                	<input type="text" name="color" size="45"
                			value="<c:out value='${prod.color}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Product info: </th>
                <td>
                	<input type="text" name="info" size="60"
                			value="<c:out value='${prod.info}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
