<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Admin</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/animate.min.css" rel="stylesheet" />
	<link href="assets/css/style.min.css" rel="stylesheet" />
	<link href="assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="assets/plugins/DataTables/css/data-table.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	<style type="text/css">
	.pagination-right {
      float: right;
    }
	</style>
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
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">Home</a></li>
				<li><a href="javascript:;">Tables</a></li>
				<li class="active">Managed Tables</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">Managed Tables <small>header small text goes here...</small></h1>
			<!-- end page-header -->
			
			<!-- begin row -->
			<div class="row">
			    <!-- begin col-12 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">Data Table - Default</h4>
                        </div>
									<div class="col-md-12 col-sm-12">
										<div class="pull-right"><button type="button" id="btSmt" class="btn btn-info">添加</button></div>
								</div>           
                <div class="panel-body">
               
                            <div>
                                <table id="data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                           <th align="center">标题</th>
											<th align="center">是否显示</th>
											<th align="center">是否置顶</th>
											<th align="center">操作</th>
                                        </tr>
                                    </thead>
                                   <tbody id="list">
										
									</tbody>
                                </table>
                        <ul class="pagination pagination-right" id="pageUl">  
                                         
</ul>
                            </div>
                           
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->
		
        <!-- begin theme-panel -->
        <div class="theme-panel">
            <a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a>
            <div class="theme-panel-content">
                <h5 class="m-t-0">Color Theme</h5>
                <ul class="theme-list clearfix">
                    <li class="active"><a href="javascript:;" class="bg-green" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-red" data-theme="red" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-blue" data-theme="blue" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-purple" data-theme="purple" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-orange" data-theme="orange" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li>
                    <li><a href="javascript:;" class="bg-black" data-theme="black" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li>
                </ul>
                <div class="divider"></div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Header Styling</div>
                    <div class="col-md-7">
                        <select name="header-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">inverse</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Header</div>
                    <div class="col-md-7">
                        <select name="header-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Styling</div>
                    <div class="col-md-7">
                        <select name="sidebar-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">grid</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label">Sidebar</div>
                    <div class="col-md-7">
                        <select name="sidebar-fixed" class="form-control input-sm">
                            <option value="1">fixed</option>
                            <option value="2">default</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Sidebar Gradient</div>
                    <div class="col-md-7">
                        <select name="content-gradient" class="form-control input-sm">
                            <option value="1">disabled</option>
                            <option value="2">enabled</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-5 control-label double-line">Content Styling</div>
                    <div class="col-md-7">
                        <select name="content-styling" class="form-control input-sm">
                            <option value="1">default</option>
                            <option value="2">black</option>
                        </select>
                    </div>
                </div>
                <div class="row m-t-10">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-inverse btn-block btn-sm" data-click="reset-local-storage"><i class="fa fa-refresh m-r-3"></i> Reset Local Storage</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end theme-panel -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
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
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets/plugins/DataTables/js/jquery.dataTables.js"></script>
	<script src="assets/js/table-manage-default.demo.min.js"></script>
	           <script type="text/javascript" src="js/bootstrap-paginator.min.js"></script>
	<script src="assets/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
	
	function test(val){
		var id=$(val).data("id");
		window.location="/admin/info?id="+id;
	}
		$(document).ready(function() {
			
			App.init();
			initSideNav("#newList")
			
			$("#btSmt").click(function(){
            	
            	window.location="new-edit.jsp";
            });
			//这两种方法都不行 操蛋
			//$("#js_edit_btn").click(function(){
		    	//alert(1);
		    	
		   // });
			 
             //这两种方法都不行 操蛋
           
           // $(".js_edit_btn").each(function(){
            	//var that=$(this);
            	//that.click(function(){
            	//	alert(1);
            	//})
            	
            //})

			$(".loading").css("display","block");
			  function refreshTable(obj){
				$(".loading").css("display","none");
				var totalCount=obj.totalItems;
            	if(totalCount%10===0){
            		totalPages=totalCount/10;
            	}else{
            		totalPages=Math.ceil(totalCount/10);
            	}
            	var list=obj.result;
            	for(var i=0;i<list.length;i++){
            		var o=list[i];
            		var tr='<tr class="gradeA">';
            		tr+='<td>'+o.title+'</td>';
            		tr+='<td>'+o.is_use+'</td>';
            		tr+='<td>'+o.is_top+'</td>';
            		tr+='<td  style="text-align: center"><div class="btn-group"><button type="button" onClick="test(this)" class="btn btn-small btn-primary js_edit_btn" data-id="'+o.id+'">编辑</button><button type="button" class="btn btn-small btn-danger js_del_btn" data-id="${news.id }">删除</button></div></td>';
            		tr+='</tr>';
            		$("#list").append(tr);
            		
            	
            	}
				  
			  }
			  var totalPages=0;
			  $.ajax({
	                type: 'post',
	                cache: false,
	                dataType: 'json',
	                async:false,
	                url: "/admin/listJson",
	                timeout: 3000,
	                success: function (obj) {
	                	refreshTable(obj);
	                	//$(".loading").css("display","none");
	                	
	                }
	            });
			  var options = {
					  bootstrapMajorVersion:3,//操蛋 这个配置很重要
			          currentPage: 1, //当前页数
			          totalPages: totalPages, //总页数
			          alignment:"right",
			          itemTexts: function (type, page, current) {
			              switch (type) {
			                case "first":
			                  return "首页";
			                case "prev":
			                  return "上一页";
			                case "next":
			                  return "下一页";
			                case "last":
			                  return "末页";
			                case "page":
			                  return page;
			              }
			            },
			            
			            
			            
			            onPageClicked: function (event, originalEvent, type, page) {
			            	$(".loading").css("display","block");
			            	$("#list").html("");
			            	 
			                $.ajax({
			                	type: 'post',
				                cache: false,
				                dataType: 'json',
				                url: "/admin/listJson",
			                  data: {"start":(page-1)*10},
			                  success: function (obj) {
			                	  refreshTable(obj);
			                  }
			                });
			              }
					  
			  };
			  $('.pagination').bootstrapPaginator(options);
		
		});
		
		
	</script>
	 
</body>
</html>
