<%@ page pageEncoding="utf-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%> 
  <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<head>
<title>Admin</title>
	<link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrap/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	
	
	
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
			<div id="header" class="header navbar navbar-default navbar-fixed-top">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="index.html" class="navbar-brand"><span class="navbar-logo"></span>Admin</a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->
				
				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form full-width">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter keyword" />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</li>
					<li class="dropdown">
						<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
							<i class="fa fa-bell-o"></i>
							<span class="label">5</span>
						</a>
						<ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">Notifications (5)</li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-bug media-object bg-red"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Server Error Reports</h6>
                                        <div class="text-muted f-s-11">3 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">John Smith</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">25 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="assets/img/user-2.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Olivia</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">35 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New User Registered</h6>
                                        <div class="text-muted f-s-11">1 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New Email From John</h6>
                                        <div class="text-muted f-s-11">2 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-footer text-center">
                                <a href="javascript:;">View more</a>
                            </li>
						</ul>
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="assets/img/user-13.jpg" alt="" /> 
							<span class="hidden-xs">lxychinese</span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="javascript:;">密码修改</a></li>
							<li><a href="javascript:;">退出</a></li>
							
						</ul>
					</li>
				</ul>
				<!-- end header navigation right -->
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<div data-scrollbar="true" data-height="100%">
			
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">后台导航</li>
					<li class="has-sub ">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-laptop"></i>
						    <span>系统设置</span>
					    </a>
						<ul class="sub-menu">
						    <li><a href="#">密码修改</a></li>
						    <li><a href="#">缓存刷新</a></li>
						</ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
							<span class="badge pull-right">10</span>
							<i class="fa fa-inbox"></i> 
							<span>产品管理</span>
						</a>
						<ul class="sub-menu">
						    <li><a href="new-edit.jsp">添加产品</a></li>
						    <li id="newList"><a href="new-list-bak1.jsp">列表</a></li>
						    <li><a href="#">类型管理</a></li>
						   
						</ul>
					</li>
					
					<li class="has-sub">
					    <a href="javascript:;">
						   
					        <i class="fa fa-envelope"></i>
					        <span>邮件推送</span>
					    </a>
						
					</li>
					<li class="has-sub">
					    <a href="javascript:;">
						    <b class="caret pull-right"></b>
					        <i class="fa fa-area-chart"></i>
						    <span>网站广告</span>
						</a>
						<ul class="sub-menu">
						    <li><a href="#">首页浮动广告</a></li>
						    <li><a href="#">轮换广告</a></li>
						</ul>
					</li>
					<li class="has-sub"><a href="javascript:;"> <b class="caret pull-right"></b>
					        <i class="fa fa-area-chart"></i><span>新闻资讯</span></a>
					<ul class="sub-menu">
						    <li><a href="pro-edit.jsp">添加</a></li>
						    <li><a href="#">列表</a></li>
						</ul>
					
					</li>
					<li class="has-sub">
					    <a href="javascript:;">
					        <b class="caret pull-right"></b>
					        <i class="fa fa-map-marker"></i>
					        <span>模板管理</span>
					    </a>
						<ul class="sub-menu">
							<li><a href="#">模板列表</a></li>
							<li><a href="#">模板配置</a></li>
						</ul>
					</li>
					<li class="has-sub">
					    <a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-camera"></i>
						    <span>系统留言</span>
						</a>
					    <ul class="sub-menu">
					        <li><a href="#">开关设置</a></li>
					        <li><a href="#">信息列表</a></li>
					    </ul>
					</li>
					
					
					<li class="has-sub">
					    <a href="javascript:;">
					        <b class="caret pull-right"></b>
					        <i class="fa fa-medkit"></i>
					        <span>导航设置</span>
					    </a>
					    <ul class="sub-menu">
							<li><a href="#">导航列表</a></li>
							<li><a href="#">配置导航</a></li>
					    </ul>
					</li>
					<li class="has-sub">
						<a href="javascript:;">
						    <b class="caret pull-right"></b>
						    <i class="fa fa-align-left"></i> 
						    <span>Menu Level</span>
						</a>
						<ul class="sub-menu">
							<li class="has-sub">
								<a href="javascript:;">
						            <b class="caret pull-right"></b>
						            Menu 1.1
						        </a>
								<ul class="sub-menu">
									<li class="has-sub">
										<a href="javascript:;">
										    <b class="caret pull-right"></b>
										    Menu 2.1
										</a>
										<ul class="sub-menu">
											<li><a href="javascript:;">Menu 3.1</a></li>
											<li><a href="javascript:;">Menu 3.2</a></li>
										</ul>
									</li>
									<li><a href="javascript:;">Menu 2.2</a></li>
									<li><a href="javascript:;">Menu 2.3</a></li>
								</ul>
							</li>
							<li><a href="javascript:;">Menu 1.2</a></li>
							<li><a href="javascript:;">Menu 1.3</a></li>
						</ul>
					</li>
			        <!-- begin sidebar minify button -->
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
			        <!-- end sidebar minify button -->
				</ul>
				<!-- end sidebar nav -->
			</div>
			
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
	
	
	
	
			    

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
	
		 <script src="assets/js/jquery.dataTables.min.js"></script>
	 
	 
	 <script src="assets/js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor.all.js"> </script>
	 <div class="row">
	 	<decorator:body /> 
			    
	</div>
	
	
	
	 <script>

	    function saveCurrentMenu($obj) {
	        var menuId = $obj.prop("id");
	        $.cookie('menuId', menuId, {expires: 7, path: '/'});
	    }
	    
	    function initCurrentMenu() {
	        var menuId = $.cookie('menuId');
	        if (menuId == undefined) {
	            return;
	        }
	       
	       $('#' + menuId).addClass("active");
	        $('#' + menuId).parent().parent().addClass("active");
	    }


	    
	    
	    
		$(document).ready(function() {
			App.init();
			
			initCurrentMenu() ;
			$(".sub-menu>li").click(function () {
		            saveCurrentMenu($(this));
		    });
			
			
		});
		
		
		
	    
    
	
	
		
		 


		</script>
		
		
		
</body>
</html>
