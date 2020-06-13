<%@ page language="C#" autoeventwireup="true" inherits="GoMySubscription, App_Web_m53mud2n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的订阅管理</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="main" class="rg_inout">
    <div class="us_topinfo" style="width:938px !important">
      <div class="us_showinfo"> 您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span> 您现在的位置：<a title="网站首页" href="/" target="_blank">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
        </a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span> &gt;&gt; </span><span><a title="我的订阅添加" href="GoMySubscription.aspx"> 我的订阅添加</a></span></span> </div>
      <div class="cleardiv"></div>
    </div>
    <div class="us_seta" style="margin-top: 10px; margin-left:auto; margin-right:auto;">
      <h1 style="text-align: center"> 订 阅 信 息</h1>
      <asp:GridView ID="GridView1" runat="server" Width="100%" 
                AutoGenerateColumns="False" DataKeyNames="id" 
                onrowediting="GridView1_RowEditing" onrowdeleting="GridView1_RowDeleting" 
                onrowupdating="GridView1_RowUpdating" 
                onrowcancelingedit="GridView1_RowCancelingEdit" >
        <Columns>
        <asp:TemplateField HeaderText="订阅内容">
          <ItemTemplate> <%# GetReference(Eval("Reference_ID"))%> </ItemTemplate>
          <EditItemTemplate> <%# GetReference(Eval("Reference_ID"))%>
            <asp:Label ID="lblReference_ID" runat="server" Text=' <%#Eval("Reference_ID")%>' Visible=false></asp:Label>
          </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="订阅期限">
          <ItemTemplate> <%#Eval("Period")%>/月 </ItemTemplate>
          <EditItemTemplate>
            <asp:TextBox ID="txtPeriod" runat="server" Text='<%#Eval("Period") %>' MaxLength="2"></asp:TextBox>
          </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="订阅起始时间">
          <ItemTemplate> <%#Eval("Start_Date")%> </ItemTemplate>
          <EditItemTemplate>
            <asp:TextBox ID="txtStart_Date" runat="server" Text='<%#Eval("Start_Date") %>'></asp:TextBox>
          </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="联系电话">
          <ItemTemplate> <%#Eval("Tel")%> </ItemTemplate>
          <EditItemTemplate>
            <asp:TextBox ID="txtTel" runat="server" Text='<%#Eval("Tel") %>'></asp:TextBox>
          </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="电子邮箱">
          <ItemTemplate> <%#Eval("Email")%> </ItemTemplate>
          <EditItemTemplate>
            <asp:TextBox ID="txtEmail" runat="server" Text='<%#Eval("Email") %>'></asp:TextBox>
          </EditItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" />
        <%--                 <asp:TemplateField >
                    <ItemTemplate>
                    
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('确实要删除此信息吗？');"
                                    OnClick="LinkButton1_Click">删除</asp:LinkButton>
                     
                    </ItemTemplate>
                    </asp:TemplateField>--%>
        </Columns>
        <HeaderStyle  BackColor=" #FFF5EC"/>
      </asp:GridView>
      <div>
        <asp:Button ID="Button1" runat="server" Text="确定订阅" onclick="Button1_Click" OnClientClick="return confirm('确实要订阅吗？');"/>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="关注" onclick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;
        <input ID="Button3" type="button" value="返回" onclick="history.go(-1);" />
      </div>
      <%--       <ul style="background-color: Blue">
                    <li style="width: 7%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        订阅编号 </li>
                    <li style="width: 16%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        订阅内容 </li>
                    <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        订阅操作时间 </li>
                    <li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        订阅时间 </li>
                    <li style="width: 12%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        起始日期 </li>
                    <li style="width: 8%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        订购状态 </li>
                    <li style="width: 10%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        联系电话 </li>
                    <li style="width: 17%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                        接受邮箱 </li>
                    <li style="width: 4%; float: left; line-height: 30px; text-align: center; background-color: #FFF5EC">
                    </li>
              
                </ul>--%>
      <%-- <%-- <asp:Panel ID="Orderlist" runat="server" Width="100%">
                <table>
                    <tr>
                        <td>订阅内容：</td>
                        <asp:Panel ID="idone" runat="server">
                        <td>
                            <asp:TextBox ID="ReferenceID" runat="server" Enabled="false"></asp:TextBox></td></asp:Panel>
                            <asp:Panel ID="idsShow" runat="server">
                            <td>
                                <asp:ListBox ID="DropDownList1" runat="server" Height="79px" 
        Width="181px">
                                </asp:ListBox>
                            </td></asp:Panel>
                    </tr>
                    <tr>
                        <td>订阅时间：</td>
                        <td>
                        <asp:TextBox ID="Period" runat="server" MaxLength="2"></asp:TextBox>
                        月
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请正确输入订阅时间" Display="Dynamic" ControlToValidate="Period"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ErrorMessage="*请正确输入订阅时间（以月为单位计算）" Type="Double" Display="Dynamic"
                            MaximumValue="100" MinimumValue="1" ControlToValidate="Period"></asp:RangeValidator>
                           
                        </td>
                    </tr>
                    
                    <asp:Panel ID="TelShow" runat="server" Visible="false">
                    <tr>
                        <td>接收电话：</td>
                        <td><asp:TextBox ID="Tel" runat="server"></asp:TextBox></td>
                    </tr>
                    </asp:Panel>
                    <asp:Panel ID="EmailShow" runat="server" Visible="false">
                    <tr>
                        <td>接收邮箱：</td>
                        <td><asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
                    </tr>
                    </asp:Panel>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="确定订阅" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="关注" onclick="Button2_Click" />&nbsp;&nbsp;&nbsp;
                            <input ID="Button3" type="button" value="返回" onclick="history.go(-1);" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>--%>
    </div>
  </div>
</form>
</body>
</html>