<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/user.css" type="text/css" media="all">
<title>用户登陆</title>

<style type="text/css">

.clearBoth {
	clear: both;
}

.win{
	POSITION:absolute;left:55%;top:60%;
	width:400px;height:250px;
	margin-left:-300px;margin-top:-200px;border:1px solid #888;
	background-color:blue;text-align:center;
	line-height:60px;z-Index:3;
}

.hidebg{
	position:absolute;left:0px;top:0px;
	background-color:#000;
	width:100%;
	filter:alpha(opacity=60);
	opacity:0.6;
	display:none;
	z-Index:2;
}

</style>

<script type="text/javascript">
	function openLogin(){
		document.getElementById("win").style.display="";
		document.getElementById("hidebg").style.display="block";
		document.getElementById("hidebg").style.height=document.body.clientHeight+"px";
	}
	function closeLogin(){
		document.getElementById("win").style.display="none";
		document.getElementById("hidebg").style.display="none";
	}

</script>


</head>
<body>

	<div id="hidebg" class="hidebg"></div>
	<div id="win" class="win" style="display:none">
		<form action="userservlet" method="post">
			<span style="font-size:20px; color:green">欢迎登陆</span><br />
			<label class="label">用户名</label><input type="text" name="username" id="username" required placeholder="请输入您的用户名" /><br />
			<label class="label">密码</label><input type="password" name="userpassword" id="userpassword" required placeholder="请输入您的密码" /><br />
			<input type="reset" value="重置" class="input1"/>
			<input type="button" value="退出" class="input3" onclick="closeLogin()" />
			<input type="submit" value="登陆" class="input2" />
		</form>
	</div>

	<table align="center" style="background-color:lightcoral;color:yellow;width:1000px;height:30px">
	<tr>
	<center>
			<img src="img/2.jpg" style="width: 1000px;height:250px">
	</center>
	</tr>
	<tr style="background-color:lightcoral;width:1000px">
	<td><a href="shouye.jsp">首页</a></td>
	<td><a href="">精选文章</a></td>
	<td><a href="">线下活动</a></td>
	<td><a href="">消防经验</a></td>
	<form action="" align="right">
	<td><input type="text">
	<input type="button" value="搜索" style="width:80px; background-color:blue">
	</td>
	<td><a href="javascript:openLogin()">用户登陆</a></td>
	<td style="color:red"><a href="userregister.jsp">免费注册</a></td>
	</form>
	</tr>
	</table>
</body>
</html>