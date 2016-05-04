<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"> </script>
<script src="resources/includes/js/jquery-1.8.2.min.js"></script>
<script>

    $(function() {


   var people = [];

   $.getJSON('data.json', function(data) {
       $.each(data.catg, function(i, f) {
          var tblRow = "<tr>" + "<td>" + f.track +  "</td>" + "</tr>"
           $(tblRow).appendTo("#userdata tbody");
     });

   });

});
</script>
</head>
<body> 
<%=request.getParameter("catg") %>




 <div class="wrapper">
<div class="profile">
   <table id= "userdata" border="2">
  <thead>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email Address</th>
            <th>City</th>
        </thead>
      <tbody>

       </tbody>
   </table>

</div>
</div>
 












	<footer> </footer>

	<!-- All Javascript at the bottom of the page for faster page loading -->
	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>
	<!-- If no online access, fallback to our hardcoded version of jQuery -->

	<script>
		window.jQuery
				|| document
						.write('<script src="resources/includes/js/jquery-1.8.2.min.js"><\/script>')
	</script>

	<!-- Bootstrap JS -->
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- Custom JS -->
	<script src="resources/includes/js/script.js"></script>

</body>
</html>