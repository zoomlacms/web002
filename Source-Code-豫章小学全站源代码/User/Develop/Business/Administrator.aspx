<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Business_Administrator, App_Web_ldfwx3fz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>管理员管理</title> 
<link type="text/css" rel="stylesheet" href="../Css/global.css" />
</head>
<body>
    <form id="form1" runat="server">  
    <div class="uuser">
    <div class="uuser_menu">
     <div class="uuser_lT"> 会员管理 </div>
       <ul>
       <li><a href="../SiteAdmin/Member.aspx" target="_self">会员管理</a></li>
       <li class="blod"><a href="Administrator.aspx" target="_self">管理员管理</a></li>
       </ul>  
    </div> 
    <div class="uuser_rig">
    <div class="uuser_rT"> 
            <asp:Button ID="Button1" runat="server" Text="添加会员" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddl" runat="server">
        <asp:ListItem Value="0">请选择</asp:ListItem> <asp:ListItem Value="1">用户名</asp:ListItem>  <asp:ListItem Value="2">电子邮件</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtbox" runat="server"> </asp:TextBox>&nbsp;&nbsp;<asp:Button   ID="btn" runat="server" Text=" 搜 索 " onclick="btn_Click" />
        </div>
 <div class="uuser_rCon">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" EnableModelValidation="True" 
            onpageindexchanging="GridView1_PageIndexChanging" Width="710px"
                DataKeyNames="UserID"  onrowcommand="GridView1_RowCommand" >
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="ID" 
                    ItemStyle-HorizontalAlign="Center"  >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="用户名" 
                    ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="电子邮件" 
                    ItemStyle-HorizontalAlign="Center" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
<%--                <asp:TemplateField HeaderText="管理状态">
                    <ItemTemplate>
                     <%# GetSalt(Eval("salt", "{0}"))%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="管理员设置" ShowHeader="False">
                    <ItemTemplate >
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Upd" CommandArgument='<%#Eval("UserID") %>'  Enabled='<%#Convert.ToBoolean(GetSalts(Eval("UserID").ToString())) %>' >添加</asp:LinkButton> 
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="操作" ShowHeader="False">
                <ItemTemplate >
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="sel" CommandArgument='<%#Eval("UserID") %>' >会员信息</asp:LinkButton> 
                |
                <asp:LinkButton ID="LinkButton2"  runat="server" CommandName="Del" CommandArgument='<%#Eval("UserID") %>' OnClientClick="return confirm('你确定将取消该会员的管理权限吗？');">删除</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页"  />
                <PagerStyle HorizontalAlign="Center" />
            </asp:GridView>
        </div>
    
    </div>
    </div> 
    </form>
</body>
</html>
