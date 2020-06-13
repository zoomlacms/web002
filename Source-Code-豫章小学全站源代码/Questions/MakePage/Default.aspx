<%@ page language="C#" autoeventwireup="true" inherits="Questions_MakePage_Default, App_Web_nl3k5fg4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title><%Call.Label("{$SiteName/}");%>-生成试卷</title>
<style type="text/css">
    body{ font-size: 9pt;}
    a { font-size: 9pt;}
    .ty1{font-size: 9pt;}
   iframe{border-width:0px; margin:0px 0px 0px 0px;}
</style>
</head>

<script language="javascript">
    function SetCwinHeight() {
        var cwin = document.getElementById("main");
//        if (document.getElementById) {
//            if (cwin && !window.opera) {
//                if (cwin.contentDocument && cwin.contentDocument.body.offsetHeight)
//                    cwin.height = cwin.contentDocument.body.offsetHeight + 20;
//                else if (cwin.Document && cwin.Document.body.scrollHeight)
//                    cwin.height = cwin.Document.body.scrollHeight + 20;
//            }
//        }
    }
</script>

<body>
    <form id="form1" runat="server">
    <div>
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <td align="center" bgcolor="#FFFFFF" height="26px">
                            <a href="../default.aspx?id=<%#Eval("C_Id")%>">
                                <%#Eval("C_ClassName")%></a>
                        </td>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </table>
    </div>

    <br />
    <div>
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" height="1500px"
            class="ty1">
            <tr width="100%">
                <td  align="left" valign="top" bgcolor="#FFFFFF" height="100%">
                    <iframe name="main" id="main" src="Paper.aspx?cid=<%=Request.QueryString["id"] %>"
                        onload="Javascript:SetCwinHeight()" width="100%" height="100%" scrolling="no"></iframe>
                </td>
                <td width="20%" align="center" bgcolor="#FFFFFF" height="26px" valign="top">
                    <table style="width: 100%" class="ty1">
                        <tr>
                            <td>
                                操作
                                <hr style="height: 1px; color: Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="default.aspx?menu=clear">清空试题篮</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="../default.aspx?id=<%=Session["cid"] %>">继续添加试题</a>
                            </td>
                        </tr>
                        <%--<tr>
                            <td>
                                <a href="">试题篮试题分布</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="">加入试题夹</a>
                                <hr />
                            </td>
                        </tr>
                        <tr style="font-weight:bold">
                            <td>
                                1.试题排序
                                <hr />
                            </td>
                        </tr>--%>
                        <tr style="font-weight:bold">
                            <td>
                                1.生成试卷
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                格式：
                                <asp:DropDownList ID="PaperType" runat="server">
                                    <asp:ListItem Value="8" Selected="True">8开</asp:ListItem>
                                    <asp:ListItem Value="4" Selected="False">A4</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="生成试卷" onclick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
