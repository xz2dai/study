<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.c611.classProject.bean.Orders" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
	List<Orders> list = (List<Orders>) request.getAttribute("list");
	int ListIndex=1;
%>

<html lang="en">

<head>
	<title>订单管理</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/content/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/content/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/content/assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/content/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/content/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/content/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath }/content/assets/img/favicon.png">
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
					<h3 class="page-title">订单管理</h3>
					<div class="row">
						<div class="">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">订单列表</h3>
								</div>
								<form action="<c:url value="/OrdersSearch"/>" method="post" class="navbar-form navbar-left">
									<div class="input-group">
										<input type="text" name="input" required="" class="form-control" placeholder="输入订单号...">
										<span class="input-group-btn"><input type="submit" class="btn btn-primary" value="搜索"></span>
									</div>
								</form>

								<div class="panel-body">
									<table class="table">
										<thead>
											<tr>
												<th>#</th>
												<th>订单ID</th>
												<th>订单用户ID</th>
												<th>订单商品ID</th>
												<th>订单描述</th>
												<th>订单状态</th>
												<th><a href="content/makeorder.jsp" class="btn btn-warning">创建新订单</a></th>
												<th><a href="/OrdersList" class="btn btn-primary">所有订单</a></th>
											</tr>
										</thead>

										<tbody>
										<%
											if(list!=null){
												for (Orders orders : list) {
										%>
										<tr>
											<td><%=ListIndex%>
											</td>
											<td><%=orders.getOrderID()%>
											</td>
											<td><%=orders.getOrderUserID()%>
											</td>
											<td><%=orders.getOrdergoodID()%>
											</td>
											<td><%=orders.getOrderDescribe()%>
											</td>
											<% if (orders.getOrderStatus()==1){%>
												<td><span class="label label-success">已完成</span>
											<th>
											<%}else{%>
												<td><span class="label label-warning">未完成</span></td>
											<th>
												<a href="${pageContext.request.contextPath}/OrdersFinish?OrderID=<%=orders.getOrderID()%>" class="btn btn-primary">完成订单</a>
											<%}%>

												<a href="${pageContext.request.contextPath}/OrdersDel?OrderID=<%=orders.getOrderID()%>" class="btn btn-danger">删除订单</a>
											</th>
										</tr>
										<%
												ListIndex++;
											} }%>
										</tbody>
									</table>


									<span>总共${ordersPage.totalCount }条记录 共${ordersPage.totalPageCount }页 当前第${ordersPage.currentPage }页</span>
									<!-- 分页 -->
									<ul class="pagination" style="float: right;margin: 0;">
										<li><a href="${pageContext.request.contextPath }/OrdersList?page=1&size=4" onclick="">首页</a></li>

										<%-- 遍历总页数显示每个页码 --%>
										<c:forEach var="page" begin="1" end="${ordersPage.totalPageCount }">
											<li><a href="${pageContext.request.contextPath }/OrdersList?page=${page }&size=4">${page }</a></li>
										</c:forEach>

                                        <li ${ordersPage.currentPage==1?'class="disabled"':''}><a href="${pageContext.request.contextPath }/OrdersList?page=${ordersPage.currentPage==1?1:ordersPage.currentPage-1 }&size=4">上一页</a></li>
                                        <li ${ordersPage.currentPage==ordersPage.totalPageCount?'class="disabled"':''}><a href="${pageContext.request.contextPath }/OrdersList?page=${ordersPage.currentPage==ordersPage.totalPageCount?ordersPage.totalPageCount:ordersPage.currentPage+1 }&size=4">下一页</a></li>

										<li><a href="${pageContext.request.contextPath }/OrdersList?page=${ordersPage.totalPageCount }&size=4" onclick="">尾页</a></li>
									</ul>



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
	<script src="${pageContext.request.contextPath }/content/assets/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/content/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/content/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath }/content/assets/scripts/klorofil-common.js"></script>
</body>

</html>