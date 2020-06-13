<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.SelectTemplate, App_Web_lfti5d2r" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择模板</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
            <tr>
                <td align="left">
                    当前目录：<asp:Label ID="lblDir" runat="server" Text="Label"></asp:Label>
                </td>
                <td align="right">
                    <asp:Literal ID="LitParentDirLink" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
        <div style="width: 100%; height: 100%; text-align:left " >
            <asp:Repeater ID="RepFiles" runat="server" OnItemDataBound="RepFiles_ItemDataBound">
                <ItemTemplate>
                    <%#  System.Convert.ToInt32(Eval("type")) == 1 ? "<img src=\"/App_Themes/AdminDefaultTheme/Images/Node/closefolder.gif\" style=border-right: 0px; border-top: 0px;border-left: 0px; border-bottom: 0px />" : "<img src=\"/App_Themes/AdminDefaultTheme/Images/Node/singlepage.gif\" style=border-right: 0px; border-top: 0px;border-left: 0px; border-bottom: 0px />"%>
                    <a href="#" onclick="<%#  System.Convert.ToInt32(Eval("type")) == 1 ?"openfilesdir('" + Eval("Name") + "')":"add('" + Eval("Name") + "')"%>">
                        <%# Eval("Name")%>
                    </a>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            <asp:HiddenField ID="HdnFileText" runat="server" />
        </div>
    </div>
    </form>

    <script language="javascript" type="text/javascript">
    function add(obj)
    {
  //  alert(document.getElementById('HdnFileText').value);
        if(obj==""){return false;}
       parent.document.getElementById('FileName').value = document.getElementById('HdnFileText').value + "/" + obj;
    }
    function openfilesdir(obj)
    {
        if(obj==""){return false;}
        var pathtext="<%= Server.UrlEncode(Request.QueryString["FilesDir"]) %>";
        var nid="<%= Request.QueryString["nid"] %>";

        parent.document.getElementById('ParentDirText').value = pathtext;
        var path="SelectTemplate.aspx?nid="+nid+"&FilesDir="+pathtext+"/"+escape(obj);
        parent.document.getElementById('main_right').src=path;
    }
    </script>

</body>
</html>
