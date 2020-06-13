<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="manage_Shop_Interference, App_Web_wtzqf5go" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>干扰设置</title>
    <link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script>
        function buttonclick(username, userid) {
            var objlist = document.getElementById("ListBox1");
            node = document.createElement("<option   value='" + userid + "'>");
            text = document.createTextNode(username);
            node.appendChild(text);
            objlist.appendChild(node);

            for (var i = 0; i < objlist.length; i++) {
                objlist.options[i].selected = true;
            }
        }
        function deldata(userid) {
            var objlist = document.getElementById("ListBox1");
            for (i = objlist.length - 1; i >= 0; i--) {
                if (objlist.options[i].value == userid) {
                    objlist.remove(i);
                }
            }
        }

        function deluser() {
            var objlist = document.getElementById("ListBox1");
            for (i = objlist.length - 1; i >= 0; i--) {
                if (objlist.options[i].selected) {
                    objlist.remove(i);
                }
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt;<span>商城管理</span> &gt;&gt;<span>竞拍管理</span> &gt;&gt;<span>用户干扰设置</span>
    </div>
    <div class="clearbox">
    </div>
<%--    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>
    <table width="99%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td colspan="2" align="center" class="title">
                <asp:Label ID="Label1" runat="server" Text="竞拍全局干扰设置"></asp:Label>&nbsp;
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                干扰状态：
            </td>
            <td>
                <asp:RadioButtonList ID="Start" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="true" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1" Selected="True">关闭</asp:ListItem>
                    <asp:ListItem Value="2">按人数干扰</asp:ListItem>
                    <asp:ListItem Value="3">按价格干扰</asp:ListItem>
                    <asp:ListItem Value="4">按倒计时干扰</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" id="t1" runat="server">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                干扰参数：
            </td>
            <td>
                <table width="100%" id="Panel2">
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td id="mnum" runat="server" visible="false">
                            出价额度达到 <asp:TextBox ID="txt_Mnum" runat="server" Width="53px" Style="text-align: center" CssClass="l_input" onkeyup="this.value=this.value.replace(/\D/g,'')">0</asp:TextBox> 元时开始干扰
                        </td>
                        <td id="pnum" runat="server" visible="false">
                            当参与竞拍人数达到 <asp:TextBox ID="txt_Pnum" runat="server" Width="53px" Style="text-align: center" CssClass="l_input" onkeyup="this.value=this.value.replace(/\D/g,'')">0</asp:TextBox> 人时开始干扰
                        </td>
                        <td id="snum" runat="server" visible="false">
                            当倒计时达到 <asp:TextBox ID="txt_Snum" runat="server" Width="53px" Style="text-align: center" CssClass="l_input" onkeyup="this.value=this.value.replace(/\D/g,'')">0</asp:TextBox> 秒时开始干扰
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
                        <td>
                            干扰次数:
                            <asp:TextBox ID="Times" Style="text-align: center" runat="server" Width="78px"
                                CssClass="l_input">0</asp:TextBox>
                            次/人
                        </td>
                    </tr>
                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
                        <td>
                            干扰时间间隔:
                            <asp:TextBox ID="TextBox10" Style="text-align: center" runat="server" Width="78px"
                                CssClass="l_input">0</asp:TextBox>
                            <asp:DropDownList ID="Interval" runat="server" CssClass="x_input">
                                <asp:ListItem Value="Hours">小时</asp:ListItem>
                                <asp:ListItem Value="Minutes">分钟</asp:ListItem>
                                <asp:ListItem Value="Second">秒</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="t2" runat="server" style="display:none">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                干扰价格：
            </td>
            <td>
                <asp:RadioButtonList ID="Price" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="1">随机价格</asp:ListItem>
                    <asp:ListItem Value="2">最低价格</asp:ListItem>
                    <asp:ListItem Value="3">最高价格</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" id="t3" runat="server">
            <td class="tdbgleft" style="width: 200px; height: 23px;">
                参与干扰人员：
            </td>
            <td>
                <asp:HiddenField ID="hfNum" runat="server" />
                <asp:ListBox ID="ListBox1" runat="server" CssClass="x_input" SelectionMode="Multiple"
                    Width="200px" Height="150px"></asp:ListBox>
                <br />
                <input id="Button11" type="button" value="选择用户" class="C_input" onclick="window.open('/manage/Common/SelectUser.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');" />
                <input id="Button2" type="button" value="删除" class="C_input" onclick="deluser()" />
            </td>
        </tr>
        <tr class="tdbg">
            <td colspan="2" align="center">
                <asp:Button ID="Button1" class="C_input" Style="width: 110px;" runat="server" Text="保存设置"
                    OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
<%--    </ContentTemplate>
    </asp:UpdatePanel>--%>
    

    </form>
</body>
</html>
