<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_MbUser, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>微博用户管理</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>用户管理</span> &gt;&gt; <span>微博管理</span>  &gt;&gt; <a href="ThemeManage.aspx">微博用户管理</a>
</div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border">
    <tr>
        <td class="tdbg">
            高级查询：
            <asp:DropDownList ID="souchtable" runat="server">
                <asp:ListItem Value="1">用户ID</asp:ListItem>
                <asp:ListItem Value="2">用户名</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="souchkey" runat="server" class="l_input" />
            <asp:Button ID="souchok" runat="server" Text=" 搜索 " class="C_input" OnClick="souchok_Click" />
        </td>
    </tr>
</table>
<br />
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无微博用户</div>
<div id="cont" runat="server">
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tbody1">
        <tr class="tdbg">
            <td align="center" class="title">全选</td>
            <td align="center" class="title">用户ID</td>
            <td align="center" class="title">用户名</td>
            <td align="center" class="title">关注数</td>
            <td align="center" class="title">微博数</td>
            <td align="center" class="title">是否认证</td>
            <td align="center" class="title">用户简介</td>
            <td align="center" class="title">是否启用</td>
            <td align="center" class="title">注册时间</td>
            <td align="center" class="title">操作</td>
        </tr>
        <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand" 
            onitemdatabound="repter_ItemDataBound">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' /><asp:CheckBox ID="chkSel" runat="server" /></td>
                    <td align="center"><%#Eval("Userid") %></td>
                    <td align="center"><%#GetUserName(Eval("Userid", "{0}"))%></td>
                    <td align="center"><%#Eval("Attention")%></td>
                    <td align="center"><%#GetTopNum(Eval("Userid","{0}"))%></td>
                    <td align="center"><%#isCertification(Eval("Certification","{0}")) %></td>
                    <td align="center"><%#Eval("Remark") %></td>
                    <td align="center"><%#isStart(Eval("Start","{0}"))%></td>
                    <td align="center"><%#DataBinder.Eval(Container.DataItem, "AddTime", "{0:yyyy-MM-dd}")%></td>
                    <td align="center">
                        <asp:LinkButton ID="btnupda" runat="server" CommandName="upd" CommandArgument='<%#Eval("id") %>'>修改</asp:LinkButton>|
                        <asp:LinkButton ID="btnDel" runat="server" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('确定！')">启用</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="24" colspan="10" align="center" class="tdbgleft">
                <span style="text-align: center">
              共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />页次：
                    <asp:Label ID="Nowpage" runat="server" Text="" />/
                    <asp:Label ID="PageSize" runat="server" Text="" />页
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                        Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
            </td>
        </tr>
        <tr>
            <td height="24" colspan="7">
             <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
            <asp:Button ID="Button1" Style="width: 110px" class="C_input" Text="批量启用" runat="server" 
            OnClick="Button1_Click1" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定启用？')}"/>
            <asp:Button ID="Button2" Style="width: 110px" class="C_input" Text="批量禁用" runat="server"
                onclick="Button2_Click" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('禁用后该用户无法使用微博，确定禁用？')}" />
            </td>
        </tr>
    </tbody>
</table>
</div>
</form>
</body>
</html>
