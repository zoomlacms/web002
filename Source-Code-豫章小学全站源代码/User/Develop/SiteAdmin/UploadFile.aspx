<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_UploadFile, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传文件管理</title>
     <link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
    <base target="_self" />
    <script src="../../../JS/Popup.js" language="javascript" type="text/javascript"></script>
	<style type="text/css">
	#bak:hover{ background:#878787; color:#fff;}
	#bak{ background:#e5e5e5;}
	
	</style> 
</head>
<body>
     <form id="form1" runat="server">
	 <div style="width:980px; margin:auto;">
    <div class="clearbox"></div> 
    <table width="100%">
        <tr>
            <td><asp:HiddenField ID="HdnPath" runat="server" />                
            </td>
            <td align="right">
                <%= string.IsNullOrEmpty(m_ParentDir) ? "<a disabled=\"true\">返回上一级</a>" : "<a href=\"UploadFile.aspx?Dir=" + m_ParentDir + "\">返回上一级</a>"%>
            </td>
        </tr>
    </table>
        <asp:Repeater ID="RptFiles" runat="server" OnItemCommand="RptFiles_ItemCommand">
            <HeaderTemplate>
                <table style="width:100%; border:solid 1px #ccc;">
                    <tr class="title" align="center" style="height:24px">
                        
                        <td style="width: 25%; background:#e6e6e6;">
                            名称</td>
                        <td style="width: 15%; background:#e6e6e6;">
                            大小</td>
                        <td style="width: 15%; background:#e6e6e6;">
                            类型</td>
                        <td style="width: 20%; background:#e6e6e6;">
                            创建时间</td>
                        <td style="width: 20%; background:#e6e6e6;">
                            最后修改时间
                        </td>
                        <td style="width: 5%; background:#e6e6e6;">
                            操作</td>
                    </tr>                    
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="height:24px">
                    <td align="left">
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<img src=\"/App_Themes/AdminDefaultTheme/Images/Folder/mfolderclosed.gif\">" : GetShowExtension(Eval("content_type").ToString())%>
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<a href=\"UploadFile.aspx?Dir=" + Server.UrlEncode(CurrentDir + "/" + Eval("Name").ToString()) + "\">" + Eval("Name").ToString() + "</a>" : "<span onmouseover=\"ShowADPreview('" + GetFileContent(Eval("Name").ToString(), Eval("content_type").ToString()) + "')\" onmouseout=\"hideTooltip('dHTMLADPreview')\">" + "<a href='javascript:ReturnUrl(\"" + Request.QueryString["Dir"] + "/" + Eval("Name").ToString() + "\")'>" + Eval("Name").ToString() + "</a></span>"%>
                    </td>
                    <td>
                        <%# GetSize(Eval("size").ToString())%>
                    </td>
                    <td>
                        <%# System.Convert.ToInt32(Eval("type")) == 1 ? "文件夹" : Eval("content_type").ToString() + "文件" %>
                    </td>
                    <td>
                        <%# Eval("createTime")%>
                    </td>
                    <td>
                        <%# Eval("lastWriteTime")%>
                    </td>
                    <td>
                        <asp:LinkButton ID="LbtnDelList" CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>'
                            CommandArgument='<%# Eval("Name")%>' OnClientClick="if(!this.disabled) return confirm('确定要删除吗？');"
                             runat="server">删除</asp:LinkButton></td>
                </tr>                
            </ItemTemplate> 
            <FooterTemplate>
                </table></FooterTemplate>           
        </asp:Repeater>        
        <div class="clearbox"></div> 
        <div id="dHTMLADPreview" style="z-index: 1000; left: 0px; visibility: hidden; width: 10px;
            position: absolute; top: 0px; height: 10px">
        </div>
        <div style="width:100px; height:24px; line-height:24px; border:solid 1px #ccc; text-align:center;" onmouseover="Set(this)"><a id="bak" href="BackupSite.aspx" style="display:block; width:100px; height:24px">文件备份</a></div>
        <script language="javascript" type="text/javascript">
<!--
            function ReturnUrl(url) {

                if (url.substring(0, 1) == "/") {
                    url = url.substring(1, url.Length);
                }

                var isMSIE = (navigator.appName == "Microsoft Internet Explorer");
                if (isMSIE) {
                    window.returnValue = url;
                    window.close();
                }
                else {
                    var thumbClientId = '<%= Request.QueryString["ThumbClientId"] %>';
                    if (thumbClientId == '') {
                        var obj = opener.document.getElementById('<%= Request.QueryString["ClientId"] %>');
                        var newurl = '下载地址' + (obj.length + 1) + '|' + url;
                        obj.options[obj.length] = new Option(newurl, newurl);
                        ChangeHiddenFieldValue();
                    }
                    else {
                        var obj = opener.document.getElementById(thumbClientId);
                        obj.value = url;
                    }
                    window.close();
                }
            }

            function ChangeHiddenFieldValue() {
                var obj = opener.document.getElementById('<%= Request.QueryString["HiddenFieldId"] %>');
                var softUrls = opener.document.getElementById('<%= Request.QueryString["ClientId"] %>');
                var value = "";
                for (i = 0; i < softUrls.length; i++) {
                    if (value != "") {
                        value = value + "$$$";
                    }
                    value = value + softUrls.options[i].value;
                }
                obj.value = value;
            }
//-->
        </script>
		</div>
    </form>
</body>
</html>
