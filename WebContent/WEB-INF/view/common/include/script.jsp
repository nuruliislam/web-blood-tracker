<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script type="text/javascript">
	$(document).ready(function(){
	
		$('table .edit').on('click',function(){
			var id=$(this).parent().find('#id').val();
			console.log(String(id));
			$.ajax({
				type: 'GET',
				url: '${updateLink}',
				data:{'requestId': id},
				success: function(request)
				{
					console.log("Success");
				},
				error: function (jXHR, textStatus, errorThrown) {
					console.log(errorThrown);
				}
				});
		});
	});
</script>
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/chart.js/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/sparklines/sparkline.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/jquery-knob/jquery.knob.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/moment/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/summernote/summernote-bs4.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard.js"></script>
<script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"> </script>