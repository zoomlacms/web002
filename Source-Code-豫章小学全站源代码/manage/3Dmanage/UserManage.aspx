<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_UserManage, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
<script language src="/JS/Popmenu.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="Viewonline.aspx">3D地带会员管理</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="8" class="title" width="100%">
				3D地带会员管理<span style="font-weight: lighter; color: Black">(鼠标悬停用户名上方出现操作菜单)</span>
			</td>
		</tr>
		<tr class="tdbg">
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">会员ID</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">用户名</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">用户类型</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">展位ID</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">展位编号</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">是否激活</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 25%; font-weight: bold">企业名称</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">职业</td>
		</tr>
		<asp:Repeater ID="Repeater1" runat="server">
			<ItemTemplate>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td align="center"  style="height: 24px;">
						<%#Eval("Duid")%>
					</td>
					<td align="center"  style="height: 24px;  ">
				<%--    <%#GetUserName(Eval("Duid").ToString()) %>--%>
					   <span style="cursor:hand" onmouseover="showmenu(event,'<div class=menuitems style=float:left;><a href=ADDUser.aspx?menu=edit&id=<%#Eval("Duid") %>&Duserid=<%#Eval("Duserid") %>>修改</a></div><div  class=menuitems style=float:left;><a href=UserManage.aspx?menu=del&id=<%#Eval("Duid") %>  target=main_right>删除</a></div>',0,15)"><%#GetFiled(Eval("Duid"),"username")%></span>
   
					</td>
					<td align="center"  style="height: 24px;">
						<%#GetUserType(Eval("Duid"))%>
					</td>
					<td align="center"  style="height: 24px;">
					  <%#Eval("DuShow", "{0}") == "0" ? "" : Eval("DuShow")%>
					</td>
					<td align="center"  style="height: 24px;">
					<%#Eval("DuShow", "{0}") == "0" ? "" : GetDbooth(Eval("DuShow","{0}"))%>
					</td>
					<td align="center"  style="height: 24px;">
						<%#GetUserDactiva(Eval("Duid","{0}"))%>
					</td>
					<td align="center" style="height: 24px;">
						<%#Eval("Dcorp")%>
					</td>
					<td align="center"  style="height: 24px;">
						<%#Eval("Dmetier")%>
					</td>
				</tr>
			</ItemTemplate>
		</asp:Repeater>
		<tr class="tdbg">
			<td align="center" class="tdbg" style="height: 24px;" colspan="8">
				共
				<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
				条信息
				<asp:Label ID="Toppage" runat="server" Text="" />
				<asp:Label ID="Nextpage" runat="server" Text="" />
				<asp:Label ID="Downpage" runat="server" Text="" />
				<asp:Label ID="Endpage" runat="server" Text="" />
				页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
				<asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
				</asp:DropDownList>
				页
			</td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>