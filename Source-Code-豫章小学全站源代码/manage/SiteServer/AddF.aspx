<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_AddF, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script src="/JS/calendar.js"></script>

<script>
    function Open() {
        var ddl = document.getElementById("ddlSiteList");
        ddl.options[ddl.selectedIndex].value
        window.open("SiteNode.aspx?SID=" + ddl.options[ddl.selectedIndex].value + "&type=check", 'newWin', 'modal=yes,width=500,height=550,resizable=yes,scrollbars=yes');
    }
    function DelCurrentRow() {

    }
</script>

<style type="text/css">
    .style1
    {
        width: 113px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; 站群管理 &gt;&gt; <span>共享池方案管理</span> &gt;&gt; <span><a href='FManage.aspx'>方案管理</a></span> &gt;&gt; <%=strtype %>方案</div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    <asp:HiddenField ID="hfNode" runat="server" />
                    <%=strtype %>方案
                </td>
            </tr>
            <tr class="tdbg">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    方案名：
                </td>
                <td>
                     &nbsp<asp:TextBox ID="tx_typename" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" id="sendType" runat="server">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    发送方式：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0">批量发送</asp:ListItem>
                        <asp:ListItem Value="1">定位发送</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" id="site1" runat="server">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    子站点：
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:ListBox ID="ListBox1" runat="server" Height="220px" SelectionMode="Multiple" Width="200px"></asp:ListBox>
                            </td>
                            <td class="style1" align="center">
                                <asp:Button ID="Button2" runat="server" Text=">>" class="C_input" Width="50px" OnClick="Button2_Click" /><br />
                                <br />
                                <br />
                                <asp:Button ID="Button3" runat="server" Text="<<" Width="50px" class="C_input" OnClick="Button3_Click" />
                            </td>
                            <td>
                                <asp:ListBox ID="ListBox2" runat="server" Height="220px" Width="200px" SelectionMode="Multiple"></asp:ListBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tdbg" id="site2" runat="server" visible="false">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    子站点：
                </td>
                <td>
                    <asp:DropDownList ID="ddlSiteList" runat="server" Width="200px" DataTextField="SiteName" DataValueField="S_ID">
                    </asp:DropDownList>
                    &nbsp;
                    <input id="Button5" type="button" value="选择子站节点" onclick="Open()" class="C_input"/>
                </td>
            </tr>
            <tr class="tdbg">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    方案状态：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                        <asp:ListItem Selected="True" Value="1">开</asp:ListItem>
                        <asp:ListItem Value="0">关</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    方案优先级：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="2">一般</asp:ListItem>
                        <asp:ListItem Value="1">紧急</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    发送方式：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="1">子站强制获取</asp:ListItem>
                        <asp:ListItem Value="2">子站手动获取</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" id="trsubs" runat="server" >
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    强制获取：
                </td>
                <td>
                    <table width="100%">
                        <tr>
                            <td style="width:160px">
                                <asp:RadioButtonList ID="RadioButtonList5" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" onselectedindexchanged="RadioButtonList5_SelectedIndexChanged">
                                    <asp:ListItem Value="1" Selected="True">立即获取</asp:ListItem>
                                    <asp:ListItem Value="2">定时获取</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTime" runat="server" Visible="false" onclick="calendar()"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr class="tdbg">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="提交" class="C_input" OnClick="Button1_Click" />&nbsp&nbsp&nbsp&nbsp<input id="Button6" type="button" class="C_input" value="返 回" onclick="javascript:history.back()" />
                    <asp:HiddenField ID="FID" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
