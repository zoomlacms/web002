<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Sitefunction_stat, App_Web_zczmicyg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>栏目管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

    <script src="/JS/calendar.js" type="text/javascript"></script>

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
            当前位置：功能导航 &gt;&gt;选择时间段</div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
            <tr class="tdbg" align="center">
                <td height="22" align="left">
                    开始时间<asp:TextBox ID="TextBox1" runat="server" onclick="calendar()"></asp:TextBox>
                    结束时间<asp:TextBox ID="TextBox2" runat="server" onclick="calendar()"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="分析" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> 栏目管理</div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
            <tr align="center" style="height: 25px; background-color: #F0F6FC">
                <td width="3%">
                    <strong>ID</strong>
                </td>
                <td width="20%" height="20">
                    <strong>栏目名称</strong>
                </td>
                <td width="16%" height="20">
                    <strong>新增内容</strong>
                </td>
                <td width="16%">
                    <strong>修改内容</strong>
                </td>
                <td width="16%">
                    <strong>新增评论</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" id="list<%#Getprname(Eval("NodeID"))%>" name="list<%#Getprid(Eval("NodeID"))%>"
                        align="center">
                        <td width="3%" align="center">
                            <strong>
                                <%# Eval("NodeID") %></strong>
                        </td>
                        <td width="40%" align="left">
                            <%# GetIcon(DataBinder.Eval(Container, "DataItem.NodeName", "{0}"), DataBinder.Eval(Container, "DataItem.NodeID", "{0}"), DataBinder.Eval(Container, "DataItem.Depth", "{0}"), DataBinder.Eval(Container, "DataItem.NodeType", "{0}"))%>
                            (<%#GetNum(DataBinder.Eval(Container, "DataItem.NodeID", "{0}"),1) %>)
                        </td>
                        <td height="20">
                            <%#GetNum(DataBinder.Eval(Container, "DataItem.NodeID", "{0}"),2) %>
                        </td>
                        <td>
                            <%#GetNum(DataBinder.Eval(Container, "DataItem.NodeID", "{0}"),3) %>
                        </td>
                        <td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 &gt;&gt;按管理员统计</div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
            <tr align="center" style="height: 25px; background-color: #F0F6FC">
                <td width="16%" height="20">
                    <strong>登陆名</strong>
                </td>
                <td width="16%">
                    <strong>显示名</strong>
                </td>
                <td width="16%">
                    <strong>新增内容</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" id="list<%#Getprname(Eval("NodeID"))%>" name="list<%#Getprid(Eval("NodeID"))%>"
                        align="center">
                        <td height="20">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    </form>
</body>
</html>
