<%@ page language="C#" autoeventwireup="true" inherits="User_BossInfo_NodeTree, App_Web_znyb5330" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head id="Head1" runat="server">
<title>我的加盟商</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/menu.js"></script>
<script type="text/javascript" language="javascript">
    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
            }
        }
    }
    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        parent.frames["main_right"].location = righturl;
    }
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="form1" runat="server">
  <div class="us_topinfo" >
      您现在的位置：<a title="网站首页" href="//" target="_blank">
      <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
      </a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; 我的加盟商
         </div>
    <div class="s_body" style="width:630px;">
      <div id="Guide_back">
        <ul>
          <li id="Guide_main">
            <div id="Guide_box" style="height:600px">
              <asp:TreeView ID="tvNav" runat="server" ExpandDepth="1" ShowLines="True" EnableViewState="False" NodeIndent="10">
                <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
              </asp:TreeView>
            </div>
          </li>
        </ul>
      </div>

  </div>
</form>
</body>
</html>