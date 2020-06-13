<%@ page language="C#" autoeventwireup="true" inherits="manage_Search_AddSearch, App_Web_4vgnqrph" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>新增导航</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="SearchFunc.aspx">便捷导航</a> &gt;&gt;<span>新增导航</div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" colspan="2" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="添加搜索信息"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <tbody id="Tabs0">
                          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>导航类型：</strong>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rdoType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="1">功能清单</asp:ListItem>
                                    <asp:ListItem Value="2">帮助中心</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" style="height: 26px">
                                <strong>功能名称：</strong>
                            </td>
                            <td style="height: 26px;">
                                <asp:TextBox ID="txtName" runat="server" class="l_input" Width="214px" Height="20px"></asp:TextBox>*方便您记忆的任何助记名称。
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="名称不能为空！"  ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                <br />
                                <span runat="server" id="Span1"></span>
                            </td>
                        </tr>

                    </tbody>
                    <tbody id="Tabs1">
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td class="tdbgleft">
                                <strong>文件路径：</strong>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFileUrl" runat="server" Width="214px" Height="20px" class="l_input"></asp:TextBox>
                                <input type="button" value="选择路径" class="C_input" style="width: 100px;" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('txtFileUrl')+'&FilesDir=',650,480)" /><br />
                            *您可以直接填入系统内文件名,以便后台访问,如[manage/Config/SiteInfo.aspx]为系统配置,或输入外部网址提交。</td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="left" style="height: 59px">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="添加导航" runat="server" OnClick="EBtnSubmit_Click" />
                <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='SearchFunc.aspx'" id="Button2" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>