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
		function liuyanbanAdd()
        {
                 var strUrl = "<%=path %>/qiantai/liuyanban/liuyanbanAdd.jsp";
	             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	             window.location.reload();
        }
        
        function liuyanbanDetail(id)
        {
             var strUrl = "<%=path %>/liuyanbanDetail.action?id="+id;
             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:400px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
        }
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
			    	<div class="title-box">留言板</div>
			        <div style="margin-left: 10px;margin-top: 10px;">
			             <c:forEach items="${requestScope.liuyanbanList}" var="liuyanban" varStatus="sta">
							<table border="0" width="100%" cellpadding="2" cellspacing="2">
							   <tr><td align="left" style="width: 70%">&nbsp;<img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> ${liuyanban.neirong }</td><td align="right" style="width: 30%">${liuyanban.liuyanshi }</td></tr>
							   <tr><td align="left" style="width: 70%">回复内容：${liuyanban.huifu }</td><td align="right" style="width: 30%"></td></tr>
							   <tr><td align="left" style="width: 70%">回复时间：${liuyanban.huifushi }</td><td align="right" style="width: 30%"></td></tr>
							   <tr><td align="left" style="width: 100%" colspan="2"><div style="border-bottom:#999 1px dashed;border-top:1px;">&nbsp;</div></td></tr>
							</table>	                      
			             </c:forEach>
			             <center><a href="#" onclick="liuyanbanAdd()">我要留言</a></center> 
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
