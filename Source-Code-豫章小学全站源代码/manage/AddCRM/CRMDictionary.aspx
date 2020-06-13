<%@ page language="C#" autoeventwireup="true" inherits="manage_AddCRM_CRMDictionary, App_Web_msejy5ma" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>CRM配置</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span><asp:Literal ID="liTitle" runat="server"></asp:Literal>
        </span>&nbsp;&gt;&gt;&nbsp;<span>CRM配置</span>&nbsp;&gt;&gt;&nbsp;<a href="CRMDictionary.aspx?FieldName=<%=Request.QueryString["FieldName"] %>"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></a>
    </div>
    <br />
    <table width='100%' border='0' cellpadding='2' cellspacing='1' class="border">
        <tr class='gridtitle'>
            <td colspan='10' class="gridtitle" align="center" style="height: 25px;">
                <b>CRM配置</b>
            </td>
        </tr>
    </table>
    <asp:Panel ID="asdf" runat="server">
        <br />
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
            <tr class="gridtitle">
                <td colspan="5" align="center" style="height: 25px;">
                    <asp:Label ID="Tit" runat="server" Text="客户区域表"></asp:Label>
                </td>
            </tr>
            <tr class="tdbgleft">
                <td align="center">
                    序号
                </td>
                <td align="center">
                    选项值
                </td>
                <td align="center">
                    默认显示
                </td>
                <td align="center">
                    是否启用
                </td>
                <td align="center">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="repeater1" runat="server" OnItemCommand="repeater1_ItemCommand">
                <ItemTemplate>
                    <tr style="width: 500px" class="tdbg" onmouseover="this.className='tdbgmouseover'"
                        onmouseout="this.className='tdbg'">
                        <td align="center">
                            <%# Eval("sort")%>
                        </td>
                        <td align="center">
                            <asp:TextBox ID="TextBox1" class="l_input" runat="server" Text='<%# Eval("content")%>'
                                Style="text-align: center"></asp:TextBox>
                        </td>
                        <td align="center">
                            <input type="radio" id="raa<%# Eval("sort")%>" name="raa" value="<%# Eval("sort")%>"
                                <%#Eval("default_","{0}")=="True"?"checked":""%> />
                        </td>
                        <td align="center">
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("enable")%>' />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Del" CommandArgument='<%#Eval("sort") %>'>删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <asp:Button ID="Button4" runat="server" Text="新增" class="C_input" OnClick="Button4_Click" CausesValidation="false" />
        <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" class="C_input" />
        <asp:TextBox ID="tex" runat="server" Style="display: none" />
        <br />
        <div id="Panel1" runat="server" visible="false">
            <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
                <tr class="gridtitle">
                    <td colspan="2" align="center" style="height: 25px;">
                        <asp:Label ID="Tit0" runat="server" Text="添加区域"></asp:Label>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="right">
                        选 项 值：
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txt_content" runat="server" CssClass="l_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="选项值不能为空！" ControlToValidate="txt_content"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="right">
                        默认显示：
                    </td>
                    <td align="left">
                        <input type="radio" id="ra1" name="ra" value="True" checked /><label for="ra1">是</label>
                        <input type="radio" id="ra2" name="ra" value="False" /><label for="ra2">否</label>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="right">
                        是否启用：
                    </td>
                    <td align="left">
                        <asp:CheckBox ID="txt_enable" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" Text="添加" class="C_input" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="取消" class="C_input" CausesValidation="false" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <div style="clear: both;">
    </div>
    </form>
</body>
</html>
