<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register page</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.tablecon {
	margin-top: 4cm;
	color: red;
	margin-top: 4cm;
}
</style>
<body >
<a  href="show.jsp"><button>Show User Details</button></a>
	<script type="text/javascript">  
 function validate()  
 {  
      var d=document.register;  
      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;  
    
      
      if(d.name.value == '')  
      {  
           alert("Enter Name");  
           document.getElementById('name').style.borderColor = "red";

           d.name.focus();  
           return false;  
      }  
      else
          document.getElementById('name').style.borderColor = "green";
      
      if(d.name.value.length<=3)  
      {  
      alert("Minimum Name Should be greater than three");  
      document.getElementById('name').style.borderColor = "red";

      return false;       
      }  
      else
          document.getElementById('name').style.borderColor = "green";
      
      
      
      if(d.email.value == '')  
      { 
      alert("Email is is Required");  
      document.getElementById('email').style.borderColor = "red";

      d.email.focus();  
      return false;       
      }  
      
      else
          document.getElementById('email').style.borderColor = "green";
      
      if(reg.test(d.email.value) == false)  
      {  
        alert("Invalid Email");  
        document.getElementById('email').style.borderColor = "red";

      return false;       
      }  
      else
          document.getElementById('email').style.borderColor = "green";
      
  /*     if(d.password.value == '')  
      {
      alert("Password is is Required");  
      document.getElementById('password').style.borderColor = "red";

      d.password.focus();  
      return false;       
      }  
      else
          document.getElementById('password').style.borderColor = "green";
      
      if(d.password.value != d.cpassword.value)  
      {  
      alert("Passwords Mismatch")
         document.getElementById('password').style.borderColor = "red";

      return false;      
      }  
      else
          document.getElementById('password').style.borderColor = "green"; */
      
      //
      if(d.Mobile.value == '')  
      {  
           alert("Enter Mobile");  
           document.getElementById('Mobile').style.borderColor = "red";

           d.Mobile.focus();  
           return false;  
      }  
      else
          document.getElementById('Mobile').style.borderColor = "green";

    	  
      if(d.Mobile.value.length<10)  
      {  
      alert("Minimum Mobile Should be greater than ten"); 
      document.getElementById('Mobile').style.borderColor = "red";

      return false;       
      }
      
      else
          document.getElementById('Mobile').style.borderColor = "green";
 
      
      
      if(d.Age.value == '')  
      {  
           alert("Enter Age");  
           document.getElementById('Age').style.borderColor = "red";

           d.Age.focus();  
           return false;  
      }  
      else
          document.getElementById('Age').style.borderColor = "green";
   //
      
      if(d.Salary.value == '')  
      {  
           alert("Enter Salary");  
           document.getElementById('Salary').style.borderColor = "red";

           d.Salary.focus();  
           return false;  
      }  
      else
        
    	  document.getElementById('Salary').style.borderColor = "green";      
  
      ajax_call();

 }  

 </script>

<!-- 	<a href="show.jsp">Show Employee list</a>
 -->

	<form name="register" onSubmit="return validate()">
		<table class="tablecon" width="200" border="1" align="center">
			<!-- <tr>
				<td>ID<span style="color: #8B008B">*</span>:
				</td>
				<td><input type="text" name="id" id="id"></td>
			</tr> -->
			<tr>
				<td>Name<span style="color: #8B008B">*</span>:
				</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>

			<tr>
				<td>Email<span style="color: #8B008B">*</span>:
				</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>

			<tr>
				<td>Mobile_no<span style="color: #8B008B">*</span>:
				</td>
				<td><input type="text" name="Mobile" id="Mobile"></td>
			</tr>

			<tr>
				<td>Age<span style="color: #8B008B">*</span>:
				</td>
				<td><input type="text" name="Age" id="Age" ></td>
			</tr>
			<tr>
				<td>Salary<span style="color: #8B008B">*</span>:
				</td>
				<td><input type="text" name="Salary" id="Salary"></td>
			</tr>


			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="submit" id="submit" value="Register" ></td>
			</tr>
		
		</table>
	</form>
	<script>
	
	
	
	
	
	/* function ajax_call1(){
		
		if (success) {
		    var successUrl = "show.jsp"; // might be a good idea to return this URL in the successful AJAX call
		    window.location.href = successUrl;
		}
		
		
		
	} */
	
	
	function ajax_call(){
	console.log("into ajax call function");
	var Name = $('#name').val();
	var Email = $('#email').val();
	var VMobile = $('#Mobile').val();
	var VAge = $('#Age').val();
	var VSalary = $('#Salary').val();

	var obj = {
			"name" : Name,
			"email" : Email,
			"Mobile" : VMobile,
			"Age" : VAge,
			"Salary"  :VSalary
	};
	
	

	$.ajax({
		url: "register",
		type :"get",
		headers : {
		'Accept':'Application/json',
		'Content-Type' : 'Application/json'
		},
		data :"obj="+JSON.stringify(obj),
		success : function(response) {
		//alert("register successful");
		},
		error : function() {
		//alert('Error while request..');
		}
	
		});
	
	}
	
	</script>

</body>
</html>