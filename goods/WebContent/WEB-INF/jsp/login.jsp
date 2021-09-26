<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/style.css"
	   type=text/css rel=stylesheet>
	<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>

<script>
// 判断是登录账号和密码是否为空
function check(){
    var username = $("#username").val();
    var password = $("#password").val();
    if(username=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	background="${pageContext.request.contextPath}/images/rightbg.jpg">
<div ALIGN="center">
<table border="0" width="100%" cellspacing="0" cellpadding="0"
                                                           id="table1">
	<tr>
		<td height="93"></td>
		<td></td>
	</tr>
	<tr>

   <td class="login_msg" width="100%" align="center">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: 70%; margin: 0px auto;">
		  <legend>
		     <font style="font-size:25px" face="宋体">
		          欢迎使用商品管理系统
		     </font>
		  </legend> 
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
		<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()" class="form-horizontal">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />

          账&nbsp;号：<input id="username" type="text" name="username" />
          <br /><br />
          密&nbsp;码：<input id="password" type="password" name="password" />
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" value="登录" class="btn btn-primary" />
		 </form>
	 </fieldset>
	</td>
	</tr>
</table>
</div>
</body>
</html>
