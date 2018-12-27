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
	
	<link rel="stylesheet" href="<%=path %>/css/style.css" type="text/css" media="all"/>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
    
    </script>
</head>
  
<body>

<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>




<div id="div1" class="clearfix" style="margin-top: 10px;">
	<table style="border: 2px;">
	   <tr>  
	       <td align="left" valign="top">
	            <jsp:include flush="true" page="/qiantai/left.jsp"></jsp:include>
	       </td>
	       <td align="left" valign="top">
			    <div class="center450" style="height: 100%;width: 760px;margin-top: 3px;">
			    	<div class="title-box">系统介绍</div>
			        <div style="margin-left: 10px;margin-top: 10px;margin-bottom: 20px;">
					     <div style="line-height: 200%">${requestScope.jieshao.neirong }</div>
			        </div>
			    </div>
	       </td>
	   </tr>
	</table>
</div>




<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>




</body>
</html>
