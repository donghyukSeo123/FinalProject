<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>OneStep </title>
<script src="${pageContext.request.contextPath }/resources/assets/js/libs/jquery-3.1.1.min.js"></script>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/favicon.ico"/>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/plugins/table/datatable/datatables.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/plugins/table/datatable/dt-global_style.css">
<link href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/main.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/structure.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/plugins/highlight/styles/monokai-sublime.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/ui-elements/pagination.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<link href="${pageContext.request.contextPath }/resources/assets/css/loader.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.theme.default.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/plugins/apex/apexcharts.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/assets/css/dashboard/dashboard_1.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath }/resources/plugins/flatpickr/flatpickr.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/plugins/flatpickr/custom-flatpickr.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/assets/css/elements/tooltip.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/ui-elements/pagination.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/forms/theme-checkbox-radio.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/apps/contacts.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/apps/companies.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/apps/invoice.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/loader.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/assets/css/basic-ui/accordion.css" rel="stylesheet" type="text/css" />
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Noto+Sans+KR:wght@500;900&display=swap" rel="stylesheet">

 <style>
    
* {
	font-family: 'Dongle', sans-serif;
font-family: 'Noto Sans KR', sans-serif;

}
</style> 
<!-- 차트css -->
<link href="${pageContext.request.contextPath }/resources/plugins/apex/apexcharts.css" rel="stylesheet" type="text/css">
<!-- Page Level Plugin/Style Ends --> 


</head>
<body >
    <!-- Loader Starts -->
    <div id="load_screen"> 
        <div class="boxes">
            <div class="box">
                <div></div><div></div><div></div><div></div>
            </div>
            <div class="box">
                <div></div><div></div><div></div><div></div>
            </div>
            <div class="box">
                <div></div><div></div><div></div><div></div>
            </div>
            <div class="box">
                <div></div><div></div><div></div><div></div>
            </div>
        </div>
        <p class="xato-loader-heading">ONESTEP</p>
    </div>
    <!--  Loader Ends -->
<!--=========================================== header =====================================================-->
    <!--  Main Container Starts  -->
    <div class="main-container" id="container">
        <div class="overlay"></div>
        <div class="search-overlay"></div>
        <div class="rightbar-overlay"></div>
		
		
<!--========================================================== sidebar ==============================================-->
<tiles:insertAttribute name="asideAdmin"/>
 <tiles:insertAttribute name="aside2"/>
        <!-- ================================ Content Area Starts ========================================== -->
              <div id="content" class="main-content">
   
        <tiles:insertAttribute name="content"/>
      	</div>
      </div>
<!--================================================ footer 부분 =============================================-->
		<tiles:insertAttribute name="footer"/>

<script src="${pageContext.request.contextPath }/resources/bootstrap/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/owl-carousel/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/app.js"></script>
<script>
	$(document).ready(function() {
		App.init();
	});
</script>
<script src="${pageContext.request.contextPath }/resources/assets/js/custom.js"></script>
<!-- Common Script Ends -->
<!-- Page Level Plugin/Script Starts -->
<script src="${pageContext.request.contextPath }/resources/plugins/fullcalendar/moment.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/loader.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/apex/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/flatpickr/flatpickr.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/dashboard/dashboard_1.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/fullcalendar/fullcalendar.min.js"></script>
<%-- <script src="${pageContext.request.contextPath }/resources/plugins/fullcalendar/custom-fullcalendar.advance.js"></script> --%>
<script src="${pageContext.request.contextPath }/resources/assets/js/apps/invoice.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/apps/companies.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/datatables.js"></script>
<!--  The following JS library files are loaded to use Copy CSV Excel Print Options-->
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/jszip.min.js"></script>    
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/buttons.print.min.js"></script>
<!-- The following JS library files are loaded to use PDF Options-->
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/table/datatable/button-ext/vfs_fonts.js"></script>
<!-- 차트js -->
<script src="${pageContext.request.contextPath }/resources/plugins/apex/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/js/charts/apex-chart.js"></script>
<!-- Page Level Plugin/Script Ends -->
<!-- ckeditor -->
<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script> 
<script>
$(document).ready(function() {
    $('#basic-dt').DataTable({
        "language": {
            "paginate": {
                "previous": "<i class='las la-angle-left'></i>",
                "next": "<i class='las la-angle-right'></i>"
            }
        },
        "lengthMenu": [5,10,15,20],
        "pageLength": 5, 
        "info": false,
        "order": [[0, 'desc']],
       "ordering": false,
       "lengthChange": false
    });
    
    
    $.fn.dataTable.ext.search.push(
        function( settings, data, dataIndex ) {
            var min = parseInt( $('#min').val(), 10 );
            var max = parseInt( $('#max').val(), 10 );
            var age = parseFloat( data[3] ) || 0; // use data for the age column
            if ( ( isNaN( min ) && isNaN( max ) ) ||
                ( isNaN( min ) && age <= max ) ||
                ( min <= age   && isNaN( max ) ) ||
                ( min <= age   && age <= max ) )
            {
                return true;
            }
            return false;
        }
    ); 
    
    // Add text input to the footer
    $('#single-column-search tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" class="form-control" placeholder="Search '+title+'" />' );
    } );
    // Generate Datatable
    var table = $('#single-column-search').DataTable({
        "language": {
            "paginate": {
                "previous": "<i class='las la-angle-left'></i>",
                "next": "<i class='las la-angle-right'></i>"
            }
        },
        "lengthMenu": [5,10,15,20],
        "pageLength": 5
    });
    // Search
    table.columns().every( function () {
        var that = this;
        $( 'input', this.footer() ).on( 'keyup change', function () {
            if ( that.search() !== this.value ) {
                that
                    .search( this.value )
                    .draw();
            }
        } );
    } );
} );
</script>
</body>
</html>