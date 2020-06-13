<%@ page language="C#" autoeventwireup="true" inherits="manage_Search_TemplateLi, App_Web_vqxd43kg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title></title>
    <style type="text/css">
*{ margin:0px; padding:0px;}
*{margin: 0; padding: 0;}
td{	line-height: 150%;}
body, th, td, input, button, textarea{	font-family: "宋体";	font-size: 12px;	margin-left: 0px;}
a:link, a:visited, a:active{color: #000000;}
a:link, a:visited{font: 12px "宋体";	color: #000;text-decoration: none;}

a{text-decoration: none;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
        <tr>
			<td align="left">
				当前目录：<asp:Label ID="lblDir" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hfDir" runat="server" />
			</td>
			<td align="right">
                <asp:Literal ID="LitParentDirLink" runat="server"></asp:Literal>
            </td>
		</tr>
    </table>
    <div style="width: 100%; height: 200px;">
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
        <asp:HiddenField ID="hftext" runat="server" />
     </div>
    </div>
    </form>
    <script language="javascript" type="text/javascript">
    function add(obj)
    {
        if(obj==""){return false;}
        parent.document.getElementById('FileName').value = document.getElementById('HdnFileText').value + "/" + obj;
    }
    function openfilesdir(obj)
    {
        if(obj==""){return false;}
        var pathtext="<%= Server.UrlEncode(Request.QueryString["FilesDir"]) %>";
        parent.document.getElementById('ParentDirText').value = pathtext;
        var path="SelectTemp.aspx?FilesDir="+pathtext+"\\"+escape(obj);
        parent.document.getElementById('main_right').src=path;
    }
        </script>
</body>
</html>
