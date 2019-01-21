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
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
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
			             <c:forEach items="${requestScope.gonggaoList}" var="gonggao">
										   <div class="c1-bline" style="padding:11px 0px;">
										       <div class="f-left" style="margin-left: 10px;">
											         <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
										             <a href="<%=path %>/gonggao?type=gonggaoDetailQian&id=${gonggao.id}">${gonggao.title}</a>
										       </div>
										      <div class="f-right" style="margin-right: 10px;">${gonggao.shijian}</div>
										      <div class="clear"></div>
										  </div>
										</c:forEach>
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
