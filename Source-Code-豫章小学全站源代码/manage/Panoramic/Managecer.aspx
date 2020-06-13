<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_Managecer, App_Web_c4rklp3o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>全景管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
	function Open_Select(id) {
		var diag = new Dialog();
		diag.Width = 650;
		diag.Height = 500;
		diag.Title = "选择音乐<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
		diag.URL = "PanoramicShow.aspx?id=" + id + "";
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
<div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt; <a href="PanoramicManage.aspx">全景管理</a>&gt;&gt;<a href="PanoramicManage.aspx">授权管理</a><a href="Addcer.aspx">[添加授权]</a></div>
        <div>
          <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
            <tr>
              <td colspan="2" class="spacingtitle" align="center"> 授权搜索 </td>
            </tr>
            <tr>
              <td class="tdbg" align="center" style="width:150px"> 关键字 </td>
              <td class="tdbg" align="left"><asp:TextBox ID="keyworld" runat="server" CssClass="l_input" Width="200px" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="C_input"  onclick="Button1_Click" /></td>
            </tr>
          </table>
          <br />
          <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
            <tr>
              <td colspan="5" class="spacingtitle" align="center"> 授权管理 </td>
            </tr>
            <tr class="tdbgleft">
              <td class="tdbgleft" align="center" style="width: 10%"> 编号 </td>
              <td class="tdbgleft" align="center" style="width: 30%"> 注册域名 </td>
              <td class="tdbgleft" align="center" style="width: 15%"> 登记时间 </td>
              <td class="tdbgleft" align="center" style="width: 10%"> 授权状态 </td>
              <td class="tdbgleft" align="center" style="width: 15%"> 操作 </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                <tr class="tdbg" height="25px" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td align="center"><%#Eval("id") %></td>
                  <td align="center"><%#Eval("domain")%></td>
                  <td align="center"><%#Eval("exp")%></td>
                  <td align="center"><%#getsatrt(Eval("start", "{0}"), Eval("exp","{0}"))%></td>
                  <td align="center"><a href="Addcer.aspx?menu=edit&file=<%#Server.UrlEncode(Eval("filename","{0}")) %>"> 修改</a> <a href="?menu=try&file=<%#Server.UrlEncode(Eval("filename","{0}")) %>">继续试用</a> <a href="?menu=inline&file=<%#Server.UrlEncode(Eval("filename","{0}")) %>"> <%#getbottonname(Eval("start", "{0}"))%></a> <a href="?menu=delete&file=<%#Server.UrlEncode(Eval("filename","{0}")) %>" onclick="return confirm('确实要删除吗？删除后该信息无法恢复!')">删除</a></td>
                </tr>
              </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
              <td height="22" colspan="5" align="center" class="tdbg"> 共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />
                /
                <asp:Label ID="PageSize" runat="server" Text="" />
                页
                <asp:Label ID="pagess" runat="server" Text="" Visible="false" />
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"  Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                条数据/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
                页
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></td>
            </tr>
          </table>
        </div>
      </div>
    </form>
</body>
</html>