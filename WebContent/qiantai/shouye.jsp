<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>

<style type="text/css">

.clearBoth {
	clear: both;
}

.win1{
	POSITION:absolute;left:55%;top:60%;
	width:400px;height:250px;
	margin-left:-300px;margin-top:-200px;border:1px solid #888;
	background-color:red;text-align:center;
	line-height:60px;z-Index:3;
}

.hidebg1{
	position:absolute;left:0px;top:0px;
	background-color:#000;
	width:100%;
	filter:alpha(opacity=60);
	opacity:0.6;
	display:none;
	z-Index:2;
}

</style>

</head>
<body>
	<table align="center" style="background-color:red;color:yellow;width:1000px;height:30px">
	<tr>
	<center>
			<img src="img/1.jpg" style="width: 1000px;height:250px">
	</center>
	<tr style="background-color:red;width:1000px">
	<td></td>
	<td><a href="">首页</a></td>
	<td><a href="">组织结构</a></td>
	<td><a href="">政治工作</a></td>
	<td><a href="">消防新闻</a></td>
	<td><a href="">警务信息</a></td>
	<td><a href="">警方提示</a></td>
	<td><a href="">警队建设</a></td>
	<td><a href="">器材介绍</a></td>
	<td><a href="user.jsp">互动交流</a></td>
	<form action="" align="right">
	<td><input type="text"></td>
	<td><input type="button" value="搜索" style="width:80px; background-color:red"></td>
	</form>
	</tr>
	</table>
	
	

</body>
</html>