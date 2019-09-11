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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="css/emptab.css">
    <!--===============================================================================================-->
    </head>
<body>


<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
    Launch demo modal
  </button>
  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p> Are you sure you want to remove??</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
          <button type="button" class="btn btn-primary">Yes</button>
        </div>
      </div>
    </div>
  </div>

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
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
        <script src="js/main.js"></script>
</body>
<script>
    $(document).ready(function(){
        $(".deactive-employee").on('click',function(){
    $('#exampleModal').modal('show');
});
});
</script>
</html>