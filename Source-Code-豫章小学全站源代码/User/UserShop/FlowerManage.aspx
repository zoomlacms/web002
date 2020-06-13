<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_FlowerManage, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>花材基价管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script src="/JS/pacalendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="我的店铺" href="Default.aspx">我的店铺</a>&gt;&gt;<a title="花材管理" href="FlowerManage.aspx">设定花材基价</a>
</div>
        <asp:HiddenField ID="hfval" runat="server" />
        <div class="us_seta" style="margin-top: 5px;">
            <h1 align="center">设定花材基价</h1>
        </div>
    <div style="width: 100%">
       <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tr class="tdbg">
            <td align="center" class="title" width="10%">花材ID</td>
            <td align="center" class="title" width="15%">花材名</td>
            <td align="center" class="title" width="10%">花材价格</td>
            <td align="center" class="title" width="10%">花材类型</td>
            <td align="center" class="title" width="10%">花材分类</td>
            <td align="center" class="title" width="15%">花材节日价</td>
            <td align="center" class="title" width="15%">花材预订价</td>
            <td align="center" class="title" width="15%">操作</td>
        </tr>
        <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand" >
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center"><%#Eval("ID")%></td>
                    <td align="center"><%#Eval("Flo_Name")%></td>
                    <td align="center"><%#DataBinder.Eval(Container, "DataItem.flo_Price", "{0:N2}")%></td>
                    <td align="center"><%#GetTypes(Eval(GetParaType(), "{0}"))%></td>
                    <td align="center"><%#GetClassname(Eval(GetParas(), "{0}"))%></td>
                    <td align="center"><%#DataBinder.Eval(Container, "DataItem.Flo_FestlPrice", "{0:N2}")%></td>
                    <td align="center"><%#DataBinder.Eval(Container, "DataItem.Flo_BookPrice", "{0:N2}")%></td>
                    <td align="center">
                        <asp:LinkButton ID="btnupd" runat="server" CommandName="Upd" CommandArgument='<%#Eval("Id") %>'>修改</asp:LinkButton>
                      </td>
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
        </table>
    </div>
        <div align="center" style="margin-top: 25px;">
            <div align="center">
                请输入密码：<asp:TextBox ID="pass" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:Button ID="btn" runat="server" Text="修改花材价格" OnClientClick="return confirm('确定修改?')" OnClick="btn_Click" /></div>
        </div>
    </div>
    </form>
</body>
</html>