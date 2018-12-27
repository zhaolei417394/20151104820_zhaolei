<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%String path = request.getContextPath();%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
	
	<style rel="stylesheet" type="text/css">
	    @charset "utf-8";
		* { font: 13px/1.5 '微软雅黑'; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; -box-sizing: border-box; padding:0; margin:0; list-style:none; box-sizing: border-box; }
		body, html { height:100%; overflow:hidden; }
		body { background:#93defe; background-size: cover; }
		a { color:#27A9E3; text-decoration:none; cursor:pointer; }
		img{ border:none;}
		
		.login_box{ width:1100px; margin:120px auto 0;}
		.login_box .login_l_img{ float:left; width:432px; height:440px; margin-left:50px;}
		.login_box .login_l_img img{width:500px; height:440px; }
		.login {height:270px; width:300px; padding:50px; background-color: #ffffff;border-radius:6px;box-sizing: border-box; float:right; margin-right:50px; position:relative; margin-top:50px;}
		.login_logo{ width:120px; height:120px; border:5px solid #93defe;border-radius:100px; background:#fff; text-align:center; line-height:110px; position:absolute; top:-60px; right:140px;}
		.login_name{ width:100%; float:left; text-align:center; margin-top:20px;}
		.login_name p{ width:100%; text-align:center; font-size:18px; color:#444; padding:10px 0 20px;}
		.login_logo img{ width:60px; height:60px;display: inline-block; vertical-align: middle;}
		.copyright { font-size:14px; color:#fff; display:block;width:100%; float:left; text-align:center; margin-top:60px;}
		
		#password_text{border: 1px solid #DCDEE0; vertical-align: middle; border-radius: 3px; height: 50px; padding: 0px 16px; font-size: 14px; color: #888; outline:none; width:100%;margin-bottom: 15px;display: block; line-height:50px;}
    </style>
    

    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    
    
    <script type="text/javascript">
        function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入账号");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
		}
        function check2()
		{                                                                                         
        	window.location.href="<%=path %>/qiantai/default.jsp";
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("用户名或密码错误");
		    }
		    if(data=="yes")
		    {
		        alert("通过验证,系统登录成功");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	</script>
</head>
  
<body>
<div class="login_box">
      <div class="login_l_img"><img src="<%=path %>/images/login-img.png" /></div>
      <div class="login">
          <div class="login_logo"><a href="#"><img src="<%=path %>/images/login_logo.png" /></a></div>
          <div class="login_name">
               <p>管理员登陆</p>
          </div>
          <form method="post" name="ThisForm" action="">
              <table align="left" border="0" cellpadding="1" cellspacing="1">
						<tr align='center' style="height: 50px;">
							<td style="width: 40px;" align="right">
								账号：										    
							</td>
							<td align="left">
								<input name="userName" type="text" style="width: 240px;"/>
							</td>
						</tr>
						<tr align='center' style="height: 50px;">
							<td style="width: 40px;" align="right">
								密码：										    
							</td>
							<td align="left">
								<input name="userPw" type="text" style="width: 240px;"/>
							</td>
						</tr>
						<tr align='center' style="height: 50px;display: none;">
							<td style="width: 40px;" align="right">
								类型：										    
							</td>
							<td align="left">
								<select name="userType" style="width: 244px;">
								    <option value="0">0</option>
								    <option value="2">2</option>
								</select>
							</td>
						</tr>
						<tr align='center' style="height: 50px;">
							<td style="width: 40px;" align="right">
																		    
							</td>
							<td align="left">
								<input type="button" value="登录" style="width: 90px;height: 34px;" onClick="check1()">&nbsp; 
	                            <input type="reset" value="重置" style="width: 90px;height: 34px;"/>&nbsp;
	                            <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>	
							</td> 
						</tr>
					</table>
          </form>
      </div>
      <div class="copyright">某某有限公司 版权所有© 技术支持电话：000-00000000</div>
</div>
<div style="text-align:center;">

</div>
</body>
</html>
