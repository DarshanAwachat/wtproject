<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body class="bg-info">
<header class="bg-info text-white ">
<div class="container">
 <div class="row">
 	<div class="col-sm-2">
 		<div class="media">
 			<img src="Images/vit.png" class="d-flex mr-3 img-thumbnail align-self-center order-sm-last">
 		</div>
 	</div>
 	<div class="col-sm-10">
 		<h3 class="mt-3 mb-3">Vishwakarma Institute Of Technology</h3>
	</div>
</div>
</div>
</header>
<div class="container text-info">
<div class="row m-2">
</div>
<div class="row">
<div class="col-sm-6 col-12 align-self-center">
<div class="cosize ml-auto">
<div class="card">
	<h5 class="card-header bg-secondary text-white text-center">Login</h5>
    <div class="card-body bg-light">
    	<form action="loginHelper.jsp" method="post">
    		<div class="form-group row">
    			<div class="col-12">
					<select class=	"form-control inputstl"  name="opt">
  						<option value="student">Student</option>
  						<option value="teacher">Teacher</option>
  					</select>
  				</div>
  			</div>
  			<div class="form-group row ">
  		<label for="u" class="col-form-label col-2"><i class="fas fa-user fa-lg"></i></label>
  				<div class="col-10 ">
    				<input type="text" class="form-control" name="u" placeholder="Username" required="required" />
        		</div>
        	</div>
        	<div class="form-group row">
        		<label for="u" class="col-form-label col-2"><i class="fas fa-key fa-lg"></i></label>
        		<div class="col-10 ">
        			<input type="password" class="form-control" name="p" placeholder="Password" required="required" />
        		</div>
        	</div>
        	<div class="form-group row">
        		<div class="col-12">
        			<button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
        		</div>
        	</div>
        </form>
    </div>
</div>
</div>
</div>

<div class="col-sm-6 col-12 align-self-center ">
<div class="cosize mr-auto">
<div class="card">
	<h5 class="card-header bg-secondary text-white text-center">Sign Up</h5>
    <div class="card-body bg-light">
    	  <form action="SignUp.jsp" method="post">
    		<div class="form-group row">
    			<div class="col-12">
					<select class=	"form-control inputstl"  name="opt">
  						<option value="student">Student</option>
  						<option value="teacher">Teacher</option>
  					</select>
  				</div>
  			</div>
  			<div class="form-group row ">
  					<label for="u" class="col-form-label col-2"><i class="fas fa-user fa-lg"></i></label>
    				<div class="col-10">
    					<input type="text" class="form-control" name="u" placeholder="Username" required="required" />
        			</div>
        	</div>
        	<div class="form-group row">
        		<label for="u" class="col-form-label col-2"><i class="fas fa-key fa-lg"></i></label>
        		<div class="col-10 ">
        			<input type="password" class="form-control" name="p" placeholder="Password" required="required" />
        		</div>
        	</div>
        	<div class="form-group row">
        		<div class="col-12">
        			<button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
        		</div>
        	</div>
        </form>
    </div>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/403ac71f00.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>	
</body>
</html>
