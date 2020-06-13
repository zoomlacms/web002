<%@ page language="C#" autoeventwireup="true" validaterequest="false" enableeventvalidation="false" inherits="manage_Page_AuditUser, App_Web_lfga5wcc" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>审核企业黄页</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>企业黄页</span> &gt;&gt; 黄页管理 &gt;&gt; 审核黄页申请
    </div>
    <div class="clearbox">
    </div>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td align="center" colspan="2" class="title" width="10%">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <asp:Repeater ID="pageinfos" runat="server">
                <ItemTemplate>
                    <tr class="tdbg">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            用 户 名：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%#Eval("Username") %>
                            <input type="hidden" name="hdusername" value="<%#Eval("Username") %>" />
                        </td>
                    </tr>
                    <tr id="Tr1" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            黄页样式：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%#getstylename(Eval("Styleid","{0}"))%>
                        </td>
                    </tr>
                    <tr id="Tr2" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业名称：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%=GetProName(1)%>
                        </td>
                    </tr>
                    <tr id="Tr3" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            二级域名：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%=GetProName(2)%>
                        </td>
                    </tr>
                    <tr id="Tr4" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业LOGO：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%=GetProName(3)%>
                        </td>
                    </tr>
                    <tr id="Tr5" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业说明：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%=GetProName(4)%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="editpageinfo" runat="server">
                <ItemTemplate>
                    <tr class="tdbg">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            用 户 名
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <%#Eval("Username") %>
                            <input type="hidden" name="hdusername" value="<%#Eval("Username") %>" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr id="Tr2" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业名称：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <input name="proname" id="proname" type="text" value="<%#Eval("proname") %>" class="l_input" style="width:300px" />
                        </td>
                    </tr>
                    <tr id="Tr3" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            二级域名：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                         <input name="domain" id="domain" type="text" value="<%#Eval("domain") %>" class="l_input"  style="width:60px" />.<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain %>
                        </td>
                    </tr>
                    <tr id="Tr4" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业LOGO：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <input name="logo" id="logo" type="text" value="<%#Eval("logo") %>" class="l_input" style="width:320px" />
                        </td>
                    </tr>
                    <tr id="Tr5" class="tdbg" runat="server">
                        <td align="right" class="tdbgleft" style="height: 24px; width: 30%">
                            企业说明：
                        </td>
                        <td align="left" class="tdbgright" style="height: 24px; width: 70%">
                            <textarea id="pageinfo" name="pageinfo" cols="80" rows="8" class="x_input"><%#Eval("pageinfo") %></textarea>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Label ID="RegFileds" runat="server" Text=""></asp:Label><tr class="tdbg">
                <td align="center" colspan="2" class="tdbgright" style="height: 24px; width: 100%">
                    <asp:HiddenField ID="HdnID" runat="server" />
                    <asp:HiddenField ID="HdnModel" runat="server" />
                    <asp:Button ID="Button1" runat="server" Text="确认审核" CssClass="C_input" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="取消审核" CssClass="C_input" OnClick="Button2_Click"
                        OnClientClick="return confirm('您确定要取消该用户的企业黄页吗？');" />
                    <asp:Button ID="Button3" runat="server" Text="返回" CssClass="C_input" OnClick="Button3_Click" />
                    <asp:Button ID="Button5" CssClass="C_input" runat="server" Text="修改" OnClick="Button5_Click" />
                    <asp:Button ID="Button4" CssClass="C_input" runat="server" OnClick="Button4_Click" Text="返回" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>