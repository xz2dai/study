<%@ page language="java" import="java.util.*,net.hunau.goodsmanager.bean.GoodsType" pageEncoding="utf-8" %>
<%

    String path = request.getContextPath();
%>
<HTML>
<HEAD>
    <TITLE>Untitled Page</TITLE>
    <META http-equiv=Content-Type content="text/html; charset=utf-8">
    <LINK href="../../css/biz.css" type=text/css rel=stylesheet>
</HEAD>
<BODY>
<SCRIPT type=text/javascript>
</SCRIPT>
<DIV>
    <TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR  class="bg_header"  height=47>
            <TD width=10><SPAN class="main_hl"></SPAN></TD>
            <TD>
                <SPAN class="main_hl2"></SPAN>
                <SPAN class="main_hb">订单明细 </SPAN>
                <SPAN class="main_hr"></SPAN>
            </TD>
            <TD  class="main_rc " width=10></TD>
        </TR>
        <TR>
            <TD class="main_ls">&nbsp;</TD>
            <TD class="main_nu" vAlign=top align=middle>
                <DIV>
                    <TABLE class=gridView style="WIDTH: 80%; BORDER-COLLAPSE: collapse"  cellSpacing=0 rules=all  border=0>
                        <TBODY>
                        <TR>
                            <td>
                                <div id="pagination">
                                    <table class=gridView   style="WIDTH: 100%; BORDER-COLLAPSE: collapse" width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <TR>
                                            <TH class=gridViewHeader >订单编号</TH>
                                            <TH class=gridViewHeader >商品编号</TH>
                                            <TH class=gridViewHeader >商品名称</TH>
                                            <TH class=gridViewHeader >商品数量</TH>
                                            <TH class=gridViewHeader >商品单价</TH>
                                            <TH class=gridViewHeader >商品总价</TH>
                                            <TH class=gridViewHeader >商品类型</TH>
                                            <TH class=gridViewHeader >合计</TH>
                                        </TR>
                                        <TR>
                                            <TD class=gridViewItem>1012070601</TD>
                                            <TD class=gridViewItem>10022</TD>
                                            <TD class=gridViewItem>蒙牛牛奶</TD>
                                            <TD class=gridViewItem>30</TD>
                                            <TD class=gridViewItem>10元</TD>
                                            <TD class=gridViewItem>300元</TD>
                                            <TD class=gridViewItem>食品</TD>
                                            <TD class=gridViewItem>是</TD>
                                        </TR>
                                        <TR>
                                            <TD class=gridViewItem>1012070601</TD>
                                            <TD class=gridViewItem>10002</TD>
                                            <TD class=gridViewItem>雀巢咖啡</TD>
                                            <TD class=gridViewItem>30</TD>
                                            <TD class=gridViewItem>10元</TD>
                                            <TD class=gridViewItem>300元</TD>
                                            <TD class=gridViewItem>食品</TD>
                                            <TD class=gridViewItem>是</TD>
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
