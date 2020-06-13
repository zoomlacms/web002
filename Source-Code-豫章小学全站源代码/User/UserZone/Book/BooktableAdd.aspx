<%@ page language="C#" autoeventwireup="true" inherits="BooktableAdd, App_Web_pe4eotmu" title="书籍" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head>
<title>会员中心 >> 添加读书</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div style="width: 100%"> 
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_parent"> 会员中心</a>&gt;&gt; 书籍
</div>
    <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc3:WebUserControlTop>
    <br />
    <div>
      <table border="1" cellpadding="0" cellspacing="0" height="167" width="100%" align="center">
        <tr>
          <td><h3> &nbsp; &nbsp; <img src="../Images/icon_80.gif" style="width: 57px; height: 54px" />添加书籍</h3></td>
        </tr>
        <tr>
          <td style="height: 92px"><table width="100%" height="246" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="29%" align="center">&nbsp;名称： </td>
                <td width="71%">&nbsp;
                  <asp:TextBox ID="titletxt" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="titletxt"  ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td align="center">&nbsp;又名： </td>
                <td>&nbsp;
                  <asp:TextBox ID="othertitletxt" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                <td align="center">&nbsp;<span class="pl">作者：</span></td>
                <td>&nbsp;
                  <asp:TextBox ID="antxt" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="antxt" ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td align="center">&nbsp;<span class="pl">ISBN：</span></td>
                <td>&nbsp;
                  <asp:TextBox ID="isbntxt" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="isbntxt" ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td align="center" style="height: 24px">&nbsp;<span class="pl">定价：</span></td>
                <td style="height: 24px">&nbsp;
                  <asp:TextBox ID="pricetxt" runat="server"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="pricetxt"
                                        ErrorMessage="请输入正确的书本价格" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
              </tr>
              <tr>
                <td align="center">&nbsp;<span class="pl">出版社：</span></td>
                <td>&nbsp;
                  <asp:TextBox ID="concermtxt" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="yeartxt"  ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td align="center">&nbsp;<span class="pl">出版年：</span></td>
                <td>&nbsp;
                  <asp:TextBox ID="yeartxt" runat="server" MaxLength="4"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="不能为空"  ControlToValidate="yeartxt"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="yeartxt"
                                        ErrorMessage="请输入正确的年份 如2008" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator></td>
              </tr>
              <tr>
                <td align="center">&nbsp;图片： </td>
                <td>&nbsp;
                  <input type="file" name="FileUpload1" id="FileUpload1" runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                  <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
              </tr>
              <tr>
                <td align="center">&nbsp;<span class="pl">内容：</span></td>
                <td>&nbsp;
                  <textarea id="contenttxt" runat="server" rows="10" style="width: 330px"></textarea>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="contenttxt" ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;
                  <asp:Button ID="sBtn" runat="server" OnClick="sBtn_Click" Text="添加保存" /></td>
              </tr>
            </table></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>