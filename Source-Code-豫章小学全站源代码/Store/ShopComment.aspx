<%@ page language="C#" autoeventwireup="true" inherits="Store_ShopComment, App_Web_mxd1cmnv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>发表评论</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div id="Comment">
       <div id="Comment_List">
      <div class="r_navigation">
        <ul>
        <li>评论总数：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></li>
        <%--<li>支持：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li>
        <li style=" text-decoration: line-through;">反对：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li>--%>
        </ul>
      </div>
      <div class="cleardiv"></div>
      <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
          <div class="ListLayout">
            <div class="SideBar">评论人：<%# Eval("comuser") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
            <div class="ListText">
                <%#Eval("ComContent") %>                   
            </div>
            <div class="ListTime">评论时间：<%# Eval("Addtime") %> &nbsp;&nbsp;评分：<%# GetPK(Eval("ComOption", "{0}"))%></div>
          </div>
          <div class="clearbox"></div>
          </ItemTemplate>
      </asp:Repeater>
    </div>
    
    <div id="CommentInput">
        <div class="r_navigation">
        
        发表评论&nbsp;&nbsp;<span id="Span2">本评论只代表网友个人观点，不代表本站观点。</span>
        </div>
        <div class="clearbox"></div>
        <%--<div id="nocoment" style="display:none" runat="server">信息所属栏目评论功能已关闭</div>--%>
        <div id="comentyes"  runat="server">
        <div class="CommentSay">我也来说两句</div>                
        <div class="ListLayout1">
        <div class="Comment">发表评论标题：<asp:TextBox ID="txttitle" runat="server" Width="303px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttitle"
                ErrorMessage="标题不能为空"></asp:RequiredFieldValidator></div>
        <div class="Comment">发表评论内容：</div>
        <div class="ContentRight">
            <asp:TextBox ID="TxtContents" runat="server" Rows="4" TextMode="MultiLine" Width="80%" Height="160"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="评论内容不能为空" ControlToValidate="TxtContents"></asp:RequiredFieldValidator>
        </div>
        <div class="CommentScore">评  分：</div>
        <div class="CommentRight">
            <asp:DropDownList ID="DDLScore" runat="server">
                <asp:ListItem Value="0">好评</asp:ListItem>
                <asp:ListItem Value="1" Selected="True">中评</asp:ListItem>
                <asp:ListItem Value="2" >差评</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="text-align:center;">
            <asp:HiddenField ID="HdnItemID" runat="server" />
            <asp:HiddenField ID="HdnTitle" runat="server" />
            <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="发表评论" OnClick="Button1_Click" /></div>
        </div>
        </div>
    </div>

</div>

</form>
</body>
</html>
