<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
	
	<nav id="navv" class="navbar navbar-dark navbar-expand-lg" style="background-color: #0E75EB">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    <!-- Article: https://www.labnol.org/internet/embed-google-photos-in-website/29194/#:~:text=Go%20to%20photos.google.com,code%20for%20your%20selected%20picture.
    website: https://www.labnol.org/embed/google/photos/
     -->
      <img src="https://lh3.googleusercontent.com/peJKs3OoK2Y9mISBgNS8tI8Jb5XOPK8w095Un_BAG4pLfdhgtxSyfbSlbXE2_FcowYTk2IErDdFL12Xb6JAVoitKw9KXVtz7o0hg-ZZGdJbX67icNd9nHEyJZgF5uISiVA1diY6RfA=s180-p-k"  width="50px" >
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="h"> Home </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://www.jkorg.in/index.php/image-gallery" target=”_blank”> Gallery </a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="addDepartment">Add Department</a>
        </li>
      </ul>
      
     <ul class="navbar-nav ms-auto">
      <li class="nav-item">
                  <a style="color: white;" class="nav-link btn btn-sm btn-danger float-right" href="logout" >Logout</a>
      </li>
      
      </ul>

      <br>
      <br>
    </div>
  </div>
</nav>
<!-- _______________________________________NAVBAR________________________________________________ -->

	
	<br>
	<div class="container">
  <div class="row">
  	
    <c:forEach var="func" items="${functions}">
    	<div class="col-3">
		<div class="card" style="width: 18rem;">
  			<div class="card-body">
    		<h5 class="card-title">${func.title}</h5>
    		<p class="card-text"> ${func.description}</p>
    		<a href="showDetails?title=${func.title}" class="btn btn-primary">Show Details</a>
    		<a href="updateForm?fid=${func.id}" class="btn btn-primary">Edit</a>
    		<a onclick = "if (!(confirm('Do you really want to delete this product record?'))) return false" href="deleteDepartment?id=${func.id}" class="btn btn-danger">Delete</a>
  			</div>
		</div>
		</div>	
		</c:forEach>
  </div>
</div>
	<!-- _______________________________________DISPLAYING RESULTS________________________________________________ -->

<br>
<br>
<div class="footer">
        <footer>
            <div class="social"><a href="https://www.instagram.com/jkpaperindia/" target=”_blank”><i class="fa fa-instagram"></i></a>
                                <a href="https://www.linkedin.com/company/jk-paper-ltd.?trk=extra_biz_viewers_viewed" target=”_blank”><i class="fa fa-linkedin"></i></a>
                                <a href="https://twitter.com/jkpaperindia" target=”_blank”><i class="fa fa-twitter"></i></a>
                                <a href="https://www.facebook.com/#!/pages/JK-Paper-Ltd/165369376861315" target=”_blank”><i class="fa fa-facebook"></i></a>
                                <a href="https://www.youtube.com/channel/UCWproPZLnSSk7jQwewqpoNA" target=”_blank”><i class="fa fa-youtube"></i></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="h">Home</a> </li>
                <li class="list-inline-item"><a href="https://www.jkpaper.com/corporate/about-us.html" target=”_blank”>About Us</a></li>
                <li class="list-inline-item"><a href="http://www.jkorg.in/index.php/papri">R&D</a></li>
                <li class="list-inline-item"><a href="https://www.jkpaper.com/contact-us.html" target=”_blank">Contact Us</a></li>
            </ul>
            <p class="copyright"> 2022 JK Paper - All Rights Reserved </p>
        </footer>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
	
	<!-- _______________________________________FOOTER________________________________________________ -->
</body>

<style>
body
{
  background: #2397F5;
}
.col-3
{
margin: 15px 20px;
}

.footer
{
  padding:40px 0;
  background-color:#ffffff;
  color:#4b4c4d;
}

.footer ul 
{
  padding:0;
  list-style:none;
  text-align:center;
  font-size:18px;
  line-height:1.6;
  margin-bottom:0;
}

.footer li {
  padding:0 10px;
}

.footer ul a 
{
  text-decoration:none;
  opacity:0.8;
}

.footer ul a:hover {
  opacity:1;
}

.footer .social {
  text-align:center;
  padding-bottom:25px;
  color: #2397F5;
}

.footer .social > a {
  font-size:24px;
  width:40px;
  height:40px;
  line-height:40px;
  display:inline-block;
  text-align:center;
  border-radius:50%;
  border:1px solid #ccc;
  margin:0 8px;
  color:inherit;
  opacity:0.75;
}

.footer .social > a:hover {
  opacity:0.9;
}

.footer .copyright {
  margin-top:15px;
  text-align:center;
  font-size:13px;
  color: #2397F5;
  margin-bottom:0;
}
</style>

</html>