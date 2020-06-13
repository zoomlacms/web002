<%@ page language="C#" autoeventwireup="true" inherits="manage_WapNodeManage, App_Web_emowutw1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节点管理</title>

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
         
    }

</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>WAP管理</span>&gt;&gt;<a href="WapNodeManage.aspx">节点管理</a>
    </div>
    <div class="clearbox">
    </div>
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
                <tr class="tdbg" id="list<%#Getprname(Eval("N_ID"))%>" name="list<%#Getprid(Eval("N_ID"))%>" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" <%# ShoworHidden(Eval("N_ID")) %>>
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%# Eval("N_ID")%>' />
                    </td>
                    <td width="3%" align="center">
                        <strong>
                            <%# Eval("N_ID")%></strong>
                    </td>
                    <td width="40%" align="left">
                        <%# GetIcon(DataBinder.Eval(Container, "DataItem.NodeName", "{0}"), DataBinder.Eval(Container, "DataItem.N_ID", "{0}"), DataBinder.Eval(Container, "DataItem.Depth", "{0}"))%>
                    </td>
                    <td width="12%" height="20">
                       &nbsp;
                          
                    </td>
                    <td width="45%">
                        <%# GetOper(DataBinder.Eval(Container, "DataItem.N_ID", "{0}"))%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <asp:Button ID="Button3" class="C_input" style="width:110px;" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" OnClick="Button3_Click" />
    </form>
</body>
</html>
