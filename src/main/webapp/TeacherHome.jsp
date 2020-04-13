<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>

<body style="background-image:url(./Images/teach.jpg)">
<header class="bg-light" style="opacity:50%">
<div class="container">
 <div class="row">
 	<div class="col-sm-2">
 		<div class="media">
 			<img src="Images/vit.png" class="d-flex mr-3 img-thumbnail align-self-center order-sm-last">
 		</div>
 	</div>
 	<div class="col-sm-10 align-self-center">
 		<h1 class="mt-3 mb-3 text-center align-self-center">Vishwakarma Institute Of Technology</h1>
	</div>
</div>
</div>
</header>
<BR>	
	<div class="container" style="font-size:25px;opacity:90% ">
       <div class="row justify-content-center">
       <div class="card">
		<h3 class="card-header bg-secondary text-white text-center">Question Upload to Database</h3>
    	<div class="card-body bg-light">
        <Form method="post" action="Teacher" enctype="multipart/form-data">
                <div class="form-group row">
                    <label for="Problem" class="col-form-label col-4">Problem statement: </label>
                    <div class="col-8">
                    	<textarea  class="form-control" name="Problem" rows="3" ></textarea>
                	</div>
                </div>
                <div class="form-group row">
                    <label for="opt1" class="col-form-label col-4">option 1: </label>
                    <div class="col-8">
                    	<input class="form-control" type="text" name="opt1" id="opt1"/>
                	</div>
                </div>
               <div class="form-group row">
                    <label for="opt2" class="col-form-label col-4">option 2: </label>
                    <div class="col-8">
                    	<input class="form-control" type="text" name="opt2" id="opt2"/>
                	</div>
                </div>
               <div class="form-group row">
                    <label for="opt3" class="col-form-label col-4">option 3: </label>
                    <div class="col-8">
                 	   <input class="form-control" type="text" name="opt3" id="opt3" />
                	</div>
                </div>
                <div class="form-group row">
                    <label for="opt4" class="col-form-label col-4">option 4: </label>
                    <div class="col-8">
                    	<input class="form-control" id="opt4" type="text" name="opt4" />
                	</div>
                </div>
                <div class="form-group row">
                    <label for="answer" class="col-form-label col-4">answer: </label>
                    <div class="col-8">
                	    <input class="form-control" id="answer" type="text" name="answer" />
               		</div>
                </div>
                <div class="form-group row">
                    <label for="photo" class="col-form-label col-4">Image: </label>
                    <div class="col-8">
                    	<input class="form-control" type="file" id="photo" name="photo" />
                	</div>
                </div>
                <div class="form-group row">
                    <label for="pts" class="col-form-label col-4">Img&nbsp;name:</label>
                    <div class="col-8">
                   		<input class="form-control" id="pts" type="text" name="pts"/>
                	</div>
                </div>
                <div class="form-group">
                	<button type="submit" class="form-control col-6 offset-3 btn btn-lg btn-danger">Submit</button>
        		</div>
        </form>
      </div>
      </div>
      </div>
      <div class="row justify-content-center text-white">
        	------OR------
       </div>
		<div class="row justify-content-center mb-3" >
		<div class="card " style="width:45%;">
    	<div class="card-body bg-light">
        <form method="post" action="upload" enctype="multipart/form-data">
                <div class="form-group row">
                    <label for="file" class="col-form-label col-4">Upload excel&nbsp;file:</label>
                    <div class="col-8">
                	    <input class="form-control" type="file" id="file" name="file" accept=".xls,.xlsx"/>
                	</div>
                </div>
				<div class="form-group row">
                	<button type="submit" class="form-control col-6 offset-3 btn-lg btn btn-danger">Submit</button>
        		</div>
        </form>
        </div>
        </div>       
	 </div>
 </div>
</body>
</html>