<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_FlowaPriManage, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>鲜花基价管理</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; <span><a href="FlowaPriManage.aspx">花材基价管理</a></span> &gt;&gt; <a href="AddFloBasprice.aspx">添加花材基价</a>
</div>
<div class="clearbox"></div>
<table width="100%" cellpadding="2" cellspacing="1" class="r_navigation">
    <tr>
        <td>花材名：<asp:TextBox ID="keys" runat="server" class="l_input" />
            <asp:Button ID="souchok" runat="server" Text=" 搜索 " class="C_input" OnClick="souchok_Click" />
        </td>
    </tr>
</table>
<div class="clearbox"></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无花材信息</div>
<div id="cont" runat="server" style="margin:4px">
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tr class="tdbg">
            <td align="center" class="title" width="5%">全选</td>
            <td align="center" class="title" width="5%">花材ID</td>
            <td align="center" class="title" width="7%">花材名</td>
            <td align="center" class="title" width="8%">花材价格</td>
            <td align="center" class="title" width="10%">花材类型</td>
            <td align="center" class="title" width="10%">花材分类</td>
            <td align="center" class="title" width="20%">花材简介</td>
            <td align="center" class="title" width="10%">花材图片</td>
            <td align="center" class="title" width="8%">花材节日价</td>
            <td align="center" class="title" width="7%">花材预订价</td>
            <td align="center" class="title" width="10%">操作</td>
        </tr>
        <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id")%>' /><asp:CheckBox ID="chkSel" runat="server" /></td>
                    <td align="center"><%#Eval("ID")%></td>
                    <td align="center"><%#Eval("Flo_Name")%></td>
                    <td align="center"><%#DataBinder.Eval(Container, "DataItem.flo_Price", "{0:N2}")%></td>
                    <td align="center"><%#GetTypes(Eval("Flo_Type", "{0}"))%></td>
                    <td align="center"><%#GetClassname(Eval("Flo_ClassId", "{0}"))%></td>
                    <td align="center"><%#Eval("Flo_Remark")%></td>
                    <td align="center"><img src='<%#GetImaUrl(Eval("Flo_img","{0}"))%>' width="100px" height="60px" /></td>
                    <td align="center"><%#DataBinder.Eval(Container, "DataItem.Flo_FestlPrice", "{0:N2}")%></td>
                    <td align="center"><%#DataBinder.Eval(Container, "DataItem.Flo_BookPrice", "{0:N2}")%></td>
                    <td align="center">
                        <asp:LinkButton ID="btnupd" runat="server" CommandName="Upd" CommandArgument='<%#Eval("Id") %>'>修改</asp:LinkButton>
                        <asp:LinkButton ID="btnDel" runat="server" CommandName="del" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('确定删除！')">删除</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="24" colspan="9" align="center" class="tdbgleft">
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
</table>
</div>
</form>
</body>
</html>
