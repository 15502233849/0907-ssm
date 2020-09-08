<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="${pageContext.request.contextPath}/"/>
<title>网上商城管理中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${pageContext.request.contextPath}/css/general.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />

<style type="text/css">
body {
  color: white;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<%--  jquery.validate.js是jquery的验证框架--%>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
   $(function() {
	$("#form1").validate({
		rules:{
			username:{
				required:true,//必须输入项
				remote:"admin/validUsername"//validUsername验证用户名是否存在,返回true代表存在;否则代表不存在
			},
			password:{
				required:true,
				remote:{
					url:"admin/validPassword",
				    type:"post",
				    dataType:"json",
				    data:{
				    	username:function(){
				    		return $("#username").val();
				    	},
				    	password:function(){
				    		return $("#password").val();
				    	}

				    }
				}
			},
		},
		messages:{
			username:{
				remote:"该用户名不存在"
			},
			password:{
				remote:"密码不正确"
			},
		}
	});
});
</script>
</head>
<body style="background: #278296">
<form id="form1" action="admin/login" method="post">
  <table cellspacing="0" cellpadding="0" style="margin-top: 100px" align="center">
  <tr>
    <td style="padding-left: 50px">
      <table>
      <tr>
        <td>管理员用户名：</td>
        <td><input type="text" name="username" id="username"/>
        </td>
      </tr>
      <tr>
        <td>管理员密码：</td>
        <td><input type="password" name="password"  id="password"/>
        <font id="tip_password" color="red"></font>
        </td>
      </tr>
      <tr><td>&nbsp;</td><td><input type="submit"  value="进入管理中心"  class="button" /></td></tr>
      </table>
    </td>
  </tr>
  </table>
</form>
</body>