<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ModelManage, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容模型</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<script language="javascript" type="text/javascript">
    function getinfo(id) {
        location.href = "AddEditModel.aspx?ModelID=" + id + '&ModelType=<%=Request["ModelType"] %>';
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&nbsp;&gt;&gt;&nbsp;系统设置&nbsp;&gt;&gt;&nbsp;<%=bll.GetModelType(Convert.ToInt32(Request["ModelType"])) %>&nbsp;<span class="red">[<a href="AddEditModel.aspx?ModelType=<%=Request["ModelType"] %>">添加<%=bll.GetModelType(Convert.ToInt32(Request["ModelType"])) %></a>]</span></div><asp:HiddenField ID="type" runat="server" />
    <table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" style="text-align: center;">
        <tbody>
            <tr class="gridtitle" align="center" style="height: 30px;">
                <td style="width: 5%; height: 30px; text-align: center;">
                    <strong>ID</strong>
                </td>
                <td style="width: 5%; text-align: center;">
                    <strong>图标</strong>
                </td>
                <td style="width: 15%; text-align: center;">
                    <strong>模型名称</strong>
                </td>
                <td style="width: 15%; text-align: center;">
                    <strong>表名</strong>
                </td>
                <td style="width: 10%; text-align: center;">
                    <strong>项目名称</strong>
                </td>
                <td style="width: 30%; text-align: center;">
                    <strong>模型描述</strong>
                </td>
                <td style="width: 20%; text-align: center;">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" style="line-height: 30px;" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%# Eval("ModelID") %>" ondblclick="getinfo(this.id)">
                        <td>
                            <strong><%# Eval("ModelID") %></strong>
                        </td>
                        <td>
                            <img alt="" src="<%# GetIcon(DataBinder.Eval(Container, "DataItem.ItemIcon", "{0}"))%>" style="border-width: 0px;" />
                        </td>
                        <td>
                            <strong><%# Eval("ModelName")%></strong>
                        </td>
                        <td id="TableNames">
                            <strong><%# Eval("TableName")%></strong>
                        </td>
                        <td align="center">
                            <strong><%# Eval("ItemName")%></strong>
                        </td>
                        <td>
                            <%# Eval("Description")%>
                        </td>
                        <td class="margin_l">
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ModelID")%>' Enabled='<%#GetEnabled(Eval("SysModel").ToString()) %>'>复制</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ModelID") %>' OnClientClick="return confirm('确实要删除此模型吗？');">删除</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Field" CommandArgument='<%# Eval("ModelID") %>'>字段列表</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td style="height: 22px; text-align: center;" colspan="10" class="tdbgleft">
                    <span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>

