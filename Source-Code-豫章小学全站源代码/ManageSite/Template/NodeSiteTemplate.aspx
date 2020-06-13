<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Template_NodeSiteTemplate, App_Web_lfti5d2r" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>模板管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >>当前目录：<a href="NodeSiteTemplate.aspx"><asp:Label ID="lblDir" runat="server" Text="Label"></asp:Label></a>&nbsp;&nbsp;&nbsp;<asp:Literal
                ID="LitParentDirLink" runat="server"></asp:Literal></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr align="center" style="height: 25px; background-color: #F0F6FC">
                <td width="45%">
                    名称
                </td>
                <td width="10%">
                    大小
                </td>
                <td width="10%">
                    类型
                </td>
                <td width="20%">
                    修改时间
                </td>
                <td>
                    操作
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:Repeater ID="repFile" runat="server" OnItemCommand="repFileReName_ItemCommand">
                        <ItemTemplate>
                            <tr class="tdbg">
                                <td align="left">
                                    <img alt="" src=' <%# System.Convert.ToInt32(Eval("type")) == 1 ? "../../App_Themes/AdminDefaultTheme/Images/Node/closefolder.gif" :"../../App_Themes/AdminDefaultTheme/Images/Node/singlepage.gif" %>' />
                                    <a href="<%# System.Convert.ToInt32(Eval("type")) == 1 ?  "TemplateManage.aspx?nid="+Request.QueryString["nid"]+"&Dir=" + Server.UrlEncode(Request.QueryString["Dir"] +"/"+ Eval("Name").ToString()):"TemplateEdit.aspx?nid="+Request.QueryString["nid"]+"&filepath="+ Server.UrlEncode(Request.QueryString["Dir"] +"/"+ Eval("Name").ToString()).TrimStart() %>">
                                        <%# Eval("Name") %></a>
                                </td>
                                <td align="center">
                                    <%# GetSize(Eval("size").ToString()) %>
                                </td>
                                <td align="center">
                                    <asp:HiddenField ID="HdnFileType" Value='<%#Eval("type") %>' runat="server" />
                                    <%# System.Convert.ToInt32(Eval("type")) == 1 ? "文件夹" : Eval("content_type").ToString() + "文件" %>
                                </td>
                                <td align="center">
                                    <%#Eval("lastWriteTime")%>
                                </td>
                                <td align="center">
                                    &nbsp;
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Name").ToString()%>'
                                        CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "":"DownFiles" %>'
                                        Enabled='<%# System.Convert.ToInt32(Eval("type")) == 1 ? false:true %>'>下载</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Name").ToString()%>'
                                        CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>'
                                        OnClientClick="return confirm('你确认要删除该文件夹或文件吗？')">删除</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Name").ToString()%>'
                                        CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "CopyDir":"CopyFiles" %>'
                                        Enabled='<%# System.Convert.ToInt32(Eval("type")) == 1 ? false:true %>'>复制</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr>
                <td colspan="5" align="left">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%" >
                        <tr class="tdbg">
                            <td style=" width:10%">
                                <asp:Button ID="Button1" runat="server" CssClass="button" Text="新建模板" OnClick="Button1_Click" />
                            </td>
                            <td  style=" width:20%" align="right">
                                目录名称：
                            </td>
                            <td style="width:10%" align="left">
                                <asp:TextBox ID="txtForderName" runat="server" Width="200"></asp:TextBox>
                            </td>
                            <td style="width:40%" align="left">
                                <asp:Button ID="btnCreateFolder" runat="server" CssClass="button" Text="创建目录" OnClick="btnCreateFolder_Click" />
                                <asp:HiddenField ID="HdnPath" runat="server" />
                            </td>
                            <td align="right">
                                <asp:FileUpload ID="fileUploadTemplate" runat="server" CssClass="button" />
                            </td>
                            <td align="left">
                                <asp:Button ID="btnTemplateUpLoad" CssClass="button" runat="server" Text="上传模板" OnClientClick="return confirm('即将覆盖同名模板，是否继续？');"
                                    OnClick="btnTemplateUpLoad_Click" />
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
