<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
div{
    background:#F00;
    font-size:24px;
    padding:5px;
    color:#000;
}
form{
    background: #F8F8FF ;
    border:#357FC4 solid 1px;
    color:#575454;  
    width:400px;
    margin:20px auto;
    font-size:15px;
}
table{
    margin:10px auto;
}
a{
    text-decoration:none;
}
input[type="button"]{
    background:#228B22;
    color:white;
    font-size:15px;
    font-weight:bold;
    width:120px;
    height:40px;
}
td:first-child{
    text-align:right;
    padding:0 5px;
}
td:only-child{
    text-align:center;
    font-size:12px;
}
span:before{
    content:"* ";
    color:red;
}
input[type="text"]:read-only{
    border:#888484 solid 2px;
    background:#888484;
    font-weight:bold;   
}
input[type="text"]:hover{
    background:#EFD9AC;
}
</style>

<script type="text/javascript">
function tijiao(){
	var userName =  document.getElementById("username").value;
	var userPassword =  document.getElementById("userpassword").value;
	if(userName==null || userName==""){
		alert("用户名不能为空");
	}
	else if(userPassword==null || userPassword==""){
		alert("密码不能为空");
	}
	else{
	var xmlHttp = new XMLHttpRequest();
	xmlHttp.open("POST","/20151104820_zhaolei_firesite/Regsiter?username="+userName,true);
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.readyState==4 && xmlHttp.status==200){
			var resultAjax = xmlHttp.responseText;
			if(resultAjax==1){
				alert("用户名已存在");
				document.getElementById("username").value = "";
			}
			if(resultAjax==0){
				alert("注册成功");
				document.getElementById("form").submit();	
				window.location.href="user.jsp";
			}
		}
	}
	xmlHttp.send();
	}
}
function tuichu(){
	window.location.href="user.jsp";
}

</script>

</head>
<body>

	<div align="center">消防网站注册 </div>
	<form action="userregister" method="post" id="form" onsubmit="return false">
	<table>
    <tr><td><span>用户名</span></td><td><input type="text" name="username" id="username" onkeyup="this.value=this.value.replace(/[^a-zA-Z]/g,'')" required placeholder="用户名必须为英文" /></td></tr>
    <tr></tr>
    <tr><td><span>密码</span></td><td><input type="password"  name="userpassword" id="userpassword" placeholder="密码只能为数字或字母" onkeyup="value=value.replace(/[\W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" /></td></tr>
    <tr></tr>
    <tr><td>性别</td><td><input type="radio" id="male" name="sex" value="男" />男<input type="radio" id="female" name="sex" value="女" />女</td></tr>
    <tr></tr>
    <tr><td>手机号码</td><td><input type="text" name="phone" id="phone" /></td></tr>
    <tr></tr>
    <tr><td align="center"></td><td><input type="button" value="注册" onClick="tijiao()"/></td></tr>
        <tr></tr>
    <tr><td align="center"></td><td><input type="button" value="退出" onClick="tuichu()"/></td></tr>
    <td></td>
    <td align="right">注：<span>号必填</span></td>
</table>
</form>

</body>
</html>