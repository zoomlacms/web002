<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_Maps, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>地图管理</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<style type="text/css">
    #GridView1 td
    {
        border: 1px solid #fff;
        width: auto;
        text-align: center;
    }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    后台管理&nbsp;&gt;&gt;&nbsp;其他管理&nbsp;&gt;&gt;&nbsp;地图管理
</div>
<div class="user_t">
    <asp:GridView RowStyle-HorizontalAlign="Center" ID="GridView1" DataKeyNames="mid"
        Width="100%" runat="server" AutoGenerateColumns="False" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging"
        OnRowCommand="Lnk_Click">
        <Columns>
            <asp:TemplateField HeaderText="选中">
                <HeaderStyle Width="5%" />
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="SelectCheckBox" runat="server" />
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
            <asp:BoundField DataField="mid" HeaderText="序号">
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="纬度">
                <HeaderStyle Width="18%" />
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem,"lx")%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="经度">
                <HeaderStyle Width="18%" />
                <HeaderStyle />
                <ItemTemplate>
                    <%#DataBinder.Eval(Container.DataItem, "ly")%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="标注">
                <HeaderStyle Width="15%" />
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem,"type")%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
             <asp:TemplateField HeaderText="创建时间">
                <HeaderStyle Width="20%" />
                <ItemTemplate>
                    <%# DataBinder.Eval(Container.DataItem, "CreateTime")%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <HeaderStyle Width="12%" />
                <ItemTemplate>
                    <%--<a href='EditMap.aspx?Action=Modify&AUId=<%# Eval("mid")%>'>修改</a>--%>
                    <a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='Maps.aspx?AUId=<%# Eval("mid")%>';">
                        删除</a>
                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="ifframe" CommandArgument='<%# Eval("mid") %>'>获取地图代码</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
            Height="30px" Font-Overline="False" />
    </asp:GridView>
</div>
<div class="clearbox">
</div>
<span id="Fy" style="text-align: center; font-size: 12px;" runat="server">共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    条数据
    <asp:LinkButton ID="Toppage" runat="server" OnClick="Toppage_Click">首页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Nextpage" runat="server" OnClick="Nextpage_Click">上一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Downpage" runat="server" OnClick="Downpage_Click">下一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Endpage" runat="server" OnClick="Endpage_Click">尾页</asp:LinkButton>&nbsp;
    &nbsp;页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />
    /
    <asp:Label ID="PageSize" runat="server" Text="" />
    页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input"
        Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged">10</asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
</span>
<br />
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
    <tr>
        <td style="height: 21px">
            <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                Text="全选" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" CssClass="C_input" Style="width: 110px;" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                Text="删除选定地图" OnClick="btndelete_Click" />
            <input name="Cancel" type="button" style="width: 110px;" class="C_input inputbutton"
                id="Cancel" value="添加新地图" onclick="javascript:window.location.href='AddMap.aspx'" />
        </td>
    </tr>
    <tr>
        <td style="height: 21px">
        </td>
    </tr>
</table>
</form>
</body>
</html>
