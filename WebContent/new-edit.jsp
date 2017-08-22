<%@ page pageEncoding="utf-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->

<!--<![endif]-->
<head>
	
</head>
<body>
	
		
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		
		<!-- begin #content -->
		<div id="content" class="content">
		
			<div class="row">
                <!-- begin col-6 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse" data-sortable-id="form-validation-1">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">信息录入</h4>
                        </div>
                        <div class="panel-body panel-form">
                            <form class="form-horizontal form-bordered" data-parsley-validate="true" name="demo-form">
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1" for="fullname">标题 * :</label>
									<div class="col-md-6 col-sm-6">
										<input class="form-control" type="text"  id="title1" value='${news.title}' placeholder="请输入标题" data-parsley-required="true" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1" for="email">类型 * :</label>
									<div class="col-md-6 col-sm-6">
										<select id="type1">
												<option value=1>普通</option >
												<option value=2>移动</option >
												<option value=3>微信</option >
											</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1" for="email">是否置顶 * :</label>
									<div class="col-md-6 col-sm-6">
										<select id="is_top1">
												<option  <c:if test="${news.is_top eq 1}">selected</c:if> value="1" >是</option >
											    <option <c:if test="${news.is_top eq 0}">selected</c:if> value="0" >否</option >
											</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1" for="email">是否显示 * :</label>
									<div class="col-md-6 col-sm-6">
											<select id="is_use1">
											    <option  <c:if test="${news.is_use eq 1}">selected</c:if> value="1" >是</option >
											    <option <c:if test="${news.is_use eq 0}">selected</c:if> value="0" >否</option >
											</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1" for="message">摘要 :</label>
									<div class="col-md-6 col-sm-6">
										<textarea class="form-control" id="memo1" rows="4" placeholder="内容简短描述">${news.memo}</textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1" for="message">内容 :</label>
									<div class="col-md-11 col-sm-11">
										 <script id="editor" type="text/plain" style="height:500px;"></script>
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-1 col-sm-1"></label>
									<div class="col-md-6 col-sm-6">
										<button type="button" id='sbmt1' class="btn btn-primary">Submit</button>
									</div>
								</div>
                            </form>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-6 -->
               
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

	<!-- end page container -->
	<form id="form2" method="post">
				<input type="hidden" id="id" name="id"  value="${news.id}"/>
				<input type="hidden" id="type" name="type" />
				<input type="hidden" id="content" name="content" />
				<input type="hidden" id="title" name="title" />
				<input type="hidden" id="is_top" name="is_top" />
				<input type="hidden" id="is_use" name="is_use" />
					<input type="hidden" id="memo" name="memo" />
				
</form>

	<script>
	//polaralert.alert({content: "上传成功！",parent:"#content",type:"alert-warning"});
		$(document).ready(function() {
			var ue = UE.getEditor('editor');
			ue.addListener("ready", function () {
		        // editor准备好之后才可以使用
		        var content='${news.content}';
		       ue.setContent(content);
		 
		        });
			
			
		    $("#sbmt1").click(function(){
		    	$("#title").val($("#title1").val());
		    	$("#is_top").val($("#is_top1").val());
		    	$("#is_use").val($("#is_use1").val());
		    	$("#type").val($("#type1").val());
		    	$("#memo").val($("#memo1").val());
		    	//$("#contentt").val(UE.getEditor('editor').getContent());
		    	$("input[name=content]").val(UE.getEditor('editor').getContent())
		    	var id='${news.id}';
		    	var url="";
		    	if(id){
		    		
		    		url="/update";
		    	}else{
		    		$("#id").val(0)
		    		url="/add";
		    	}
		    	 $.ajax({
		             type: "post",
		             url: url,     
		             data: $("#form2").serialize(),         
		             success: function(data) {
		            	 if(data==1){
		            		 alert("操作成功");
		            		 //$(".js-msg").addClass("alert alert-success").html("操作成功");
		            	 }else{
		            		 alert("操作失败");
		            		// $(".js-msg").addClass("alert alert-error").html("操作失败") ;
		            	 }
		             },
		             error: function(data) {
		                 alert(data);
		             }
		         })
		         
		         
		         
		    	
		    })
		    
		    
			
			
			
		});
		
		 

	</script>
	 
</body>