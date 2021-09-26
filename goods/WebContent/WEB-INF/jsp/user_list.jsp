<%@include file="/WEB-INF/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 商品分类列表  start-->
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">用户管理</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->

	<a href="#" class="btn btn-primary" data-toggle="modal"
		data-target="#newUser">新建</a>
	<div class="row">
		<div class="col-lg-12">
			<!-- 复制开始 -->
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>序号</th>
						<th>用户名</th>
						<th>密码</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="row" varStatus="i">
				
						<tr>
							<%-- <td>${row.user_id}</td> --%>
							<td>${i.index}</td>
							<td>${row.user_name}</td>
							<td>${row.user_pass}</td>
							<td><a href="#" class="btn btn-primary btn-xs"
								data-toggle="modal" data-target="#userEditDialog"
								onclick="editUser(${row.user_id})">修改</a> 
								<a href="${pageContext.request.contextPath}/user/userDel.action?username=${row.user_name}" 
								class="btn btn-danger btn-xs" onclick="JavaScript:confirm('确实要删除该用户信息吗?')">删除</a>
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 复制结束 -->

		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>
<!-- 商品分类列表  end-->
</div>
<!-- 创建商品分类模态框 -->
<div class="modal fade" id="newUser" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建用户</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_user_form">

					<div class="form-group">
						<label for="new_userName" class="col-sm-2 control-label">
							用户名称 </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_userName"
								placeholder="用户名称" name="user_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">用户密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="new_password"
								placeholder="用户密码" name="user_pass" />
						</div>
					</div>
					
										<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">用户年龄</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="new_password"
								placeholder="用户年龄" name="user_age" />
						</div>
					</div>
					
										<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">用户性别</label>
						<div class="col-sm-10">
							<input type="number" class="form-control" id="new_password"
								placeholder="用户性别" name="user_sex" />
						</div>
					</div>
										<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">用户邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_password"
								placeholder="用户邮箱" name="user_email" />
						</div>
					</div>
										<div class="form-group">
						<label for="new_password" class="col-sm-2 control-label">用户级别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_password"
								placeholder="用户级别" name="user_rank" />
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createUser()">创建新用户</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改商品分类模态框 -->
<div class="modal fade" id="userEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_user_form">
					<input type="hidden" id="edit_user_id" name="user_id"/>
					<div class="form-group">
						<label for="edit_userName" class="col-sm-2 control-label">
							用户名称 </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_username"
								placeholder="用户名称" name="user_name" />
						</div>
					</div>
					<div class="form-group" id="form_cateDesc">
						<label for="cate_desc" class="col-sm-2 control-label">用户密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="edit_userpass"
								placeholder="用户密码" name="user_pass" />
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateUser()">修改用户</button>
			</div>
		</div>
	</div>

</div>

<!-- 编写js代码 -->
<script type="text/javascript">

function createUser() {

	$.post("${pageContext.request.contextPath}/user/createUser.action",
			
	$("#new_user_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("用户创建成功！");
	            window.location.reload();
	        }else{
	            alert("用户创建失败！");
	            window.location.reload();
	        }
	        
	    });
	
	}
	
	// 通过id获取修改的用户信息
/* 	function editUser(user_id) {
		$.post(
				"${pageContext.request.contextPath}/user/getUserById.action",{"user_id":user_id},
				function(data){
							$("#edit_user_id").val(data.user_id);
							$("#edit_username").val(data.user_name);
							$("#edit_userpass").val(data.user_pass);

						});
	} */
	
	function editUser(id) {
	    $.ajax({
	        type:"post",
	        url:"<%=basePath%>user/getUserById.action",
	        data:{"id":id},
	        success:function(data) {
	            $("#edit_user_id").val(data.user_id);
	            $("#edit_username").val(data.user_name);
	            $("#edit_userpass").val(data.user_pass)
	            
	        }
	    });
	}
	// 执行修改商品分类操作
	function updateUser() {

		$.post("${pageContext.request.contextPath}/user/updateUser.action", $(
				"#edit_user_form").serialize(),function(data) {
			if (data == "OK") {
				alert("用户信息更新成功！");
				window.location.reload();
			} else {
				alert("用户信息更新失败！");
				window.location.reload();
			}
		});
	}
/* 	// 删除商品分类
	function deleteCate(cate_id) {
		if (confirm('确实要删除该商品分类吗?')) {
			$.post("${pageContext.request.contextPath}/category/delete.action",
					{
						"cate_id" : cate_id
					}, function(data) {
						if (data == "OK") {
							alert("商品分类删除成功！");
							window.location.reload();
						} else {
							alert("删除商品分类失败！");
							window.location.reload();
						}
					});
		}
	} */
</script>
<%@include file="/WEB-INF/footer.jsp"%>