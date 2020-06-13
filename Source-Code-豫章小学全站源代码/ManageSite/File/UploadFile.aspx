<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.UploadFile, App_Web_zscwa44e" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上传文件管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<base target="_self" />
<script src="/JS/Popup.js" language="javascript" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle">当前位置：功能导航 >>站点文件管理 </div>
    <table width="100%">
      <tr>
        <td> 当前目录：
          <asp:Label ID="LblCurrentDir" runat="server"></asp:Label>
          <asp:HiddenField ID="HdnPath" runat="server" /></td>
        <td align="right"><%= string.IsNullOrEmpty(m_ParentDir) ? "<a disabled=\"true\">返回上一级</a>" : "<a href=\"UploadFile.aspx?nid=" + Request.QueryString["nid"] + "&Dir=" + m_ParentDir.Replace("//","/") + "\">返回上一级</a>"%></td>
      </tr>
    </table>
    <asp:Repeater ID="RptFiles" runat="server" OnItemCommand="RptFiles_ItemCommand">
      <HeaderTemplate>
        <table width="100%" cellpadding="0" cellspacing="1" border="0" >
        <tr  align="center" style="height:24px;background-color:#F0F6FC">
          <td> 名称</td>
          <td style="width: 60px"> 大小</td>
          <td style="width: 80px"> 类型</td>
          <td> 创建时间</td>
          <td style="width: 120px"> 最后修改时间 </td>
          <td style="width: 40px"> 操作</td>
        </tr>
      </HeaderTemplate>
      <ItemTemplate>
        <tr style="height:24px">
          <td align="left"><%# System.Convert.ToInt32(Eval("type")) == 1 ? "<img src=\"/App_Themes/AdminDefaultTheme/Images/Folder/mfolderclosed.gif\">" : GetShowExtension(Eval("content_type").ToString())%> <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<a href=\"UploadFile.aspx?nid=" + Request.QueryString["nid"] + "&Dir=" + Server.UrlEncode(CurrentDir + "/" + Eval("Name").ToString()) + "\">" + Eval("Name").ToString() + "</a>" : "<span onmouseover=\"ShowADPreview('" + GetFileContent(Eval("Name").ToString(), Eval("content_type").ToString()) + "')\" onmouseout=\"hideTooltip('dHTMLADPreview')\">" + "<a href='javascript:ReturnUrl(\"" + (Request.QueryString["Dir"] + "/" + Eval("Name").ToString()).Replace(@"//", @"/").Replace("\\",@"/") + "\")'>" + Eval("Name").ToString() + "</a></span>"%></td>
          <td><%# GetSize(Eval("size").ToString())%></td>
          <td><%# System.Convert.ToInt32(Eval("type")) == 1 ? "文件夹" : Eval("content_type").ToString() + "文件" %></td>
          <td><%# Eval("createTime")%></td>
          <td><%# Eval("lastWriteTime")%></td>
          <td><asp:LinkButton ID="LbtnDelList" CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>' CommandArgument='<%# Eval("Name")%>' OnClientClick="if(!this.disabled) return confirm('确定要删除吗？');"  runat="server">删除</asp:LinkButton></td>
        </tr>
      </ItemTemplate>
      <FooterTemplate>
        </table>
      </FooterTemplate>
    </asp:Repeater>
    <div></div>
    <div id="dHTMLADPreview" style="z-index: 1000; left: 0px; visibility: hidden; width: 10px;  position: absolute; top: 0px; height: 10px"> </div>
  </div>
  <script language="javascript" type="text/javascript">
<!--
function ReturnUrl(url)
{

    if (url.substring(0, 1) == "/")
    {
        url = url.substring(1, url.Length);
    }
    
    var isMSIE= (navigator.appName == "Microsoft Internet Explorer");
    if (isMSIE)
    {
        window.returnValue = url;
        window.close();
    }
    else
    {
        var thumbClientId = '<%= Request.QueryString["ThumbClientId"] %>';
        if(thumbClientId == '')
        {
            var obj = opener.document.getElementById('<%= Request.QueryString["ClientId"] %>');
            var newurl='下载地址'+(obj.length+1)+'|'+url;
            obj.options[obj.length]=new Option(newurl,newurl);
            ChangeHiddenFieldValue();
        }
        else
        {
            var obj = opener.document.getElementById(thumbClientId);
            obj.value = url;
        }
        window.close();
    }
}

function ChangeHiddenFieldValue()
{
    var obj = opener.document.getElementById('<%= Request.QueryString["HiddenFieldId"] %>');
    var softUrls = opener.document.getElementById('<%= Request.QueryString["ClientId"] %>');
    var value = "";
    for(i=0;i<softUrls.length;i++)
    {
        if(value!="")
        {
            value = value+ "$$$";
        }
        value = value + softUrls.options[i].value;
    }
    obj.value = value;
}
//-->
 </script>
</form>
</body>
</html>