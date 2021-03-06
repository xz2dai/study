<%@page language="java" import="java.util.*,net.hunau.goodsmanager.bean.User"
	pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ page import="net.hunau.goodsmanager.dao.UserDAO" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.PrintWriter" %>

<%
	
String path = request.getContextPath();
%>




<HTML>
<HEAD>
<TITLE>查看用户列表</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="../../css/biz.css" type=text/css rel=stylesheet>
</HEAD>
<BODY>

	<script type="text/javascript">
		function Goto() {
		}
		function validateUser(flag, userName) {

			document.frm.op.value = flag;
			document.frm.userName.value = userName;
			document.frm.submit();

		}
	</script>
	<DIV>
		<form action='<%=path%>/servlet/FlagUserServlet' method='post'
			name='frm'>
			<input name='op' value='1' type='hidden'> <input
				name='userName' value='' type='hidden'>
		</form>
		<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
			<TBODY>
				<TR class="bg_header" height=47>
					<TD width=10><SPAN class="main_hl"></SPAN></TD>
					<TD><SPAN class="main_hl2"></SPAN> <SPAN class="main_hb">用户管理
					</SPAN> <SPAN class="main_hr"></SPAN></TD>
					<TD class="main_rc" width=10></TD>
				</TR>
				<TR>
					<TD class="main_ls">&nbsp;</TD>
					<TD class="main_nu" vAlign=top align=middle>
						<DIV>
							<TABLE class=gridView
								style="WIDTH: 100%; BORDER-COLLAPSE: collapse" cellSpacing=0
								rules=all border=1>
								<TBODY>
									<TR>
										<TH class=gridViewHeader style="WIDTH: 50px" scope=col>&nbsp;</TH>
										<TH class=gridViewHeader scope=col>用户名</TH>
										<TH class=gridViewHeader scope=col>是否注销</TH>
										<TH class=gridviewHeader scope=col>用户详情</TH>
										<TH class=gridviewHeader scope=col>更新</TH>
										<TH class=gridviewHeader scope=col>注销</TH>
									</TR>
										<%-- 从数据库获取所有用户信息并填入表 --%>
										<%
											UserDAO userDAO = new UserDAO();
											List<User> userList = userDAO.getAllUsers();
											for(User user:userList){
										%>
									<TR>
										<TD class=gridViewItem style="WIDTH: 50px"><IMG
												src="../../images/bg_users.gif"></TD>
										<TD class=gridViewItem><%=user.getUsername()%></TD>
										<%
											String DismissState;
											//获取用户状态
											if(user.getValidateFlag()==1){
												DismissState = "否";
											}else{
												DismissState = "是";
											}
										%>
										<TD class=gridViewItem><%=DismissState%></TD>
										<TD class=gridViewItem><A class=cmdField
																  href="detailUser.jsp?userName=<%=user.getUsername()%>">查看详情</A></TD>
										<TD class=gridViewItem><A class=cmdField
																  href="updataUser.jsp?userName=<%=user.getUsername()%>">编辑</A></TD>
										<TD class=gridViewItem>
											<%
												if(user.getValidateFlag()==1){
											%>
											<a class=cmdField id="changeFlagbtn"
											   href="javascript:Goto();"
											   onclick='{if(confirm("确定要禁用吗?")) {validateUser("0","<%=user.getUsername()%>"); }else {}}'>禁用</a>
											<%
												}else{
											%>
											<a class=cmdField id="changeFlagbtn"
											   href="javascript:Goto();"
											   onclick='{if(confirm("确定要启用吗?")) {validateUser("1","<%=user.getUsername()%>"); }else {}}'>启用</a>
											<%
												}
											%>
										</TD>
									</TR>
									<%
										}
									%>

						</TBODY>
							</TABLE>
						</DIV>
					</TD>
					<TD class="main_rs"></TD>
				</TR>
				<TR class="main_fs" height=10>
					<TD class="main_lf"></TD>
					<TD class="main_fs"></TD>
					<TD class="main_rf"></TD>
				</TR>
			</TBODY>
		</TABLE>
	</DIV>
</BODY>
</HTML>