<%@include  file="/WEB-INF/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
     <!-- 商品分类列表  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">商品分类管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->

		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCateDialog" >新建</a>
		<div class="row">
			<div class="col-lg-12">
			<c:forEach items="${catelist1}" var="l1">
				<div class="panel panel-default">
					<div class="panel-heading">【${l1.cate_name}】 ${l1.cate_desc}
					    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#cateEditDialog" onclick= "editCate(${l1.cate_id})">修改</a>
						<a href="#" class="btn btn-danger btn-xs" onclick="deleteCate(${l1.cate_id})">删除</a>
				    </div>
					<!-- /.panel-heading -->
					
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>编号</th>
								<th>商品分类名称</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${catelist2}" var="l">
							   <c:if test="${l1.cate_id==l.parentid }">
								<tr>
									<td>${l.cate_id}</td>
									<td>${l.cate_name}</td>
									<td>
										
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#cateEditDialog" onclick= "editCate(${l.cate_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCate(${l.cate_id})">删除</a>
									</td>
								</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
					

					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				</c:forEach>
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 商品分类列表  end-->
</div>
<!-- 创建商品分类模态框 -->
<div class="modal fade" id="newCateDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建商品分类信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_cate_form">

					<div class="form-group">
						<label for="new_cateFrom" style="float:left;padding:7px 15px 0 27px;">上级分类</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_cateFrom" name="parentid">
								<option value="-1">--请选择--</option>
								<c:forEach items="${catelist1}" var="item">
									<option value="${item.cate_id}">
									${item.cate_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label for="new_cateName" class="col-sm-2 control-label">
						    分类名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_cateName" placeholder="商品分类名称" name="cate_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_catedesc" class="col-sm-2 control-label">分类描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_catedesc" placeholder="分类描述" name="cate_desc" />
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createCate()">创建分类</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改商品分类模态框 -->
<div class="modal fade" id="cateEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改商品分类信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_cate_form">
                    <input type="hidden" id="edit_cate_id" name="cate_id"/>
					<div class="form-group" id="form_parentid">
						<label for="edit_cateFrom" style="float:left;padding:7px 15px 0 27px;">上级分类${parentid}</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="edit_parentid" name="parentid">
								<option value="-1" >--请选择--</option>
								<c:forEach items="${catelist1}" var="item">
									<option value="${item.cate_id}" id="${item.cate_id}">
									${item.cate_name}									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label for="edit_cateName" class="col-sm-2 control-label">
						    分类名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_cateName" placeholder="商品分类名称" name="cate_name"/>
						</div>
					</div>
					<div class="form-group" id="form_cateDesc">
						<label for="cate_desc" class="col-sm-2 control-label">分类描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_cateDesc" placeholder="分类描述" name="cate_desc" />
						</div>
					</div>

				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateCate()">修改分类</button>
			</div>
		</div>
	</div>
	
</div>

<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建商品分类窗口中的数据
	function clearCate() {
	    $("#new_cateName").val("");
	    $("#new_catedesc").val("")

	}
	// 创建商品分类
	function createCate() {

	$.post("${pageContext.request.contextPath}/category/create.action",
			
	$("#new_cate_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("商品分类创建成功！");
	            window.location.reload();
	        }else{
	            alert("商品分类创建失败！");
	            window.location.reload();
	        }
	        
	    });
	
	}
	// 通过id获取修改的商品信息
	function editCate(cate_id) {
		
		$.post("${pageContext.request.contextPath}/category/getCateById.action",{"cate_id":cate_id},function(data){
			 $("#edit_cate_id").val(data.cate_id);
	         $("#edit_cateName").val(data.cate_name);
	         $("#edit_cateDesc").val(data.cate_desc);

             if(data.parentid==0){
            	 $("#form_parentid").hide();
            	 $("#form_cateDesc").show();
            	 
             }else{
            	 $("#form_parentid").show();
            	 $("#form_cateDesc").hide();
            	 $("select option[value='"+data.parentid+"']").attr("selected", "selected");  
             }
		});
	}
    // 执行修改商品分类操作
	function updateCate() {
    	
		$.post("${pageContext.request.contextPath}/category/update.action",$("#edit_cate_form").serialize(),function(data){
			if(data =="OK"){
				alert("商品分类信息更新成功！");
				window.location.reload();
			}else{
				alert("商品分类信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除商品分类
	function deleteCate(cate_id) {
	    if(confirm('确实要删除该商品分类吗?')) {
	$.post("${pageContext.request.contextPath}/category/delete.action",{"cate_id":cate_id},
	function(data){
	            if(data =="OK"){
	                alert("商品分类删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除商品分类失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
 <%@include  file="/WEB-INF/footer.jsp"%>