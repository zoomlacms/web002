<%@ page language="C#" autoeventwireup="true" inherits="manage_Microblog_ContentManage, App_Web_hihf5f3l" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>微博广播管理</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
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
</Script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>用户管理</span> &gt;&gt; <span>微博管理</span> &gt;&gt; <a href="ContentManage.aspx">广播管理</a>
</div>
<div class="clearbox"></div>
<table width="100%" cellpadding="2" cellspacing="1" class="r_navigation">
    <tr>
        <td>
            高级查询：
            <asp:DropDownList ID="types" runat="server">
                <asp:ListItem Value="0">用户名</asp:ListItem>
                <asp:ListItem Value="1">微博内容</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="keys" runat="server" class="l_input" />
            <asp:Button ID="souchok" runat="server" Text=" 搜索 " class="C_input" OnClick="souchok_Click" />
        </td>
    </tr>
</table>
<div class="clearbox"></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无广播</div>
<div id="cont" runat="server">
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tbody1">
        <tr class="tdbg">
            <td align="center" class="title" width="5%">全选</td>
            <td align="center" class="title" width="5%">广播ID</td>
            <td align="center" class="title" width="10%">广播用户</td>
            <td align="center" class="title" width="15%">所属话题</td>
            <td align="center" class="title" width="35%">内容</td>
            <td align="center" class="title" width="10%">类型</td>
            <td align="center" class="title" width="10%">转发数</td>
            <td align="center" class="title" width="10%">操作</td>
        </tr>
        <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id")%>' /><asp:CheckBox ID="chkSel" runat="server" /></td>
                    <td align="center"><%#Eval("ID")%></td>
                    <td align="center"><%#GetUserName(Eval("MbID","{0}"))%></td>
                    <td align="center"><%#GetTheme(Eval("ParentID","{0}"))%></td>
                    <td align="center"><%#GetCont(Eval("ID","{0}"))%></td>
                    <td align="center"><%#GetTypes(Eval("TopicType","{0}"))%></td>
                    <td align="center"><%#Eval("Sendto")%></td>
                    <td align="center">
                        <asp:LinkButton ID="btnDel" runat="server" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('确定删除！')">删除</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="24" colspan="8" align="center" class="tdbgleft">
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
            <td height="24" colspan="4">
             <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
            <asp:Button ID="Button1" Style="width: 110px" class="C_input" Text="批量删除" runat="server"
                 onclick="Button1_Click" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}" />
            </td>
        </tr>
    </tbody>
</table>
</div>
</form>
</body>
</html>
