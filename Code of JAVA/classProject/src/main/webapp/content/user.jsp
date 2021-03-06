<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 引入外部JSTL的标签库 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">

<head>
	<title>Tables</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/content/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/content/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/content/assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/content/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/content/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/content/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/content/assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand" style="padding: 1px">
				<a href="${pageContext.request.contextPath}/Logout"><img
						src="${pageContext.request.contextPath}/content/assets/img/logo-main.png" class="logo"
						style="height: 60px;padding-top: 15px" alt="主页"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form action="<c:url value="/OrdersSearch"/>" method="post" class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" name="input" required="" class="form-control" placeholder="搜索订单号...">
						<span class="input-group-btn"><input type="submit" class="btn btn-primary" value="go"></span>
					</div>
				</form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>仓库剩余空间不足</a>
								</li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>9个订单未处理</a>
								</li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>月度总结可用</a>
								</li>
								<li><a href="#" class="notification-item"><span
										class="dot bg-warning"></span>每周总结将在1小时内开始</a></li>
								<li><a href="#" class="more">查看所有信息</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
									class="lnr lnr-question-circle"></i> <span>Help</span> <i
									class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">基本使用</a></li>
								<li><a href="#">店铺相关</a></li>
								<li><a href="#">店铺证书</a></li>
								<li><a href="#">我有意见</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img
									src="${pageContext.request.contextPath}/content/assets/img/user.png"
									class="img-circle" alt="Avatar">
								<span>${user_info.userName}</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/userProfileServlet?userID=${user_info.userID}"><i class="lnr lnr-user"></i>
									<span>个人主页</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
								<li><a href="${pageContext.request.contextPath}/Logout"><i class="lnr lnr-exit"></i> <span>登出</span></a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="${pageContext.request.contextPath}/content/makeorder.jsp" class=""><i
								class="lnr lnr-home"></i> <span>点单</span></a></li>
						<li><a href="<c:url value="/OrdersList"/>" class=""><i
								class="lnr lnr-code"></i> <span>查看订单</span></a></li>
						<li><a href="${pageContext.request.contextPath}/content/income.jsp" class=""><i
								class="lnr lnr-chart-bars"></i> <span>收支统计</span></a></li>
						<li><a href="<c:url value="/clientListServlet"/>" class=""><i
								class="lnr lnr-cog"></i> <span>客户管理</span></a></li>
						<li><a href="<c:url value="/GoodList"/>" class=""><i
								class="lnr lnr-database"></i> <span>查看商品</span></a></li>
						<li><a href="${pageContext.request.contextPath}/employeeListServlet" class=""><i
								class="lnr lnr-alarm"></i><span>员工管理</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<script src="assets/scripts/iconfont.js"></script>

					<h3 class="page-title">用户信息</h3>
					<div class="row">
						<div class="">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">用户管理表</h3>
									<form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/userSearchServlet">
										<div class="input-group">
											<input type="text" value="" required="" name="userID" class="form-control" placeholder="请输入用户ID....">
											<span  class="input-group-btn"><input type="submit" value="搜索" class="btn btn-primary"></span>
										</div>
									</form>
								</div>
								<div class="panel-body">

									<table class="table table-hover">
										<thead>
											<tr>
												<th>用户等级</th>
												<th>用户名</th>
												<th>用户ID</th>
												<th>性别</th>
												<th>用户类型</th>
												<th>手机号</th>
												<th>用户状态</th>
												<th>操作</th>

											</tr>
										</thead>

										<tbody>

										<c:forEach items="${userInfoPage.userInfoList}" var="userInfo">
											<tr class>
												<td>${userInfo.grade}</td>
												<td>${userInfo.userName}</td>
												<td>${userInfo.userID}</td>
												<td><c:if test="${userInfo.sex==0}">男</c:if>
													<c:if test="${userInfo.sex==1}">女</c:if>
												</td>
												<td><c:if test="${userInfo.grand==0}">会员</c:if>
													<c:if test="${userInfo.grand==1}">非会员</c:if>
												</td>
												 <td>${userInfo.phoneNum}</td>
												<c:if test="${userInfo.state==0}"><td> <span class="label label-success">信用好</span></td> </c:if>
												<c:if test="${userInfo.state==1}"><td> <span class="label label-default">信用一般</span></td> </c:if>
												<c:if test="${userInfo.state==2}"><td> <span class="label label-warning">信用警告</span></td> </c:if>
												<c:if test="${userInfo.state==3}"><td> <span class="label label-danger">信用差</span></td> </c:if>
												<td>
													<a href="${pageContext.request.contextPath}/userProfileServlet?userID=${userInfo.userID}" class="btn btn-primary">查看 </a>
													<a href="${pageContext.request.contextPath}/userDelServlet?userID=${userInfo.userID}"class="btn btn-primary">删除</a>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
									<div class="panel-footer " >
										<div class="text-center">当前页数:${userInfoPage.currentPage }总页数:${userInfoPage.totalPageCount }</div>
										<div class="text-right">
										<a onclick="" href="${pageContext.request.contextPath }/clientListServlet?page=1&size=5" class="btn btn-primary">首页</a>
											<a ${userInfoPage.currentPage==1?'class="disabled"':''}><a class="btn btn-primary" href="${pageContext.request.contextPath }/clientListServlet?page=${userInfoPage.currentPage==1?1:userInfoPage.currentPage-1 }&size=5">上一页</a>
											<a ${userInfoPage.currentPage==userInfoPage.totalPageCount?'class="disabled"':''}><a class="btn btn-primary" href="${pageContext.request.contextPath }/clientListServlet?page=${userInfoPage.currentPage==userInfoPage.totalPageCount?userInfoPage.totalPageCount:userInfoPage.currentPage+1 }&size=5">下一页</a>
											<a onclick="" href="${pageContext.request.contextPath }/clientListServlet?page=${userInfoPage.totalPageCount }&size=5" class="btn btn-primary">尾页</a>
										</div>
									</div>
								</div>
							</div>
							<!-- END BASIC TABLE -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Copyright &copy; 2017.Company name All rights reserved.</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="${pageContext.request.contextPath}/content/assets/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/content/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/content/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/content/assets/scripts/klorofil-common.js"></script>
</body>

</html>
