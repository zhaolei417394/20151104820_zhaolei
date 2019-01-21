<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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


<div id="div5" class="clearfix" style="margin-top: 6px;">
    <div class="link-box">
    	<span style="margin-left: 30px;">
    	     <c:forEach items="${sessionScope.lianjieList }" var="lianjie" varStatus="ss">
    	        <a href="${lianjie.www }" target="_blank">${lianjie.mingcheng }</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	     </c:forEach>
    	</span>
    </div>
</div>


<div id="div6">
  Copyright &copy; All rights reserved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="<%=path %>/login.jsp" style="color: white">系统后台</a>
</div>   
</body>
</html>
