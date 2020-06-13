<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.NodeManage, App_Web_t3qayxfc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节点管理</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
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

    var alldepth = 2;

    function showlist(sid, shows, depth) {
        if (sid >= 0) {
            for (var o = 0; o < document.getElementsByName("list" + sid).length; o++) {
                if (document.getElementsByName("list" + sid).item(o).style.display != "") {
                    document.getElementsByName("list" + sid).item(o).style.display = "";
                    if (depth >= 2) {
                        showitemlist(sid, o, '', depth);
                    }
                } else {
                    if (document.getElementsByName("list" + sid).item(o).name != "list0") {
                        showitemlist(sid, o, 'none', depth)
                        document.getElementsByName("list" + sid).item(o).style.display = "none";
                    }
                }
            }
        }
        parent.document.getElementById("main_right").height = document.body.offsetHeight;
    }

    function showitemlist(sid, o, type, depth) {
        if (document.getElementsByName("list" + sid) != null) {
            if (document.getElementsByName("list" + sid).item(o) != null) {
                var itemname = document.getElementsByName("list" + sid).item(o).name;
                if (document.getElementsByName(itemname).length > 0) {
                    for (var s = 0; s < document.getElementsByName(itemname).length; s++) {
                        var listitemname = document.getElementsByName(itemname).item(s).name;
                        var ss = listitemname.toString().replace("list", "");
                        if (depth >= 3 || type == "none") {
                            if (type == "none" && document.getElementsByName(itemname).item(s).style.display != "none") {
                                showitemlistsmall(ss, type, depth);
                            }
                        }
                        if (type == "none" && document.getElementsByName(itemname).item(s).style.display != "none") {
                            document.getElementsByName(itemname).item(s).style.display = type;
                        }
                    }
                }
            }
        }
    }

    function showitemlistsmall(sid, type, depth) {
        if (sid >= 0) {
            for (var o = 0; o < document.getElementsByName("list" + sid).length; o++) {
                if (document.getElementsByName("list" + sid).item(o).style.display != "none" && type == "none") {
                    document.getElementsByName("list" + sid).item(o).style.display = type;
                    var itemname = document.getElementsByName("list" + sid).item(o).name;
                    var ss = itemname.toString().replace("list", "");
                    if (depth >= alldepth || type == "none") {
                        if (type != "none") {
                            alldepth = alldepth + 1;
                        }
                        showitemlistsmall(ss, type, depth); //无限递归
                    }
                }
            }
        }
        //parent.document.getElementById("main_right").height = document.body.offsetHeight;
    }

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           <a href="ColumnManage.aspx">栏目组管理</a></div>

    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr  align="center" style="height: 25px; background-color:#F0F6FC">
            <td width="3%" >
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td width="3%">
                <strong>ID</strong>
            </td>
            <td width="40%" height="20">
                <strong>栏目名称</strong>
            </td>
            <td width="12%" height="20">
                <strong>栏目类型</strong>
            </td>
            <td width="45%">
                <strong>操作</strong>
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" id="list<%#Getprname(Eval("NodeID"))%>" name="list<%#Getprid(Eval("NodeID"))%>" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" <%# ShoworHidden(Eval("NodeID")) %>>
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
    <asp:Button ID="Button3" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"  CssClass="button" Text="批量删除" OnClick="Button3_Click" />&nbsp<asp:Button ID="Button6" runat="server" Text="提交方案" OnClientClick="return confirm('你确定要提交选中内容吗？')" onclick="Button6_Click"/>
    </div>
    </form>
</body>
</html>
