<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.NodeManage, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节点管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>   
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
    function CheckAll(spanChk) {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++) if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }

    function showlist(sid) {
        var i = 0;
        var j = 0;
        var state = $("#list" + sid).attr("state");
        if (sid == "0") {
            for (i = 3; i <= $("tr").length; i++) {
                if (state == "1") {
                    $("tr:nth-child(" + i + ")").css("display", "none");
                    $("tr:nth-child(" + i + ")").attr("state", "1");
                }
                else {
                    $(".list" + sid).css("display", "");
                    $("tr:nth-child(" + i + ")").attr("state", "0");
                }
            }
        }
        else {
            for (i = 1; i <= $("tr").length; i++) {
                if ($("tr:nth-child(" + i + ")").attr("name") == $("#list" + sid).attr("name") && $("tr:nth-child(" + i + ")").attr("id") == ("list" + sid)) {
                    j++;
                    continue;
                }
                if (j == 1 && $("tr:nth-child(" + i + ")").attr("name") == $("#list" + sid).attr("name")) {
                    j++;
                    break;
                }
                switch (j) {
                    case 1:
                        if (state == "1") {
                            $("tr:nth-child(" + i + ")").css("display", "none");
                            $("tr:nth-child(" + i + ")").attr("state", "1");
                        }
                        else {
                            $(".list" + sid).css("display", "");
                            $("tr:nth-child(" + i + ")").attr("state", "0");
                        }
                        break;
                }
            }
        }
        if (state == "1") {
            $("#list" + sid).attr("state", "0");
        } else {
            $("#list" + sid).attr("state", "1");
        }
    }

    function open_page(NodeID, strURL) {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "添加节点<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
        diag.URL = strURL + NodeID;
        diag.show();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="NodeManage.aspx">节点管理</a></div>
<table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
	<tr class="gridtitle" align="center" style="height: 25px;">
		<td width="3%" class="title">
			<asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
		</td>
		<td width="3%">
			<strong>ID</strong>
		</td>
		<td width="40%" height="20">
			<strong>节点名称</strong>
		</td>
		<td width="12%" height="20">
			<strong>节点类型</strong>
		</td>
		<td width="45%">
			<strong>操作</strong>
		</td>
	</tr>
	<asp:Repeater ID="Repeater1" runat="server">
		<ItemTemplate>
			<tr class="tdbg list<%#Getprname(Eval("NodeID"))%>" id="list<%#Getprid(Eval("NodeID"))%>" name="list<%#Getprname(Eval("NodeID"))%>" align="center" onmouseover="this.className='tdbgmouseover list<%#Getprname(Eval("NodeID"))%>'" onmouseout="this.className='tdbg list<%#Getprname(Eval("NodeID"))%>'" <%# ShoworHidden(Eval("NodeID")) %>>
				<td height="22" align="center">
					<input name="Item" type="checkbox" value='<%# Eval("NodeID")%>' />
				</td>
				<td width="3%" align="center">
					<strong>
						<%# Eval("NodeID") %></strong>
				</td>
				<td width="40%" align="left">
				   <%# GetIcon(DataBinder.Eval(Container, "DataItem.NodeName", "{0}"), DataBinder.Eval(Container, "DataItem.NodeID", "{0}"), DataBinder.Eval(Container, "DataItem.Depth", "{0}"), DataBinder.Eval(Container, "DataItem.NodeType", "{0}"))%>
				</td>
				<td width="12%" height="20">
					<strong>
						<%# GetNodeType(DataBinder.Eval(Container, "DataItem.NodeType", "{0}"))%></strong>
				</td>
				<td width="45%">
					<%# GetOper(DataBinder.Eval(Container, "DataItem.NodeID", "{0}"), DataBinder.Eval(Container, "DataItem.NodeType", "{0}"))%>
				</td>
			</tr>
		</ItemTemplate>
	</asp:Repeater>
</table>
<br />
<asp:Button ID="Button3" class="C_input"  runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" OnClick="Button3_Click" />&nbsp<asp:Button ID="Button6" class="C_input"  runat="server" Text="提交方案" OnClientClick="return confirm('你确定要提交选中内容吗？')" onclick="Button6_Click"/>
</form>
</body>
</html>