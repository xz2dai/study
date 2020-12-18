<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" />
<style type="text/css">
	.btn_a {
		width: 88px;
		line-height: 30px;
		font-size: 16px;
		background: #fff;
		color: #15a547;
		border: 1px solid #15a547;
		border-radius: 25px;
	}
	.btn_a:HOVER {
		background: #15a547;
		color: #fff;
		-moz-box-shadow: 1px 1px 1px #fff; /* 老的 Firefox */
		box-shadow: 1px 1px 1px #fff;
		border: 1px solid #fff;
	}
</style>
</head>
<body style="background: url('${pageContext.request.contextPath }/img/title.png') no-repeat;overflow: hidden;">
	<div style="width: 100%;text-align: right;line-height: 74px;padding-right: 20px;color: #FFFFFF;">
		<span style="color: #32394d;font-size: 18px;">【${userInfo.realName }】你好，今天是2017/06/16</span>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="password.jsp" class="btn btn-sm btn_a" target="content">修改密码</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath}/LogoutServlet" class="btn btn-sm btn_a" target="_top">退出</a>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
</html>