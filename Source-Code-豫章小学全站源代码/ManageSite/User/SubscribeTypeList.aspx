<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_SubscribeTypeList, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
       当前位置：功能导航 >><a href="SubscribeTypeList.aspx"> 订阅管理</a> </div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" >
                <tr class="tdbg">
        <td align="left">
        <table>
        <tr>
        <td>添加订阅类别：<asp:TextBox ID="txtTepy" runat="server"></asp:TextBox></td>
        <td><asp:Button ID="Button1"
                        runat="server" Text="添  加" CssClass="button" OnClick="Button1_Click" /></td>
        </tr>
        </table>                    
                    </td>
        </tr>
        <tr class="tdbg">
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="ID">
                <Columns>
                    <asp:TemplateField HeaderText="编号" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                        <HeaderStyle Width="80px" />
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="订阅类别名称" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SubscribeName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <HeaderStyle Width="160px" />
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("SubscribeName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="调用代码" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                        <ItemTemplate>
                        <%#GetCode( DataBinder.Eval(Container.DataItem,"ID").ToString()) %>                 
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="邮址列表" HeaderStyle-Width="55px" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                        <ItemTemplate>
                            <a href="MailListManage.aspx?typeid=<%#DataBinder.Eval(Container.DataItem,"ID") %>" title='<%#DataBinder.Eval(Container.DataItem,"SubscribeName")+"的邮址列表" %>'>邮址列表</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                        <HeaderStyle Width="60px" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                        <HeaderStyle Width="40px" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </td>
        </tr>
        <tr class="tdbg">
        <td align="center">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                    <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                    页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                        runat="server" Text=""></asp:Label>页
                    <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
                        ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>页</td>
        </tr>
        </table>
        </div>
    </form>
</body>
</html>
