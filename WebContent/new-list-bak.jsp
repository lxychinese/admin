<%@ page pageEncoding="utf-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Admin </title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	
	
	
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/animate.min.css" rel="stylesheet" />
	<link href="assets/css/style.min.css" rel="stylesheet" />
	<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="assets/plugins/parsley/src/parsley.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->

       
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		 <%@include file="head.jsp"%>
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			 <%@include file="side.jsp"%>
			
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
	
	
	
	<div class="row">
	<div class="col-md-12 ui-sortable">
			        <!-- begin panel -->
                    <div class="panel panel-inverse" data-sortable-id="table-basic-1">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">Default Table</h4>
                        </div>
                        <div class="panel-body">
                           <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">


   <thead>
            <tr>
                <th>序号</th>
                <th>标题</th>
                <th>简介</th>
                <th>是否显示</th>
                <th>是否可用</th>
            </tr>
        </thead>


    </table>
                        </div>
                    </div>
			    </div>
			    
			    </div>
			    
		</div>

	</div>

	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets/plugins/parsley/dist/parsley.js"></script>
	<script src="assets/js/apps.min.js"></script>
	 <script src="js/polar_alert.js"></script>
	
		 <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	 
	 
	 <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
	 
	 

	 
	


	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
	//polaralert.alert({content: "上传成功！",parent:"#content",type:"alert-warning"});
		$(document).ready(function() {
			App.init();
				
			 $('#example').DataTable( {
				 "processing": true,
			        "serverSide": true,
			        "sAjaxSource": "/admin/blistJson",
			        "fnServerData": function (sSource, aoData, fnCallback) {
			        	$.ajax({
			        		dataType: 'json',
			        	
			        		type:"POST",
			        		url: sSource,
			        		async : false, 
			            data : { 
			            "aoData" : JSON.stringify(aoData) 
			            }, 
			            success : fnCallback,
			            error:function (XMLHttpRequest, textStatus, errorThrown) { 
			           		 alert(XMLHttpRequest.status+","+textStatus);
			            }
			        		});
			         },
			         "columns" : [
			                      /* {"data": "id"}, */
			                      {"data": "id"},
			                      /* {"data": "sensitivewordLevel"},
			                      {"data": "sensitivewordName"},
			                      {"data": "sensitivewordHandleInfo"}, */
			                      {"data": "title"},
			                      {"data": "memo"},
			                      {"data": "is_top"},
			                      {"data": "is_use"}
			                  ],
			                  
			          "columnDefs" : [ {
			            "render" : function(data, type, row) {
			            	console.log(data);
			            	if(data=="0"){
			            		return "<font color='green'>未使用</font>";	
			            	}else{
			            		return "<font color='red'>使用</font>";
			            	}
			              
			            },
			            "targets" : 3
			          },
		
			          
			          {
				            "render" : function(data, type, row) {
				            	if(data=="0"){
				            		return "<font color='green'>未使用</font>";	
				            	}else{
				            		return "<font color='red'>使用</font>";
				            	}
				              
				            },
				            "targets" : 4
				          }
			          
			          ],
			          "oLanguage": {
			                "sProcessing": "正在加载中......",
			                "sLengthMenu": "每页显示 _MENU_ 条记录",
			                "sZeroRecords": "对不起，查询不到相关数据！",
			                "sEmptyTable": "表中无数据存在！",
			                "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
			                "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
			                "sSearch": "搜索",
			                "oPaginate": {
			                    "sFirst": "首页",
			                    "sPrevious": "上一页",
			                    "sNext": "下一页",
			                    "sLast": "末页"
			                }
			            } ,
			         "aLengthMenu":[ 
			          [5,10,20, 50, 100,200], 
			          ["5","10","20", "50", "100","200"] 
			           ],
			         "iDisplayLength":10
			    } );
				
				
				
				
				
			
			
		});
		

	</script>
	 
</body>
</html>
