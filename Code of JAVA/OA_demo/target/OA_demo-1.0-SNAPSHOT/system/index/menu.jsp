<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/menu.css" />
</head>
<body>
	<div class="container-fluid" style="padding: 0;">
		<div class="row-fluid">
			<div class="col-md-12" style="padding: 0;">
				<ul id="main-nav" class="nav nav-tabs nav-stacked">
					<li>
						<a href="#systemSetting0" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-sort-by-attributes"></i>
							<span style="display: inline-block;margin-left: 20px;">考勤管理</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting0" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../attendance.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">考勤管理</a>
							</li>
							<li>
								<a href="../overtime.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">加班管理</a>
							</li>
							<li>
								<a href="../attendanceSetting.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">考勤设置</a>
							</li>
							<li>
								<a href="../attendanceStatistics.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">考勤统计</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting1" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-plane"></i>
							<span style="display: inline-block;margin-left: 20px;">请假管理</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting1" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../leave.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">请假管理</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting2" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-cutlery"></i>
							<span style="display: inline-block;margin-left: 20px;">审批管理</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting2" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../examine.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">审批管理</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting3" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-yen"></i>
							<span style="display: inline-block;margin-left: 20px;">报销管理</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting3" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../apply.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">报销管理</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting4" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-time"></i>
							<span style="display: inline-block;margin-left: 20px;">工作计划</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting4" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../work.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">工作计划</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting5" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-calendar"></i>
							<span style="display: inline-block;margin-left: 20px;">日程安排</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting5" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../schedule.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">日程安排</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting6" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-briefcase"></i>
							<span style="display: inline-block;margin-left: 20px;">办公用品</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting6" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../officeApply.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">申领管理</a>
							</li>
							<li>
								<a href="../officeSubscribe.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">申购管理</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting7" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-envelope"></i>
							<span style="display: inline-block;margin-left: 20px;">通知公告</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting7" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../noticeAdd.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">发布公告</a>
							</li>
							<li>
								<a href="../noticeExamin.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">公告审批</a>
							</li>
							<li>
								<a href="../noticeMy.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">我的公告</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting8" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-book"></i>
							<span style="display: inline-block;margin-left: 20px;">通讯录</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting8" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="../addressList.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">通讯录</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#systemSetting9" onclick="menuCss(this)" class="nav-header collapsed" data-toggle="collapse">
							<i class="glyphicon glyphicon-cog"></i>
							<span style="display: inline-block;margin-left: 20px;">系统管理</span>
							<span class="pull-right glyphicon glyphicon-chevron-down"></span>
						</a>
						<ul id="systemSetting9" class="nav nav-list collapse secondmenu" style="height: 0px;">
							<li>
								<a href="${pageContext.request.contextPath }/getUserInfoList" onclick="menuCss(this)" target="content" style="padding-left:25px;">用户管理</a>
							</li>
							<li>
								<a href="../menuSet.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">菜单设置</a>
							</li>
							<li>
								<a href="../roleList.html" onclick="menuCss(this)" target="content" style="padding-left:25px;">角色管理</a>
							</li>
							<li>
								<a href="../../img/workflow.png" onclick="menuCss(this)" target="content" style="padding-left:25px;">工作流程</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/menu.js"></script>
</html>