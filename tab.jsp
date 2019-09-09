<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.quinnox.mom.dao.*,com.quinnox.mom.model.Employees,com.quinnox.mom.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
    </head>
<body>


	<h1 align="center" style="color:Red">Employees List</h1>
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
							<td class="cell">
								Employee ID
							</td>
							<td class="cell">
								Employee Name
							</td>
							<td class="cell">
								Employee Email
							</td>
							<td class="cell">
								Employee Password
							</td>
							<td class="cell">
									Designation
								</td>
							<td class="cell">
									Department ID
							</td>
							<td class="cell">
									Employee Status
							</td>
						
							
                        </tr>

						<tr class="row">
							<td class="cell" data-title="Employee ID">
								
							</td>
							<td class="cell" data-title="Employee Name">
								
							</td>
							<td class="cell" data-title="Employee Email">
								
							</td>
							<td class="cell" data-title="Employee Password">
								
							</td>
							<div class="cell" data-title="Designation">
								
							</td>
							<td class="cell" data-title="Department ID">
								
							</td>
							<td class="cell" data-title="Employee Status">
								
							</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
			<%
				for (Employees i : list) {
			%>
			<TR>
				<TD><%=i.getEmp_id()%></TD>
				<TD><%=i.getEmp_name()%></TD>
				<TD><%=i.getEmp_email()%></TD>
				<TD><%=i.getEmp_pass()%></TD>
				<TD><%=i.getEmp_desgn()%></TD>
				<TD><%=i.getEmp_status()%></TD>
				<TD><%=i.getEmp_startdate()%></TD>
				<TD><%=i.getDept_id()%></TD>
				<TD><a href="UpdateEmployee.jsp?id=<%=i.getEmp_id()%>">Edit</a></TD>
				<TD><a href="">Deactivate</a></TD>
			</TR>
			<%
				}
			%>
	

		</table>
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
</body>
</html>