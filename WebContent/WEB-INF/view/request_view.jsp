<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  	<%@include file="./common/include/meta.jsp" %>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
	<%@include file="./common/include/header.jsp" %>
	<%@include file="./common/include/side-bar.jsp" %>
  
	
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Blood Request</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card" id="department_card">
              <div class="card-header">
                <h3 class="card-title">Blood Request</h3>
                <br><br>
                <a type="button" class="btn btn-primary" data-toggle="modal" data-target="#addEmp" data-whatever="@mdo">Add Blood Request</a>
                <br><br>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                            <th>Patient Name</th>
                            <th>Hospital</th>
                            <th>Address</th>
                            <th>Contact</th>
                            <th>Reference</th>
                            <th>Status</th>
                            <th>Action</th>
                            
                        </tr>
                  </thead>
                    <tbody>
                    <c:forEach var="tempRequest" items="${requests}">
                        <tr> 
                          <td> ${tempRequest.patientName} </td>
						<td> ${tempRequest.hospitalName} </td>
						<td> ${tempRequest.patientAdress} </td>
						<td> ${tempRequest.contactNum} </td>
						<td> ${tempRequest.refernce} </td>
						<td> NA </td>
						<td>
                           	<a type="button" class="btn btn-primary">Edit</a>
                        </td> 
                        </tr>
                        </c:forEach>
                    </tbody>
                  
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- modal start-->
            <div class="modal fade" id="addEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New Employee</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="<?php echo base_url();?>employee/add_emp" method="post">
                               

                                <div class="form-group">
                                    <label for="Emp_name" class="col-form-label">Patient Name:</label>
                                    <input type="text" class="form-control" id="p_name" name="p_name" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="Emp_email" class="col-form-label">Hospital</label>
                                    <input type="text" class="form-control" id="h_name" name="h_name" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Address</label>
                                    <input type="text" class="form-control" id="p_adress" name="p_address" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Contact</label>
                                    <input type="text" class="form-control" id="p_contact" name="p_contac" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Reference</label>
                                    <input type="text" class="form-control" id="p_reference" name="p_reference" required="required">
                                </div>

                               
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">Designation Status:</label>
                                      <select name="user_type" class="form-control">
                                        <option value="Admin">Admin</option>
                                        <option value="Developer">Developer</option>
                                        <option value="Manager">Manager</option>
                                      </select>
                                </div>
                            
                        
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>   

            </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  
  	<%@include file="./common/include/footer.jsp" %>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
	<%@include file="./common/include/script.jsp" %>

</body>
</html>