<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Comment.CommentFor, App_Web_h5gwtnsp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>图片显示-评论</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
<link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div>
    <div id="Comment_List">
      <asp:Repeater ID="Repeater1" runat="server" Visible="false">
        <ItemTemplate>
          <div class="ListLayout">
            <div class="SideBar"><%# GetUserName(Eval("UserID","{0}")) %></div>
            <div class="ListText"> <%# Eval("criticismConten")%> </div>
          </div>
          <div class="clearbox"></div>
        </ItemTemplate>
      </asp:Repeater>
      <asp:Repeater ID="Repeater2" runat="server" Visible="false">
        <ItemTemplate>
          <div class="ListLayout">
            <div class="SideBar"><%# GetUserName(Eval("UserID","{0}")) %></div>
            <div class="ListText"> <%# Eval("CritiqueContent")%> </div>
          </div>
          <div class="clearbox"></div>
        </ItemTemplate>
      </asp:Repeater>
      <asp:Repeater ID="Repeater3" runat="server" Visible="false">
        <ItemTemplate>
          <div class="ListLayout">
            <div class="SideBar"><%# GetUserName(Eval("UserID","{0}")) %></div>
            <div class="ListText"> <%# Eval("Content")%> </div>
          </div>
          <div class="clearbox"></div>
        </ItemTemplate>
      </asp:Repeater>
    </div>
    <div id="CommentInput">
      <div class="r_navigation"> 发表评论&nbsp;&nbsp;<span id="Span2">本评论只代表网友个人观点，不代表本站观点。</span> </div>
      <div class="clearbox"></div>
      <div id="comentyes"  runat="server">
        <div class="ListLayout1">
          <div class="Comment">内  容：</div>
          <div class="ContentRight">
            <asp:TextBox ID="TxtContents" runat="server" Rows="4" TextMode="MultiLine" Width="70%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="评论内容不能为空" ControlToValidate="TxtContents"></asp:RequiredFieldValidator>
          </div>
          <div style="text-align:center;">
            <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="发表评论" OnClick="Button1_Click" />
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>