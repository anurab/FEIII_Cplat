<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<!-- Web Fonts -->
<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet" type="text/css">
<script src="js/jquery-2.1.4.min.js"></script> 
  <!-- Load c3.css -->
  <link href="css/c3.css" rel="stylesheet" type="text/css">
  
  <!-- Load d3.js and c3.js -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="js/d3.min.js" charset="utf-8"></script>
  <script src="js/c3.js"></script>
<title>cPlat Home</title>
</head>
<body>

<!-- NavBar -->

 <nav class="navbar navbar-default " role="navigation">
		<div class="container">

			<div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			<a class="navbar-brand img-responsive" href="index.jsp">cPLAT</a>
			</div>
	<!-- div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1" >
			<ul class="nav navbar-nav">
				<li><a href="index" class="selected">Home</a></li>
				<li><a href="aboutus">About Us</a></li>
				<li><a href="gallery">Gallery</a></li>
				<li><a href="contactus" >Contact Us</a></li>

				
		          

          
         
        </ul>

		</div-->
	
</div>
</nav>
</div>
  <!-- End NavBar -->
  
  <!-- Input Filed -->
  <div class="container">
 	 <div class="row">
			<div class="col-md-12">
			<form id="areaform" method="GET" action="">
				<div class="form-group">
 
					<label for="code" class="col-sm-12 control-label">Script:</label>
					 
						<div class="col-md-12">
					 
							<textarea name="txtarea" id="txtarea" class="form-control inputstl" rows="10" ></textarea>
					 
						</div>
						<div class="col-md-offset-11">
								<!-- button  class="btn btn-warning" onclick="prettyPrint()">Pretty Print</button-->
								<input id="create" onclick="createJSON()" class="btn btn-warning" type="button" value="Show">
						</div>
						
 						
				</div>
				</form>
			
			</div> 
  
  	</div>
  </div>
  
  <!-- end od Input Field -->
  
  <!-- start of visualization -->
  <div class="container">
  <div class="row">
 	<div class="col-md-12">
 			<div id="matrix"></div>
 	</div>
  </div>
  
  </div>

<script src="js/graphs/anyGraph.js"></script>


<script type="text/javascript">
function createJSON(){
		var area = document.getElementById('txtarea').value;
		if(area!=""){
			//var obj = JSON.parse(area);//This is the JSON OBJECT
			//sendData(obj);
		    document.getElementById("areaform").submit();
		    
		}
		else{
			alert("Please Fill It")
			//$("#txtarea").attr('required',true);
		}
    
}

function sendData(obj) {
	
    $.ajax({
        url: 'cData/helloworld',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(obj),
        dataType: 'json'
    });
}

</script>



<script src="js/bootstrap.min.js"></script> 
</body>
</html>