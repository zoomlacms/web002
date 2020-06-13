<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_Affiche, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理企业黄页</title>    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
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
    function getinfo(id) {
        location.href = "ADDAffiche.aspx?menu=edit&id="+id+"";
        }
</script>

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="Affiche.aspx">3D地带公告管理</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="5" class="title" width="100%">
				3D地带公告管理
			</td>
		</tr>
		<tr class="tdbg">
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
				ID
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 35%; font-weight: bold">
			   公告标题
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
			   接收对象
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 20%; font-weight: bold">
			   发布时间
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 20%; font-weight: bold">
			   相关操作
			</td>
		</tr>
		<asp:Repeater ID="Repeater1" runat="server">
		<ItemTemplate>
		 <tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="center"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%#Eval("Dafficheid")%>" style="height: 24px; font-weight: bold" ondblclick="getinfo(this.id)">
				<%#Eval("Dafficheid")%>
			</td>
			<td align="left"  style="height: 24px;">
				<a href="ADDAffiche.aspx?menu=edit&id=<%#Eval("Dafficheid") %>"><%#Eval("DafficheTitle") %></a>
			</td>
			 <td align="center"  style="height: 24px;">
				<%#Gettype(Eval("Dsendto")) %>
			</td>
			 <td align="center"  style="height: 24px;">
				<%#Eval("Daddtime")%>
			</td>
			 <td align="center"  style="height: 24px;">
				<a href="ADDAffiche.aspx?menu=edit&id=<%#Eval("Dafficheid") %>">修改</a>　<a href="Affiche.aspx?menu=del&id=<%#Eval("Dafficheid") %>" OnClick="return confirm('确实要删除此公告吗？');">删除</a>
			</td>
		</tr>
		</ItemTemplate>
		</asp:Repeater>
		<tr class="tdbg">
			<td align="center" class="tdbg" style="height: 24px;" colspan="5" >
			   共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
		  </asp:DropDownList>页
			</td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>