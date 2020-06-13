<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_CarRuleManage, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>会员空间管理</span> &gt;&gt; <span>抢车位管理</span> &gt;&gt; <a href="CarManage.aspx">[车辆列表]</a>  |  <a href="CarAdd.aspx">[添加车辆]</a>  |  <a href="CarRuleManage.aspx" >[抢车位规则管理]</a>
        </div>
        <div>
            <asp:GridView ID="GridView1" Width="100%" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CssClass="tdbg">
                <Columns>
                    <asp:TemplateField HeaderText="规则名称" HeaderStyle-Width="250px">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CText") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="规则数值">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cvalue") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Cvalue") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" HeaderText="操作"  HeaderStyle-Width="150px"/>
                </Columns>
            </asp:GridView>
        </div>
</form>
</body>
</html>
