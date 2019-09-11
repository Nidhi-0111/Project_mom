<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  .modal-header, h4, .close {
    background-color: #5cb85c;
    color:white !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-footer {
    background-color: #f9f9f9;
  }
  </style>
    <head>
        <title>View Employees</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/emptabu.css">
        <link rel="stylesheet" type="text/css" href="css/emptab.css">
    <!--===============================================================================================-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="css/util.css"> -->
	<link rel="stylesheet" type="text/css" href="css/updatemain.css">
<!--===============================================================================================-->
    </head>
<body>


<section>
<div class="container-contact100">
		<div class="wrap-contact100">
			<button class="btn-hide-contact100">
				<a href="AdminVIew.jsp"><i class="zmdi zmdi-close"></i></a>
			</button>

			<div class="contact100-form-title" style="background-image: url(images/bg-02.jpg);">
				<span>ARE YOU SURE YOU WANT TO REMOVE EMPLOYEE</span>
			</div>

			
				<div class="container-contact100-form-btn">
					 <a href="DeactivateEmployee?id=<%=i.getEmp_id() %>" class="contact100-form-btn">
						YES
					</a>
				</div>
				<div class="container-contact100-form-btn">
					<a href="#" class="contact100-form-btn">
						NO
					</a>
				</div>
			</form>
		</div>
	</div>

</section>

	<div align="center">
		
	</div>
	<%
		List<Employees> list =EmployeeDAO.getAllEmployees();
		
	%>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
					<table class="table">

						<tr class="row header">
							<td class="cell" >
								Employee ID
							</td>
							<td class="cell" style="text-align:center;">
								Employee Name
							</td>
							<td class="cell" style="text-align:center;">
								Employee Email
							</td>
							<td class="cell" style="text-align:center;">
								Employee Password
							</td>
							<td class="cell" style="text-align:center;">
									Designation
								</td>
							<td class="cell" style="text-align:center;">
									Department ID
							</td>
							<td class="cell" style="text-align:center;">
									Employee Status
							</td>
							
							<td class="cell" style="text-align:center;">
									Employee Start_Date
							</td>
							
							<td class="cell" style="text-align:center;">
									Edit Employee	
							</td>
							<td class="cell" style="text-align:center;">
									Deactivate
							</td>
							
						
							
                        </tr>
<%for (Employees i : list) {%>
						<tr class="row">
							
							<td  id="delid" class="cell" name="emp_id" data-title="Employee ID">
							
								<%=i.getEmp_id()%>
							</td>
							
							<td class="cell" style="text-align:center;"  data-title="Employee Name">
								<%=i.getEmp_name()%>
							</td>
							<td class="cell" style="text-align:center;" data-title="Employee Email">
								<%=i.getEmp_email()%>
							</td>
							<td class="cell" style="text-align:center;" data-title="Employee Password">
								<%=i.getEmp_pass()%>
							</td>
							<td class="cell" style="text-align:center;" data-title="Designation">
								<%=i.getEmp_desgn()%>
							</td>
							
							<td class="cell" style="text-align:center;" data-title="Department ID">
								<%=i.getDept_id()%>
							</td>
							<td class="cell" style="text-align:center;" data-title="Employee Status">
								<%=i.getEmp_status()%>
							</td>
							<td class="cell" style="text-align:center;" data-title="Employee Start_Date">
							<%=i.getEmp_startdate()%>
							</td>
							<td class="cell" style="text-align:center;" data-title=" Edit Employee">
							<a href="UpdateEmployee.jsp?id=<%=i.getEmp_id()%>">Edit</a>
							</td>
							<td class="cell"  style="text-align:center;" data-title="Deactivate">
							<a class="deactive-employee" href="DeactivateEmployee?id=<%=i.getEmp_id() %>">Deactivate</a>
							</td>
                        </tr>
                        <%
				}
			%>
                    </table>
                </div>
            </div>
        </div>
		

	
		
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/updatemain.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');	
    
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
        <script src="js/main.js"></script>
</body>
<script>
</script>
</html>