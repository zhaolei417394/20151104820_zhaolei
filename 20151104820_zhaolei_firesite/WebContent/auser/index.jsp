<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
    
    </script>
</head>
  
     <frameset rows="70px,*,19px" framespacing="0" border="0" frameborder="0">
		<frame src="<%=path %>/auser/top.jsp" scrolling="no" noresize /> 
		<frameset cols="178px,*">
			<frame noresize src="<%=path %>/auser/left.jsp" scrolling="yes" /> 
			<frame noresize name="right" src="<%=path %>/auser/right.jsp" scrolling="yes" /> 
		</frameset>
		<frame noresize name="status_bar" scrolling="no" src="<%=path %>/auser/bottom.jsp" />
	</frameset>
	<noframes>
		<body>
			你的浏览器不支持框架布局
		</body>
	</noframes>
</html>
