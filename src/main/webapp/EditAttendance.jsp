<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="js/validation.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
function populate(s3,s4){
var s3 = document.getElementById(s3);
var s4 = document.getElementById(s4);
s4.innerHTML ="";
if(s3.value == "1stSem"){
var optionArray = ["|","sima|sima","sona|sona","raj|raj"];
  }
  else if(s3.value == "2ndSem"){
var optionArray = ["|","rima|rupa","samrat|samrat","samrat|samrat"];
  }
    else if(s3.value == "3rdSem"){
var optionArray = ["|","puja|puja","saswati|saswati","rinki|rinki"];
  }
    else if(s3.value == "4thSem"){
var optionArray = ["|","pol|pol","histry|histry","geo|geo"];
   }
    else if(s3.value == "5thSem"){
var optionArray = ["|","pol|pol","histry|histry","geo|geo"];
   }
    else if(s3.value == "6thSem"){
var optionArray = ["|","pol|pol","histry|histry","geo|geo"];
   }
    else if(s3.value == "7thSem"){
var optionArray = ["|","pol|pol","histry|histry","geo|geo"];
   }
    else if(s3.value == "8thSem"){
var optionArray = ["|","pol|pol","histry|histry","geo|geo"];
  }
  for(var option in optionArray){
  var pair = optionArray[option].split("|");
  var newOption = document.createElement("option");
  newOption.value =pair[0];
  newOption.innerHTML =pair[1];
  s4.options.add(newOption);
  }
}
</script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container">
  <div class="row">
  <div class="col-md-6 col-sm-8 mx-auto">
  <div class="card">
  <div class="card-body" style="background-color: #eeefff">
   <div class="mt-2 text-center">
   <h2>UPDATING ATTENDANCE</h2>
   <h5 style="color: red;"> ${regsuccessmsg}</h5>
  </div>
<form action="add" method="post">
<label for="subject" class="text-uppercase font-weight-bold">Date</label>
<input type="date" id="date" name="date">
<br/>
<br>
 <div class="form-group">
 <label for="stdYear" class="text-uppercase font-weight-bold">Year</label>
 <select name="stdYear" id="stdYear" onchange="checkcountry()">
 <option selected value="Default">Year</option>
 <option value="FirstYear">FirstYear</option>
 <option value="SecondYear">SecondYear</option>
 <option value="ThirdYear">ThirdYear</option>
 <option value="ForthYear">ForthYear</option>
 </select>
 <div class="text-danger font-weight-bold" id="countryerrormessage"></div>
 </div>
 <div class="form-group">
 <label for="subject" class="text-uppercase font-weight-bold">Subject</label>
 <select name="subject" id="subject" onchange="checkcountry()">
 <option selected value="Default">Select Subject</option>
 <option value="Analog & Digital Electronics">Analog & Digital Electronics</option>
 <option value="Analog & Digital Electronics[Lab]">Analog & Digital Electronics[Lab]</option>
 <option value="">3rdSem</option>
 <option value="">4thSem</option>
 <option value="5thSem">5thSem</option>
 <option value="6thSem">6thSem</option>
 <option value="7thSem">7thSem</option>
 <option value="8thSem">8thSem</option>
 </select>
 <div class="text-danger font-weight-bold" id="subjecterrormessage"></div>
 </div>
<br/>
choose student semester:
<select id="stdsem" name="stdsem" onchange="populate(this.id,'stdname')">
<option value""></option>
<option value="1stSem">1stSem</option>
<option value="2ndSem">2ndSem</option>
<option value="3rdSem">3rdSem</option>
<option value="4thSem">4thSem</option>
<option value="5thSem">5thSem</option>
<option value="6thSem">6thSem</option>
<option value="7thSem">7thSem</option>
<option value="8thSem">8thSem</option>
</select>
<br/>
<br/>
choose student name:
<select id="stdname" name="stdname"></select>
<br/>
 <div class="form-group">
  <label for="attendance" class="text-uppercase font-weight-bold">Attendance</label>
  <input type="radio" name="attendance" id="present" value="present" onclick="cleargender()" />
  <span id="maledisp">Present</span>
  <input type="radio" name="attendance" id="no-present" value="no-present" onclick="cleargender()" />
  <span id="femaledisp">No-present</span>
  <div class="text-danger font-weight-bold" id="attendancererrormessage"></div>
  </div>
<button type="submit" class="btn btn-primary btn-block">SEND</button>
</form>
 </div> <!-- Form tag div -->
 </div> <!-- Card Body End -->
 </div> <!-- Card End -->
 </div> <!-- Col alignment end -->
 </div> <!-- Row End -->   
</body>
</html>