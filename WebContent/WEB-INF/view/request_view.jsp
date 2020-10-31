<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                <a type="button" class="btn btn-primary" data-toggle="modal" data-target="#addReq" data-whatever="@mdo">Add Blood Request</a>
                <br><br>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
        
                <table id="bloodRequest" class="table table-bordered table-striped">
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
                    
                    	<!-- construct an "update" link with BloodRequest id -->
						<c:url var="updateLink" value="#">
							
						</c:url>					

						<!-- construct an "delete" link with customer id -->
						<c:url var="deleteLink" value="/request/delete">
							<c:param name="requestId" value="${tempRequest.id}" />
						</c:url>
                        <tr> 
                        	<td> ${tempRequest.patientName} </td>
							<td> ${tempRequest.hospitalName} </td>
							<td> ${tempRequest.patientAdress} </td>
							<td> ${tempRequest.contactNum} </td>
							<td> ${tempRequest.refernce} </td>
							<td> NA </td>
							<td>
								<!-- display the update link -->
								<a href="${updateLink}" data-toggle="modal" class="edit" data-target="#editReq" data-whatever="@mdo">Update</a>
							|
								<a href="${deleteLink}"
							   	onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false"
							   	>Delete</a>
							   	
							   	<input type="hidden" id="id" value="${tempRequest.id}">
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
            <div class="modal fade" id="addReq" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add New Request </h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form:form action="saveRequest" modelAttribute="requests" method="post">
                               

                                <div class="form-group">
                                    <label for="Emp_name" class="col-form-label">Patient Name:</label>
                                    <input type="text" class="form-control" id="patientName" name="patientName" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="Emp_email" class="col-form-label">Hospital</label>
                                    <input type="text" class="form-control" id="hospitalName" name="hospitalName" required="required">
                                </div>

                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Address</label>
                                    <input type="text" class="form-control" id="patientAdress" name="patientAdress" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Contact</label>
                                    <input type="text" class="form-control" id="contactNum" name="contactNum" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Reference</label>
                                    <input type="text" class="form-control" id="refernce" name="refernce" required="required">
                                </div>

                      			<div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>   
            
             <!-- modal start for edit-->
            <div class="modal fade" id="editReq" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Update Request </h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form:form action="editRequest" modelAttribute="requests" method="post">
                               

                                <div class="form-group">
                                    <label for="Emp_name" class="col-form-label">Patient Name:</label>
                                    <input type="text" class="form-control" id="patientName" name="patientName" required="required">
                                    
                                </div>

                                <div class="form-group">
                                    <label for="Emp_email" class="col-form-label">Hospital</label>
                                    <input type="text" class="form-control" id="hospitalName" name="hospitalName" required="required">
                                    
                                </div>

                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Address</label>
                                    <input type="text" class="form-control" id="patientAdress" name="patientAdress" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Contact</label>
                                    <input type="text" class="form-control" id="contactNum" name="contactNum" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label for="Emp_pass" class="col-form-label">Reference</label>
                                    <input type="text" class="form-control" id="refernce" name="refernce" required="required">
                                </div>

                      			<div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form:form>
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