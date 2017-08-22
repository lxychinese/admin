<%@ page pageEncoding="utf-8" %>

<head>

</head>
<body>
	<!-- begin #page-loader -->
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
		<!-- begin #header -->
		
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
                <th>操作</th>
            </tr>
        </thead>


    </table>
                        </div>
                    </div>
			    </div>
			    
			    </div>
			    
		</div>


	
<script>
	
		$(document).ready(function() {
		
				
			 $('#example').DataTable( {
				 "processing": true,
			        "serverSide": true,
			        "sAjaxSource": "/blistJson",
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
				          },{
				        	  "data": "id",
				        	  "render":function(data, type, full){
				        		  return "<a href='/info22?id=" + data + "'>Update</a>";
				        		  
				        	  },
				        	  
				        	  "targets" : 5
				        	  
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
