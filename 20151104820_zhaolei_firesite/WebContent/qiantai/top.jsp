<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!doctype html>
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
    
    </script>
</head>
  
<body>
<table align="center" width:1000px;height:30px">
	<center>
			<img src="img/1.jpg" style="width: 1000px;height:250px">
	</center>
<div id="menu-box" class="clearfix">
	<ul>
    	<li style="margin-left: 60px;"><a href="<%=path %>/qiantai/default.jsp">系统首页</a></li>
    	<li><a href="<%=path %>/xinwen?type=xinwenAll">新闻中心</a></li>
        <li style="margin-left: 15px;"><a href="<%=path %>/liuyanban?type=liuyanbanAll">建言献策</a></li>
    </ul>
</div>
</table>

    
</body>
</html>
