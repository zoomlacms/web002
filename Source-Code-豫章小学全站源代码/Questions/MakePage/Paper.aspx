<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="Questions_MakePage_Paper, App_Web_nl3k5fg4" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head id="Head1" runat="server">
<title><%Call.Label("{$SiteName/}");%>-生成试卷</title>
<style type="text/css">
    body
    {
        font-size: 9pt;
    }
    a
    {
        font-size: 9pt;
    }
</style>
</head>

<script>
    function showtab(id) {
        if (document.getElementById(id).style.display != "none") {
            document.getElementById(id).style.display = "none";
        }
        else {
            document.getElementById(id).style.display = "";
        }
        parent.SetCwinHeight();
    }

    function Senk(vod,obj) {
        if (document.getElementById(vod).style.display != "none") {
            document.getElementById(vod).style.display = "none";
            obj.value = "展开";
        }
        else {
            document.getElementById(vod).style.display = "";
            obj.value = "收缩";
        }
    }
</script>

<body>
    <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        &nbsp;<div style="float: left; width: 100%">
            <hr />
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <asp:Repeater ID="Repeater10" runat="server"  >
                <ItemTemplate>
                    <div style="float:left; width:50%">
                    <asp:HiddenField ID="HiddenField1" runat="server" Value="<%#Container.DataItem %>" />
                    <%#GetChineseNumd((Container.ItemIndex + 1).ToString())%>、<asp:Label ID="Label2" runat="server" Text='<%#GettxName(Container.DataItem) %>'></asp:Label> 
                    </div>
                    <div style="float:left; width:50%; text-align:right;">
                    <asp:Button ID="Button5" OnClick="Button5_Click" runat="server" Text="上移" /> <asp:Button ID="Button6" OnClick="Button6_Click" runat="server" Text="下移" /> 
                        <input id="Button1" type="button" value="收缩" onclick="Senk('Rep<%#Container.ItemIndex%>',this);" />
                    </div>
                    <br />
                    <hr />
                    <div id="Rep<%#Container.ItemIndex%>">
                    <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Page_list(Container.DataItem) %>'>
                        <ItemTemplate>
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                                <tr>
                                    <td bgcolor="#FFFFFF" height="26px" style="line-height: 26px">
                                        <span style="width: 70%; float: left; font-weight: bold">难度：<%#Getndname(Eval("p_Difficulty","{0}"))%>
                                            使用次数：<%#Eval("p_Views")%>
                                            入库时间：<%#Eval("p_CreateTime", "{0:yyyy-MM-dd}")%><br />
                                            来源：<font color="green" style="font-weight: normal"><%#GetPaper(Eval("Paper_Id", "{0}"))%></font>
                                        </span><span style="width: 30%; float: left; text-align: right">
                                            <asp:HiddenField ID="PageIDs" runat="server" Value='<%#Eval("p_id") %>' />
                                            <asp:Button ID="Button2" runat="server" Text="上移▲" CommandArgument='<%#Eval("p_id")%>'
                                                OnClick="Button2_Click1" />
                                            <asp:Button ID="Button3" runat="server" Text="下移▼" CommandArgument='<%#Eval("p_id")%>'
                                                OnClick="Button3_Click" />
                                            移动到
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnLoad="OnInits">
                                            </asp:DropDownList>
                                            题
                                            <asp:Button ID="Button4" runat="server" Text='<%#GetText(Eval("p_id","{0}")) %>'
                                                OnClick="Button4_Click" CommandArgument='<%#Eval("p_id")%>' />
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" height="26px" style="padding-bottom: 10px; padding-top: 10px">
                                        <%#Eval("p_Content")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF" height="26px" style="line-height: 26px">
                                        <span style="width: 60%; float: left">
                                            <input id="Button1" type="button" value="答案 >>" onclick="showtab('an<%#Eval("p_id") %>');return false;"
                                                style="color: Red" />
                                            纠错[永久链接] </span><span style="width: 40%; float: left; text-align: right">题型：<font
                                                color="blue"><%#Gettxname(Eval("p_Type","{0}"))%></font> 知识点：<font color="blue"><%#GetKnowledge(Eval("p_Knowledge","{0}"))%></font>
                                            </span>
                                    </td>
                                </tr>
                                <tr style="display: none" id="an<%#Eval("p_id") %>" name="an<%#Eval("p_id") %>">
                                    <td bgcolor="#FFFFFF" height="26px" style="line-height: 26px; border: 1px dotted #F00;">
                                        <%#Eval("p_Answer")%>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <%--<asp:TextBox ID="hiddenid" runat="server"></asp:TextBox>--%>
                     </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    </form>
</body>
</html>
