<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Pub</title>
<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />">
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/angular-1.5.5/angular.min.js" />"></script>
<script>
	document.write('<base href="' + document.location + '" />');
</script>
</head>
<body>
	 <div class="container" id="main">

		<div class="navbar navbar-fixed-top">
			<div class="container">


				<div class="nav-collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="./">Home</a></li>
						<li><a href="aboutus">ABOUT US</a></li>
						<li><a href="#">HELP </a></li>
						<li><a href="signup"><span
								class="glyphicon glyphicon-user"></span> SignUp </a></li>
						<li><a href="login"><span class="glyphicon glyphicon-off"></span>
								Login </a></li>
					</ul>
				</div>

			</div>
			<!-- end Container -->

		</div>
		<!-- Nav bar Ends -->
		
		
		</div>
		 
	<div class="container">
		<div class="jumbotron">
			<h1 style="float: left;"><%=request.getParameter("catg")%></h1>
			<p style="float: left;">Prodcut Selected</p>
			 
		</div>
		<p style="text-align: justify;">
		<div ng-app="myApp" ng-controller="namesCtrl">
			<form>
				<input type="text" ng-model="search">&nbsp&nbsp <span
					class="glyphicon glyphicon-search"></span>
			</form>
			<table class="table table-striped">
				<tr>
					<th>NO</th>
					<th>NAME</th>
					<th>ID</th>
					<th>PRICE</th>
					<th>DESCRIPTION</th>
				</tr>
				<tr ng-repeat="resource in names | filter:search">
					<td>{{ resource.no }}</td>
					<td>{{ resource.name}}</td>
					<td>{{ resource.id }}</td>
					<td>{{ resource.price}}</td>
					<td>{{ resource.description}}</td>
				</tr>
			</table>
			<script>
				angular.module('myApp', []).controller('namesCtrl',
						function($scope) {
							$scope.names = [ {
								no : '1',
								name : 'Guitar express',
								id : '101',
								price : '$120',
								description : 'this is guitar express'
							}, {
								no : '2',
								name : 'Guitar yamaha',
								id : '102',
								price : '$170',
								description : 'this is guitar yamaha'
							}, {
								no : '3',
								name : 'Guitar rx 100',
								id : '103',
								price : '$160',
								description : 'this is guitar  rx 100'
							}, {
								no : '4',
								name : 'Guitar  niit',
								id : '104',
								price : '$220',
								description : 'this is guitar niit'
							}, {
								no : '5',
								name : 'voilon 120',
								id : '105',
								price : '$127',
								description : 'this is voilon 120'
							}, {
								no : '6',
								name : 'voilon 89',
								id : '106',
								price : '$170',
								description : 'this isvoilon 89'
							}, {
								no : '7',
								name : 'voilon speed way',
								id : '107',
								price : '$150',
								description : 'this is voilon speed way'
							}, {
								no : '8',
								name : 'voilon soft',
								id : '108',
								price : '$190',
								description : 'this is voilon soft'
							}, {
								no : '9',
								name : 'drums rock',
								id : '109',
								price : '$520',
								description : 'this isdrums rock'
							}, {
								no : '10',
								name : 'drummer new rock',
								id : '110',
								price : '$170',
								description : 'this is drummer new rock'
							}, {
								no : '11',
								name : 'drummer yamaha',
								id : '111',
								price : '$130',
								description : 'this is drummer yamaha'
							}, {
								no : '12',
								name : 'drummer newyork',
								id : '112',
								price : '$190',
								description : 'this is drummer newyork'
							}, {
								no : '13',
								name : 'drums 104k',
								id : '113',
								price : '$140',
								description : 'this is drums 104k'
							}, {
								no : '14',
								name : 'rock drums rocket',
								id : '114',
								price : '$140',
								description : 'this is rock drums rocket'
							}, ];
							$scope.orderByMe = function(x) {
								$scope.myOrderBy = x;
							}
						});
			</script>
		</div>
		</p>
	</div>
</body>
</html>