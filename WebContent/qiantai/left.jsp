<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<body>
<table>
   <tr>  
       <td>
            <div class="left260" style="height: 150px;">
		   	    <div class="title-box">用户登录</div>
		        <jsp:include flush="true" page="/qiantai/user/userLogin.jsp"></jsp:include>
		    </div>
		    <%-- <div class="left260" style="height: 100%;margin-top: 10px;">
		    	<div class="title-box">友情链接<!-- <a href="#" class="title-more">&nbsp;</a> --></div>
		        <ul>
		            <c:forEach items="${sessionScope.lianjieList}" var="lianjie">
		            <li style="margin-left: 9px;margin-top: 9px;"><img src="<%=path %>/images/li_ii.png"/><a href="${lianjie.www}" style="margin-left: 7px;" target="_blank">${lianjie.mingcheng}</a></li>
		            </c:forEach>
		        </ul>
		    </div> --%>
		    <div class="left260" style="height: 160px;margin-top: 10px;">
		    	<div class="title-box">系统公告<!-- <a href="#" class="title-more">&nbsp;</a> --></div>
		        <ul>
		            <c:forEach items="${sessionScope.gonggaoList}" var="gonggao">
		            <li style="margin-left: 9px;margin-top: 9px;"><img src="<%=path %>/images/li_ii.png"/><a href="<%=path %>/gonggao?type=gonggaoDetailQian&id=${gonggao.id}" style="margin-left: 7px;">${gonggao.title}</a></li>
		            </c:forEach>
		        </ul>
		    </div>
       </td>
   </tr>
</table>    
</body>  
</body>
</html>
