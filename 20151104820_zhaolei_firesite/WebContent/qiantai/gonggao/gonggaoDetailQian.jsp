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


<%-- <div id="slider-box" style="background:url(<%=path %>/images/slider4.jpg) center center;"></div> --%>


<div id="div1" class="clearfix" style="margin-top: 10px;">
	<table style="border: 2px;">
	   <tr>  
	       <td align="left" valign="top">
	            <jsp:include flush="true" page="/qiantai/left.jsp"></jsp:include>
	       </td>
	       <td align="left" valign="top">
	            <div class="center450" style="height: 100%;width: 760px;margin-top: 3px;">
			    	<div class="title-box">公告信息</div>
			        <div style="margin-left: 10px;margin-top: 10px;">
			             <div><c:out value="${requestScope.gonggao.title}" escapeXml="false"></c:out></div>
		                 <%-- <div style="margin-top: 8px;"><img style="border:1px solid  #CCCCCC;" src="<%=path %>/${gonggao.fujian }" height="300" width="660"/></div> --%>
		                 <div style="margin-top: 8px;line-height: 200%"><c:out value="${requestScope.gonggao.content}" escapeXml="false"></c:out></div>
		                 <div style="margin-top: 8px;">发布时间：<c:out value="${requestScope.gonggao.shijian}" escapeXml="false"></c:out></div> 
		                 <br/><br/><br/>
			        </div>
			    </div>
	       </td>
	   </tr>
	</table>
</div>


<!-- <div id="div2" class="clearfix">
	<div class="left260" style="height: 190px;width: 997px;">
    	<div class="title-box">产品展示<a href="#" class="title-more">&nbsp;</a></div>
        <div>dfdfddd </div>
    </div>
</div>  -->






<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>




</body>
</html>
