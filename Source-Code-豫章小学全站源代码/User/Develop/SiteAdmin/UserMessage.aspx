<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_UserMessage, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script src="../../../JS/calendar.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../../JS/Drag.js"></script>
<script type="text/javascript" src="../../../JS/Dialog.js"></script>
<script type="text/javascript">
    function open_title() {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "添加会员[ESC键退出当前操作]";
        diag.URL = "AddUser.aspx";
        diag.show();
    }

    function inputuserinfo() {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "导入会员[ESC键退出当前操作]";
        diag.URL = "InputUser.aspx";
        diag.show();
    }
    //
</script>
</head>
<body>
    <form id="form1" runat="server">
 <div class="clearbox"></div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        width="100%">
        <tr>
            <td class="spacingtitle" align="center">会员管理</td>
        </tr>
        <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td>
              <asp:Button ID="Button1" runat="server" Text="添加会员" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl" runat="server">
             <asp:ListItem Value="0">请选择</asp:ListItem> <asp:ListItem Value="1">用户名</asp:ListItem>  <asp:ListItem Value="2">电子邮件</asp:ListItem>
            </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtbox" runat="server"> </asp:TextBox>&nbsp;&nbsp;<asp:Button   ID="btn" runat="server" Text=" 搜 索 " onclick="btn_Click" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
    </table>
    <div class="clearbox"></div>
    <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" CssClass="border"
        DataKeyNames="UserID" OnRowCommand="Lnk_Click" Width="100%" AllowSorting="true"
        OnSorting="Egv_Sorting" OnRowDataBound="Egv_RowDataBound" GridLines="None" RowStyle-CssClass="tdbg" CellPadding="2" CellSpacing="1">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="用户ID" SortExpression="UserID">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
                   <asp:BoundField DataField="UserName" HeaderText="用户名" 
                    ItemStyle-HorizontalAlign="Center" >
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="电子邮件" 
                    ItemStyle-HorizontalAlign="Center" >
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
               <asp:TemplateField HeaderText="会员设置">
                    <ItemTemplate>
                      <asp:LinkButton ID="LinkButton2"  runat="server" CommandName="Upd1" CommandArgument='<%#Eval("UserID") %>' OnClientClick="return confirm('你确定将该会员设置成会员吗？');"  >添加</asp:LinkButton> 
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="管理员设置" ShowHeader="False">
                    <ItemTemplate >
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Upd" CommandArgument='<%#Eval("UserID") %>' OnClientClick="return confirm('你确定将该会员设置成管理员吗？');" >添加</asp:LinkButton> 
                        <%-- <asp:LinkButton ID="LinkButton2"  runat="server" CommandName="Del" CommandArgument='<%#Eval("UserID") %>'  Enabled='<%#Convert.ToBoolean(GetSaltt(Eval("UserID").ToString())) %>' OnClientClick="return confirm('你确定将该数据删除吗？');">删除</asp:LinkButton>--%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="查看" ShowHeader="False">
                <ItemTemplate >
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="sel" CommandArgument='<%#Eval("UserID") %>' >会员信息</asp:LinkButton> 
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="title" Font-Bold="True" BorderStyle="None" Height="30px" Font-Overline="False" />
    </asp:GridView>
    <span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />/
        <asp:Label ID="PageSize" runat="server" Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
        条数据/页 转到第
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnTextChanged="DropDownList3_TextChanged">
        </asp:DropDownList>
        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
    </span>
    <br />
    <asp:HiddenField ID="HdnGroupID" runat="server" />
    </form>
</body>
</html>
