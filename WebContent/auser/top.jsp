<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="<%=path %>/css/common_style_blue.css" rel="stylesheet" type="text/css" />
	
	<style rel="stylesheet" type="text/css">
		body {
		margin: 0;
		}
		#Head_1 {
		    background: url("<%=path %>/images/img/top_head1_bg.gif") repeat-x scroll 0 0 transparent;
		    height: 64px;
		    margin: 0 auto;
		    width: 100%;
		}
		#Head_1 #Head_1_Logo {
			float: left;
		    left: 20px;
		    position: absolute;
		    top: 12px;
			color: #F1F9FE;
		    font-family: Arial Black,Arial;
		    font-size: 28px;
		}
		#Head_1 #Head_1_UserWelcome {
		    float: right;
		    color: #B3E1FF;
		    font-family: "宋体";
		    font-size: 12px;
		    height: 25px;
			padding-top: 11px;
			margin-right: 20px;
		}
		#Head_1 #Head_1_FunctionButton {
		    float: left;
		    position: absolute;
		    right: 5px;
		    top: 35px;
			margin-right: 15px;
		}
		#Head_1 #Head_1_FunctionButton img {
		margin-left: 10px;
		}
		#Head_2 {
		   background: url("<%=path %>/images/img/top_head2_bg.gif") repeat-x scroll 0 0 transparent;
		    border-bottom: 1px solid #FFFFFF;
		    border-top: 1px solid #A0C6E1;
		    height: 36px;
		    margin: 0;
		    width: 100%;
		}
		#Head_2 #Head2_Awoke {
			float: left;
		    height: 100%;
		    padding-left: 19px;
		    padding-top: 2px;
		}
		#Head_2 #Head2_Awoke #AwokeNum {
			position: absolute;
			left: 20px;
			top: 68px;	
			width: 406px;
			/*height: 21px;*/
			margin-top: 0;
			padding: 0;
			padding-top: 2px;
			list-style-type: none;
			margin-bottom: 0;
			margin-left: 0;
		}
		#Head_2 #Head2_Awoke #AwokeNum li {
		  float: left;
		    margin: 3px;
			display: inline;
		}
		#Head_2 #Head2_Awoke #AwokeNum a {
		   color: #FFFFFF;
		    font-family: "宋体";
		    font-size: 12px;
		    text-decoration: none;
		}
		#Head_2 #Head2_Awoke #AwokeNum .Line {
		    border-left: 1px solid #005A98;
		    border-right: 1px solid #A0C6E1;
		    height: 17px;
		    width: 0px;
		}
		#Head_2 #Head2_FunctionList, .Head2_FunctionList {
		    color: #FFFFFF;
		    float: right;
		    font-family: "宋体";
		    font-size: 13px;
		    height: 100%;
		    padding-right: 26px;
		    padding-top: 10px;
		}
    </style>

    <script type="text/javascript">
        function logout()
		{
		   if(confirm("确定要退出本系统吗??"))
		   {
			   window.parent.location="<%=path %>/login.jsp";
		   }
		}
    </script>
</head>
  
<body>
	<div id="Head_1">
		<div id="Head_1_Logo" style="margin-top: 5px;">
			<b style="font-family: '黑体';font-size: 21px;">基于JAVAEE的消防网站</b> <!-- <img border="0" src="<%=path %>/images/logo.png" /> -->
        </div>
		<div id="Head_1_UserWelcome" style="font-family: 微软雅黑">
			<c:if test="${sessionScope.userType==0}">
			<img border="0" width="13" height="14" src="<%=path %>/images/user.gif" /> 您好：管理员
			&nbsp;&nbsp;
			<a href="#" onclick="logout()"><img width="78" height="20" alt="退出系统" src="<%=path %>/images/logout.gif" /></a>
			</c:if>
		</div>
	</div>
</body>
</html>
