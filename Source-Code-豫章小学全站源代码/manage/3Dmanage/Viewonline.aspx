<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_Viewonline, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理企业黄页</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
    function getinfo(id) {
        location.href = 'PageTemplate.aspx?id=' + id;
    }
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="Viewonline.aspx">查看在线会员</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="7" class="title" width="100%">查看在线会员</td>
		</tr>
		<tr class="tdbg">
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">会员ID</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">用户名</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">登陆IP</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">用户类型</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 20%; font-weight: bold">当前所在位置</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 20%; font-weight: bold">登陆时间</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">管理</td>
		</tr>
			 <asp:Repeater ID="Repeater1" runat="server">
   <ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="center"  style="height: 24px; padding-right: 20px; font-weight: bold">
		   <%# Eval("userid")%>
			</td>
			<td align="center"  style="height: 24px;">
		  <%# Eval("username")%>
			</td>
			 <td align="center" " style="height: 24px;">
			<%#Eval("lastloginip")%>
			</td>
			 <td align="center" style="height: 24px;">
			  <%# gettype(Eval("Dutype"))%>
			</td>
			 <td align="center"  style="height: 24px;">
		   <%#Getpath(Eval("userid"))%>
			</td>
			<td align="center" style="height: 24px;">
				<%# Eval("DendLogtime")%>
			</td>
			 <td align="center"  style="height: 24px;">
				<a href="?menu=deluser&userid=<%# Eval("userid")%>">剔除</a>
			</td>
		</tr>
	</ItemTemplate>
	</asp:Repeater>
	   
	  <tr class="tdbg">
	  <td height="24" colspan="7" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条数据  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条数据/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
		  </asp:DropDownList>页</td>
	</tr>
	</tbody>
</table>
</form>
</body>
</html>