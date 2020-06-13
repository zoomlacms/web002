<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Flight_Order_Management, App_Web_gsb2bvz2" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>航班订单管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
<script type="text/javascript" src="../../../js/Drag.js"></script>
<script type="text/javascript" src="../../../js/Dialog.js"></script>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }

    function getinfo(id) {
        location.href = 'Flight_OrderInfo.aspx?id=' + id;
    }

    function opentitle(url, title) {
        var diag = new Dialog();
        diag.Width = 600;
        diag.Height = 400;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="Flight_Order_Management.aspx">航班订单管理</a>
        &gt;&gt; <span>订单列表</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabs">
            <tr class="tdbg">
                <td width="34%" height="24" align="center" class="title">
                    快速查找：
                    <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True">请选择查找方式</asp:ListItem>
                        <asp:ListItem Value="1">我负责跟踪的订单</asp:ListItem>
                        <asp:ListItem Value="2">今天的新订单</asp:ListItem>
                        <asp:ListItem Value="3">所有订单</asp:ListItem>
                        <asp:ListItem Value="4">最近10天内的新订单</asp:ListItem>
                        <asp:ListItem Value="5">最近一个月内的新订单</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="66%" align="center" class="title">
                    高级查询：
                    <asp:DropDownList ID="souchtable" runat="server">
                        <asp:ListItem Selected="True" Value="1">订单编号</asp:ListItem>
                        <asp:ListItem Value="2">客户名称</asp:ListItem>
                        <asp:ListItem Value="3">用户名</asp:ListItem>
                        <asp:ListItem Value="5">联系地址</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="souchkey" runat="server" class="l_input" />
                    <asp:Button ID="souchok" runat="server" Text=" 搜索 " class="C_input" OnClick="souchok_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td width="20" height="24" align="center" class="title">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="145" align="center" class="title">
                    订单编号
                </td>
                <td width="75" align="center" class="title">
                    客户名称
                </td>
                <td width="65" align="center" class="title">
                    用户名
                </td>
                <td width="160" align="center" class="title">
                    起飞时间
                </td>
                <td align="center" class="title" style="width: 68px">
                    实际金额
                </td>
                <td width="65" align="center" class="title">
                    收款金额
                </td>
                <td width="37" align="center" class="title">
                    已开发票
                </td>
                <td width="75" align="center" class="title">
                    订单状态
                </td>
                <td width="75" align="center" class="title">
                    付款状态
                </td>
                <td width="75" align="center" class="title">
                    其他费用
                </td>
            </tr>
            <asp:Repeater ID="Orderlisttable" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" id="<%#Eval("id") %>" onmouseover="this.className='tdbgmouseover'"
                        ondblclick="getinfo(this.id)" onmouseout="this.className='tdbg'">
                         <td height="24" align="center">
                            <%#Getclickbotton(DataBinder.Eval(Container,"DataItem.id","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#getorderno(Eval("id","{0}"))%>
                        </td>
                        <td height="24" align="center">
                         <%#GetUser(DataBinder.Eval(Container, "DataItem.Reuser", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                          <a onclick="opentitle('../../User/Userinfo.aspx?id=<%#Eval("userId") %>','查看会员')"
                              href="###" title="查看会员"><%#GetUsers(DataBinder.Eval(Container, "DataItem.userId", "{0}"))%></a>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("AddTime") %>
                        </td>
                        <td height="24" align="center">
                            <%#getshijiage(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#formatcs(DataBinder.Eval(Container,"DataItem.Receivablesamount","{0:N2}"))%><%#getMoney_sign(Eval("Money_code").ToString())%>
                        </td>
                        <td height="24" align="center">
                            <%#fapiao(DataBinder.Eval(Container, "DataItem.Developedvotes","{0}")) %>
                        </td>
                        <td height="24" align="center">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.OrderStatus", "{0}"),"0")%>
                        </td>
                        <td height="24" align="center">
                            <%#formatzt(DataBinder.Eval(Container, "DataItem.Paymentstatus", "{0}"),"1")%>
                        </td>
                        <td height="24" align="center">
                            <a href="###" onclick='javascript:window.open("/manage/Common/Extra.aspx?OrderID=<%#Eval("id")%>","","width=600,height=450,resizable=0,scrollbars=yes");'>
                                其他费用</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" colspan="6" align="right">
                    本次查询合计：<br />
                    总计金额：
                </td>
                <td height="24" align="right" style="width: 68px">
                    <asp:Label ID="thisall" runat="server"></asp:Label><br />
                    <asp:Label ID="allall" runat="server"></asp:Label>
                </td>
                <td height="24" colspan="4" align="center">
                    &nbsp;
                </td>
            </tr>
            <tr class="tdbg">
                <td height="24" colspan="11" align="center" class="tdbgleft">
                    <span style="text-align: center">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:Label ID="pagess" runat="server" Text="" />
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
                </td>
            </tr>
            <tr>
                <td height="24" colspan="11">
                    说明：“已结清”与“已付款”的订单不允许删除,当订单号码成“灰色”代表此订单已“作废”
                </td>
            </tr>
            <tr>
                 <td height="24" colspan="11">
                    <asp:Button ID="Button1" Style="width: 110px" class="C_input" Text="删除选中的订单" runat="server"
                        OnClick="Button1_Click1" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('不可恢复性删除数据,你确定将该数据删除吗？')}" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
