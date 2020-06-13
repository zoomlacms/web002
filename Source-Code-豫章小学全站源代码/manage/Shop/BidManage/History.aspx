<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_BidManage_History, App_Web_wtzqf5go" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>竞拍记录</title>
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script language="javascript" type="text/javascript" src="../../../../JS/SelectCheckBox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="History.aspx">竞拍记录</a></span></div>
    <div class="divbox" id="nocontent" runat="server" style="display: none;width:100%">暂无竞拍记录</div>     
    <div id="cont" runat="server">
    <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
    <tr class="tdbg">
        <td align="center" class="title" width="5%">选择</td>
        <td align="center" class="title" width="5%">竞拍ID</td>
        <td align="center" class="title" width="5%">商品ID</td>
        <td align="center" class="title" width="10%">商品名称</td>
        <td align="center" class="title" width="7%">商品数量</td>
        <td align="center" class="title" width="9%">最终价格</td>
        <td align="center" class="title" width="9%">竞价机制</td>
        <td align="center" class="title" width="7%">状态</td>
        <td align="center" class="title" width="7%">获胜者</td>
        <td align="center" class="title" width="17%">操作</td>
    </tr>
    <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' /> <asp:CheckBox ID="chkSel" runat="server" /></td>
                <td align="center"><asp:Label ID="lblUserid" runat="server" Text='<%#Eval("ID") %>' ></asp:Label></td>
                <td align="center"><asp:Label ID="Label1" runat="server" Text='<%#Eval("ShopID") %>' ></asp:Label></td>
                <td align="center"><asp:Label ID="lblName" runat="server" Text='<%#GetName(Eval("ShopID","{0}") )%>' ></asp:Label></td>
                <td align="center"><asp:Label ID="lblTreName" runat="server" Text='<%#Eval("ShopNum") %>'></asp:Label></td>         
                <td align="center"><asp:Label ID="CardID" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.AddPrice", "{0:N2}") %>'></asp:Label></td>
                <td align="center"><asp:Label ID="Label2" runat="server" Text='<%#GetTypes(Eval("AucExecType","{0}")) %>' ></asp:Label></td>
                <td align="center"><asp:Label ID="Label4" runat="server" Text='<%#GetState(Eval("comState","{0}")) %>' ></asp:Label>
                <asp:HiddenField ID="state" runat="server" Value='<%#Eval("comState") %>' /></td>
                <td align="center"><asp:Label ID="Label3" runat="server" Text='<%#GetAdminName(Eval("LastUserID","{0}")) %>' ></asp:Label></td>
                <td align="center">               
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="add" CommandArgument='<%#Eval("ID") %>'>添加为新拍品</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="select" CommandArgument='<%#Eval("ID") %>'>出价记录</asp:LinkButton>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg"> 
        <td colspan="10">
            <div class="tdbg">
                <span>
                    <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged"
                        Text="全选" />
                    <asp:Button ID="BtnDelete" runat="server" class="C_input" OnClick="BtnDelete_Click"
                        OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}"
                        Text="批量删除选定内容" Width="134px" />
                </span>  <span style="text-align: center">
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
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
            </div>
        </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
