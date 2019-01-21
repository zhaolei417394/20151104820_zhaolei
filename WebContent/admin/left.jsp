<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="<%=path %>/css/common_style_blue.css" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript">
		function menuClick( menuDiv )
		{
			$(".MenuLevel2").not( $(menuDiv).next() ).hide();
			$(menuDiv).next().toggle();
		}
		
		$(function()
		{
			$(".MenuLevel2").hide();
			$(".MenuLevel2:first").show();
		});
	</script>

    <style type="text/css">
		html{
		height: 100%;
		}
		*{ font-family:Microsoft Yahei; }
		body {
			background: none repeat scroll 0 0 #D8EDFC;
			margin: 0;
			padding: 0;
		}
		#Menu {
		    margin: 0;
		    padding: 0;
		    width: 155px;
			background: none repeat scroll 0 0 #D8EBF7;
		    list-style: none outside none;
			
			margin-left: 3px;
			border-top: 3px solid #4891C6;
		}
		#Menu .level1 {
		 color: #005790;
		    font-weight: bold;
		    padding-bottom: 1px;
			  cursor: pointer;
		}
		#Menu .level1 .level1Style {
		  background: url("<%=path %>/images/img/menu_btn_bg.gif") no-repeat scroll 0 0 transparent;
		    height: 23px;
		    padding-left: 20px;
		    padding-top: 5px;
		    width: 135px;
			margin-bottom: -4px
		}
		#Menu .level1 .level1Style .Icon {
			margin-top: -2px;
		}
		#Menu .level1 .MenuLevel2 {
		 background: none repeat scroll 0 0 #D8EBF7;
		    list-style: none outside none;
		    margin: 0;
		    padding: 0;
		}
		#Menu .level1 .MenuLevel2 .level2Style{
			color: #005790;
		    font-weight: normal;
			border-top: 1px solid #EFF6FB;
			height: 18px;
			padding-left: 43px;
			padding-top: 5px;
			width: 112px;
			background-image:url(<%=path %>/images/img/menu_arrow_single.gif);
			background-color: #8EC4E9;
			background-repeat: no-repeat;
			background-position: 29px center;
		}
	</style>
    
    
</head>
  
<body>
	
    <ul id="Menu">
	    <li class="level1">
            <div onClick="menuClick(this);" class="level1Style">
				<img src="<%=path %>/images/func20001.gif" class="Icon" /> 
				系统菜单
			</div>
            <ul class="MenuLevel2">
            	<li class="level2 level2Style">
                    <a target="right" href="<%=path %>/admin/userinfo/userPw.jsp">修改登陆密码</a>
				</li>
                <li class="level2 level2Style">
                	<a target="right" href="<%=path %>/lianjie?type=lianjieMana">友情链接管理</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="<%=path %>/info?type=jieshaoMana">系统介绍管理</a>
				</li>
				
				
				
				<li class="level2 level2Style">
                	<a target="right" href="<%=path %>/user?type=userMana">注册信息管理</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="<%=path %>/liuyanban?type=liuyanbanMana">建言献策管理</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="<%=path %>/gonggao?type=gonggaoMana">系统公告管理</a>
				</li>
				
				
				
				<li class="level2 level2Style">
                	<a target="right" href="<%=path %>/111">111</a>
				</li>
            </ul>
        </li>
    </ul>
</body>
</html>
