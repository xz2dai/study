<%@ page language="java" import="java.util.*,net.hunau.goodsmanager.bean.GoodsType" pageEncoding="utf-8" %>
<%

    String path = request.getContextPath();
%>
<HTML>
<HEAD>
    <TITLE>Untitled Page</TITLE>
    <META http-equiv=Content-Type content="text/html;charset=utf-8">
    <LINK href="../../css/biz.css" type=text/css rel=stylesheet>
</HEAD>
<BODY>
<SCRIPT type=text/javascript>
    function deliverGoods() {
        alert("发货成功，并发送邮件提醒...!");
    }
</SCRIPT>
<DIV>
    <TABLE>
        <TBODY>
        <TR class="bg_header" height=47>
            <TD width=10><SPAN class="main_hl"></SPAN></TD>
            <TD>
                <SPAN class="main_hl2"></SPAN>
                <SPAN class="main_hb">订单查询</SPAN>
                <SPAN class="main_hr"></SPAN>
            </TD>
            <TD class="main_rc " width=10></TD>
        </TR>
        <TR>
            <TD class="main_ls">&nbsp;</TD>
            <TD class="main_nu" vAlign=top align=middle>
                <DIV>
                    <TABLE class=gridView style="WIDTH: 80%; BORDER-COLLAPSE: collapse" cellSpacing=0 rules=all
                           border=0>
                        <TBODY>
                        <TR>
                            <TH class=gridViewHeader>订单查询</TH>
                        </TR>
                        <TR>
                            <TD> &nbsp;&nbsp;&nbsp;订单编号 &nbsp;&nbsp;&nbsp; <label>
                                <input class=gridViewItem type="text"
                                       name="orderID">
                            </label>
                                &nbsp;&nbsp;&nbsp;<input class="button" type="button" value="查询"/>
                            </TD>
                        </TR>
                        <TR>
                            <td>
                                <div id="pagination">
                                    <table class=gridView style="WIDTH: 100%; BORDER-COLLAPSE: collapse" width="90%"
                                           border="0" align="center" cellpadding="0" cellspacing="0">
                                        <TR>
                                            <TH class=gridViewHeader>订单编号</TH>
                                            <TH class=gridViewHeader>账号名称</TH>
                                            <TH class=gridViewHeader>订单日期</TH>
                                            <TH class=gridViewHeader>订单状态</TH>
                                            <TH class=gridviewHeader>订单明细</TH>
                                            <TH class=gridviewHeader>订单操作</TH>
                                        </TR>
                                        <TR>
                                            <TD class=gridViewItem>1012070601</TD>
                                            <TD class=gridViewItem>Admin</TD>
                                            <TD class=gridViewItem>2012-07-06 09:42</TD>
                                            <TD class=gridViewItem>已付款待发货</TD>
                                            <TD class=gridViewItem><A class=cmdField href="detailOrder.jsp">明细查询</A>
                                            </TD>
                                            <TD class=gridViewItem><input class="button" type="button" value="发货"
                                                                          onclick="deliverGoods()"/></TD>
                                        </TR>
                                        <TR>
                                            <TD class=gridViewItem>1012070602</TD>
                                            <TD class=gridViewItem>lili</TD>
                                            <TD class=gridViewItem>2012-07-03 13:32</TD>
                                            <TD class=gridViewItem>未付款</TD>
                                            <TD class=gridViewItem><A class=cmdField href="#">明细查询</A></TD>
                                            <TD class=gridViewItem>待买家付款</TD>
                                        </TR>
                                        <TR>
                                            <TD class=gridViewItem>1012070603</TD>
                                            <TD class=gridViewItem>Admin</TD>
                                            <TD class=gridViewItem>2012-07-06 12:28</TD>
                                            <TD class=gridViewItem>待买家收货</TD>
                                            <TD class=gridViewItem><A class=cmdField href="#">明细查询</A></TD>
                                            <TD class=gridViewItem>待买家收货</TD>
                                        </TR>
                                        <TR>
                                            <TD class=gridViewItem>1012070604</TD>
                                            <TD class=gridViewItem>Admin</TD>
                                            <TD class=gridViewItem>2012-07-06 22:52</TD>
                                            <TD class=gridViewItem>交易完成</TD>
                                            <TD class=gridViewItem><A class=cmdField href="#">明细查询</A></TD>
                                            <TD class=gridViewItem>交易完成</TD>
                                        </TR>
                                    </table>
                                </div>
                            </td>
                        </TR>
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
