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

<body>
<div class="header">
 
 <div class="row">
 	<div class="col">
 		<img src="Images/vit.png" Style="padding-left:325px">
 	</div>
 	<div class="col-8">
 		<h1 style="padding-top:90px ">Vishwakarma Institute Of Technology</h1>
 		<h3 style="padding-left:220px"> CS:3030</h3>
	</div>
 </div>
</div>   
<BR>
 	<h2><center>File Upload to Database Demo</center></h2><br>
	<div class="container" style="font-size:25px ">
       <div class="row">
        <Form method="post" action="Teacher" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Problem statement: </label>
                    <textarea  class="form-control-lg" name="Problem" rows="3" ></textarea>
                </div><BR>
                <div class="form-group">
                    <label>option 1: </label>
                    <input class="form-control-lg" type="text" name="opt1" size="50"/>
                </div><BR>
               <div class="form-group">
                    <label>option 2: </label>
                    <input class="form-control-lg" type="text" name="opt2" size="50"/>
                </div><BR>
               <div class="form-group">
                    <label>option 3: </label>
                    <input class="form-control-lg" type="text" name="opt3" size="50"/>
                </div><BR>
                <div class="form-group">
                    <label>option 4: </label>
                    <input class="form-control-lg" type="text" name="opt4" size="50"/>
                </div><BR>
                <div class="form-group">
                    <label>answer: </label>
                    <input class="form-control-lg" type="text" name="answer" size="50"/>
                </div><BR>
                <div class="form-group">
                    <label>Portrait Photo: </label>
                    <input class="form-control-lg" type="file" name="photo" size="50"/>
                </div><BR>
                <div class="form-group">
                    <label>Photo Name: </label>
                    <input class="form-control-lg" type="text" name="pts" size="50"/>
                </div><BR>
                <center><button type="submit" class="btn btn-danger btn-lg">Submit</button></center><BR>
        </form>
</div><div>
        	------------------------------------------------ OR ------------------------------------------------------------------
       		</div><BR>

        	<div class="row" >
        	       <BR>
        <form method="post" action="upload" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Upload excel-file:</label>
                    <input class="form-control-lg" type="file" name="file" accept=".xls,.xlsx" size="50"/>
                </div><BR>
         		<div style="padding-left:215px">
                <center><button  type="submit" class="btn btn-danger btn-lg">Submit</button></center><BR>
        		</div>
        </form>
        
 </div>
 </div>
</body>
</html>