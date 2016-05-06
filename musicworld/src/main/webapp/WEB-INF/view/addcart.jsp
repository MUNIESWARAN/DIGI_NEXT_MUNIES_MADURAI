<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myAlbum">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD TO CART Page MusicOnline.com</title>

<link rel="stylesheet" 	href="/resources/bootstrap/css/bootstrap.min.css" />
<link href="resources/includes/css/bootstrap-glyphicons.css" 	rel="stylesheet">
<script src="<c:url value="/resources/includes/js/jquery-1.8.2.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/angular-1.5.5/angular.min.js" />"></script>


</head>
<body><div class="container" id="main">Welcome to Cart <div ng-app="myAlbum" ng-controller="namesCtrl">

<form>
				 <input type="hidden" ng-model="search" value="<%=request.getParameter("id")%>">
			</form> 
			
<table>
<tr><td><img src="resources/images/<%=request.getParameter("id")%>.jpg"/></tr>

<tr ng-repeat="resource in names | filter:search">
					<td>{{ resource.track }}</td>
					<td>{{ resource.artists}}</td></tr>
					
</table>



<script>
			${data}
	
				angular.module('myAlbum', []).controller('namesCtrl', function($scope) {
					$scope.names=${data};  
					$scope.orderByMe = function(x) {
						$scope.myOrderBy = x;
					}
				});
			 	
					
			</script>

</div></div>
</body>
</html>