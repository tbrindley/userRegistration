<%--
  Created by IntelliJ IDEA.
  User: Travis Brindley
  Date: 9/1/2017
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <title>Travis Brindley - Admin Report</title>
    <!-- IMPORTANT!!!! This sets the page to the width of the device it is being viewed on.  Also sets zoom level -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <div class="page-header">
    <h1 align="center">Admin Report</h1>
    </div>
    <ul class="nav nav-pills">
        <li role="presentation" class="active"><a href="/">Admin Report</a></li>
        <li role="presentation"><a href="/newuser">Add user</a></li>
    </ul>


<table border="1" class="table table-striped">
    <thead class="thead-default">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address 1</th>
        <th>Address 2</th>
        <th>City</th>
        <th>State</th>
        <th>Zip</th>
        <th>Country</th>
        <th>Date Added</th>
    </tr>
    </thead>
    <tbody>
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
    </tbody>
</table>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

</body>
</html>
