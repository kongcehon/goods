<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>网上商城商品管理系统</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>good/list.action">网上商城商品管理系统</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				      <a href="${pageContext.request.contextPath }/category/list.action" class="active">
				        <i class="fa fa-dashboard fa-fw" ></i> 商品分类管理
				      </a>
				</li>				
				<li>
				    <a href="${pageContext.request.contextPath }/goods/list.action">
				      <i class="fa fa-edit fa-fw"></i> 商品管理
				    </a>
				</li>
				
				<li>
					<a href="${pageContext.request.contextPath }/user/userlist.action">
				<i class="fa fa-user fa-fw" ></i> 用户管理
					</a>
				</li>	
				
				
<!-- 				<li>
				    <a href="#">
				      <i class="fa fa-user fa-fw" ></i> 用户管理
				    </a>
				</li>	 -->			
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 商品列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">商品管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/good/list.action">
					<div class="form-group">
						<label for="goodName">商品名称</label> 
						<input type="text" class="form-control" id="goodName" 
						                   value="${goods_Name }" name="goods_name" />
					</div>
					<div class="form-group">
						<label for="cateFrom">商品分类</label> 
						<select	class="form-control" id="cateFrom" name="cateSource">
							<option value="">--请选择--</option>
							<c:forEach items="${catelist}" var="item">
								<option name="cate" value="${item.cate_id}">
								       
								   <font color="red">${item.cate_name }</font> 
								</option>
							</c:forEach>
						</select>
					</div>
			
					<div class="form-group">
						<label for="newgoods">今日新品</label>
						<select	class="form-control" id="newgoods" name="newgoods">
							    <option value="">--请选择--</option>
								<option value="是">是</option>
								<option value="否">否</option>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newgoodDialog" onclick="cleargood()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">商品信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>商品名称</th>
								<th>商品原料</th>
								<th>商品价格</th>
								<th>商品库存</th>
								<th>商品销量</th>
								<th>图片</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.goods_id}</td>
									<td>${row.goods_name}</td>
									<td>${row.goods_material}</td>
									<td>${row.goods_price}</td>
									<td>${row.goods_stock}</td>
									<td>${row.goods_sales}</td>
								    <td><img src="${pageContext.request.contextPath }${row.goods_pic}" width="80px" height="70px"/></td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" onclick="">商品详情</a>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#goodEditDialog" onclick= "editgood(${row.goods_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deletegood(${row.goods_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/goods/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 商品列表查询部分  end-->
</div>
<!-- 创建商品模态框 -->
<div class="modal fade" id="newgoodDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建商品信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_good_form">
					<div class="form-group">
						<label for="new_goodName" class="col-sm-2 control-label">
						    商品名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_goodName" placeholder="商品名称" name="goods_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_goodFrom" style="float:left;padding:7px 15px 0 27px;">所属分类</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_goodFrom" name="cate_id">
								<option value="">--请选择--</option>
								<c:forEach items="${catelist}" var="item">
									<option value="${item.cate_id}"<c:if test="${item.cate_id == custSource}">selected</c:if>>
									${item.cate_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>


					<div class="form-group">
						<label for="new_goodsDisc" class="col-sm-2 control-label">商品描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_goodsDisc" placeholder="商品描述" name="goods_disc" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_goodsPrice" class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_goodsPrice" placeholder="价格" name="goods_price" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_goodsStock" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_goodsStock" placeholder="库存" name="goods_stock" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_goodsOrigin" class="col-sm-2 control-label">产地</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_goodsOrigin" placeholder="产地" name="goods_origin" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="creategood()">创建商品</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改商品模态框 -->
<div class="modal fade" id="goodEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_good_form">
				<input type="hidden" id="edit_goods_id" name="goods_id"/>
					<div class="form-group">
						<label for="edit_goodName" class="col-sm-2 control-label">
						    商品名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_goodName" placeholder="商品名称" name="goods_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_goodFrom" style="float:left;padding:7px 15px 0 27px;">所属分类</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_goodFrom" name="cate_id">
								<option value="">--请选择--</option>
								<c:forEach items="${catelist}" var="item">
									<option value="${item.cate_id}"<c:if test="${item.cate_id == custSource}">selected</c:if>>
									${item.cate_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label for="edit_goodsDisc" class="col-sm-2 control-label">商品描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_goodsDisc" placeholder="商品描述" name="goods_disc" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_goodsPrice" class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_goodsPrice" placeholder="价格" name="goods_price" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_goodsStock" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_goodsStock" placeholder="库存" name="goods_stock" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_goodsOrigin" class="col-sm-2 control-label">产地</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_goodsOrigin" placeholder="产地" name="goods_origin" />
						</div>
					</div>
				</form>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updategood()">保存修改</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建商品窗口中的数据
	function cleargood() {

	}
	// 创建商品
	function creategood() {
	$.post("<%=basePath%>good/create.action",
	$("#new_good_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("商品创建成功！");
	            window.location.reload();
	        }else{
	            alert("商品创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的商品信息
	function editgood(id) {
	    $.ajax({
	        type:"post",
	        url:"<%=basePath%>good/getgoodById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_goods_id").val(data.goods_id);
	            $("#edit_goodName").val(data.goods_name);
	            $("#edit_goodFrom").val(data.cate_id);
	            $("#edit_goodsDisc").val(data.goods_disc);
	            $("#edit_goodsPrice").val(data.goods_price);
	            $("#edit_goodsStock").val(data.goods_stock);
	            $("#edit_goodsOrigin").val(data.goods_origin);
	               
	            
	        }
	    });
	}
    // 执行修改商品操作
	function updategood() {
		$.post("${pageContext.request.contextPath}/good/update.action",
				$("#edit_good_form").serialize(),function(data){
			if(data =="OK"){
				alert("商品信息更新成功！");
				window.location.reload();
			}else{
				alert("商品信息更新失败！");
				window.location.reload();
			}
		});
	}
    
   
	// 删除商品
	function deletegood(id) {
	    if(confirm('确实要删除该商品吗?')) {
	$.post("<%=basePath%>good/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("商品删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除商品失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>