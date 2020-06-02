<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统登录</title>
<link href="css/login.css" rel="stylesheet" rev="stylesheet"
	type="text/css" media="all" />
<link href="css/demo.css" rel="stylesheet" rev="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>

<script>
	function checkForm() {
		var userName = document.getElementById("userName").value;
		var pwd = document.getElementById("pwd").value;
		if (userName == "") {
			alert("请输入用户名!");
			return false;
		}
		if (pwd == "") {
			alert("请输入密码!");
			return false;
		}
		return true;
	}
</script>


</head>

<body>


	<div class="header">
		<h1 class="headerLogo">
			<a title="后台管理系统" target="_blank" href="#"><img alt="logo"
				src="images/logo.gif"/></a>
		</h1>
	</div>

	<div class="banner">

		<div class="login-aside">
			<div id="o-box-up"></div>
			<div id="o-box-down" style="table-layout: fixed;">
				<div class="error-box"></div>

				<form class="registerform"
					action="${pageContext.request.contextPath}/login.do" method="post"
					onsubmit="return checkForm()">

					<div class="fm-item">
						<label for="logonId" class="form-label">MISS系统登陆：</label>
						<h2>
							<font color="red">${loginError }</font>
						</h2>

						<input id="userName" value="${loginName }" name="name" size="20"
							class="i-text" ajaxurl="demo/valid.jsp" />
						<div class="ui-form-explain"></div>
					</div>

					<div class="fm-item">
						<label for="logonId" class="form-label">登陆密码：</label> <input
							id="pwd" type="password" name="pwd" size="22" value=""
							maxlength="100" id="password" class="i-text" />
						<div class="ui-form-explain"></div>
					</div>

					

					<div class="fm-item">
						<label for="logonId" class="form-label"></label> <input
							type="submit" value="" tabindex="4" id="send-btn"
							class="btn-login" />
						<div class="ui-form-explain"></div>
					</div>

				</form>

			</div>

		</div>

		<div class="bd">
			<ul>
				<li
					style="background: url(themes/theme-pic1.jpg) #CCE1F3 center 0 no-repeat;"><a
					target="_blank" href="#"></a></li>
				<li
					style="background: url(themes/theme-pic2.jpg) #BCE0FF center 0 no-repeat;"><a
					target="_blank" href="#"></a></li>
			</ul>
		</div>

		<div class="hd">
			<ul></ul>
		</div>
	</div>
	<script type="text/javascript">
		jQuery(".banner").slide({
			titCell : ".hd ul",
			mainCell : ".bd ul",
			effect : "fold",
			autoPlay : true,
			autoPage : true,
			trigger : "click"
		});
	</script>


	<div class="banner-shadow"></div>



</body>
</html>
