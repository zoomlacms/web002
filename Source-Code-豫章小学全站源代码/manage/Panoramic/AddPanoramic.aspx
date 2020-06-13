<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" validaterequest="false" inherits="manage_Panoramic_AddPanoramic, App_Web_c4rklp3o" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加全景</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
    function hiddenlabel() {
        window.onload = function () {
            document.getElementById("showlable").style.display = "none";
        }
    }

    function openurls(url) {
        Dialog.open({ URL: url });
    }
    function Open_Select() {
        if (document.getElementById("PanoramicName").value == "") {
            alert("请输入全景名称！");
        }
        else {
            var diag = new Dialog();
            diag.Width = 600;
            diag.Height = 400;
            diag.Title = "选择音乐<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "SelectMusic.aspx";
            diag.show();
        }
    }
    function Create_View() {
        if (document.getElementById("PanoramicName").value == "") {
            alert("请输入全景名称！");
        }
        else {
            var diag = new Dialog();
            diag.Width = 740;
            diag.Height = 540;
            diag.Title = "创建场景<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "CreateView.aspx";
            diag.show();
        }
    }

    function opentitle(url, title) {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }
    function closdlg() {
        Dialog.close();
    }

    function removeOne() {
        var obj = document.getElementById('PanoramicViewList_music');
        for (var i = obj.options.length - 1; i >= 0; i--) {
            if (obj.options[i].selected) {
                var index = i;
                //alert(obj.options[i].text);
                obj.options.remove(i);
            }
        }
    }
    function removepOne() {
        var obj = document.getElementById('PanoramicViewList_View');
        for (var i = obj.options.length - 1; i >= 0; i--) {
            if (obj.options[i].selected) {
                var index = i;
                //alert(obj.options[i].text);
                obj.options.remove(i);
            }
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"> 后台管理 &gt;&gt;扩展功能 &gt;&gt; <a href="PanoramicManage.aspx">全景管理</a> </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
      <tr>
        <td colspan="2" class="spacingtitle" align="center"><asp:Label ID="title" runat="server" Text="添加全景"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 全景名称: </td>
        <td><asp:TextBox ID="PanoramicName" runat="server" CssClass="l_input" Width="254px"></asp:TextBox>
          <span style="color:red">(必填)</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PanoramicName" ErrorMessage="请输入全景名称"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 背景音乐: </td>
        <td><asp:ListBox ID="PanoramicViewList_music" runat="server" CssClass="x_input" Height="172px" Width="256px" SelectionMode="Multiple"></asp:ListBox>
          <asp:Button ID="Button4" runat="server" Text="选择音乐" CssClass="C_input" CausesValidation="false" OnClientClick="Open_Select();return false;" />
          <asp:Button ID="Button9" runat="server" Text="删除" CssClass="C_input" OnClientClick="removeOne();return false;" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 场景列表: </td>
        <td><asp:ListBox ID="PanoramicViewList_View" runat="server" CssClass="x_input" Height="172px" Width="256px" SelectionMode="Multiple"></asp:ListBox>
          <asp:Button ID="Button3" runat="server" Text="添加场景" CssClass="C_input" CausesValidation="false" OnClientClick="Create_View();return false;" />
          <asp:Button ID="Button10" runat="server" Text="删除" CssClass="C_input" OnClientClick="removepOne();return false;" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PanoramicViewList_View" ErrorMessage="场景不能为空！"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 是否自动播放音乐: </td>
        <td><asp:CheckBox ID="AutoPlayMusic" runat="server" Text="自动播放" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="showlable" name="showlable">
        <td class="tdbgleft" align="right"> 调用标签: </td>
        <td><asp:TextBox ID="calllabel" runat="server" CssClass="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbg" align="center" colspan="2"><asp:Button ID="Button1" runat="server" Text="添加" CssClass="C_input" OnClick="Button1_Click" />
          &nbsp;
          <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" CausesValidation="false" OnClientClick="location.href='PanoramicManage.aspx';return false" /></td>
      </tr>
    </table>
</form>
</body>
</html>