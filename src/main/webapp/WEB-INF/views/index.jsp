<%--
  Created by IntelliJ IDEA.
  User: travis
  Date: 7/21/2017
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admin Report</title>
</head>
<body>
<h1>Admin Report</h1>
<a href="/newuser">Add User</a> | <a href="/"> Admin Report</a>
<table border="1">
    <tr>
        <td>First Name</td>
        <td>Last Name</td>
        <td>Address 1</td>
        <td>Address 2</td>
        <td>City</td>
        <td>State</td>
        <td>Zip</td>
        <td>Country</td>
        <td>Date Added</td>

    </tr>
    <c:forEach var="users" items="${userlist}">
        <tr>
            <td>
                    ${users.firstName}
            </td>
            <td>
                    ${users.lastName}
            </td>
            <td>
                    ${users.address1}
            </td>
            <td>
                    ${users.address2}
            </td>
            <td>
                    ${users.city}
            </td>
            <td>
                    ${users.state}
            </td>
            <td>
                    ${users.zip}
            </td>
            <td>
                    ${users.country}
            </td>
            <td>
                    ${users.dateEntered}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
