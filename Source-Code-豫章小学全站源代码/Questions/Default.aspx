<%@ page language="C#" autoeventwireup="true" inherits="Questions_Default, App_Web_10bndzyt" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title><%Call.Label("{$SiteName/}");%>-×é¾íÏµÍ³</title>
<style type="text/css">
    body{font-size: 9pt;}
    iframe{border-width:0px; margin:0px 0px 0px 0px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
            <tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <td align="center" bgcolor="#FFFFFF" height="26px">
                            <a href="?id=<%#Eval("C_Id")%>">
                                <%#Eval("C_ClassName")%></a>
                        </td>
                    </ItemTemplate>
                </asp:Repeater>
            </tr>
        </table>
    </div>
    <%
        if (Request.QueryString["id"] != null)
        {    
    %>
    <br />
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
        <tr>
            <td align="center" bgcolor="#FFFFFF"  width="20%">
                <%=GetClassName() %>
            </td>
        </tr>
    </table>
    <br />
    <div>
        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" height="1500px">
            <tr>
                <td width="20%" align="left" valign="top" bgcolor="#FFFFFF">
                    <asp:TreeView ID="tvNav" runat="server" ShowLines="True" EnableViewState="False"
                        NodeIndent="10" CollapseImageUrl="~/Images/TreeLineImages/minus.gif" 
                        ExpandImageUrl="~/Images/TreeLineImages/plus.gif" 
                        LineImagesFolder="~/Images/TreeLineImages">
                        <NodeStyle BorderStyle="None" />
                    </asp:TreeView>
                </td>
                <td align="center" bgcolor="#FFFFFF" valign="top"  height="100%">
                <iframe name="main" id="main" src="Paper.aspx?cid=<%=Request.QueryString["id"] %>" onload="Javascript:SetCwinHeight()"  width="100%" height="100%"  scrolling="no" ></iframe>   
                </td>
            </tr>
        </table>
    </div>
    <%
        }    
    %>
    </form>
</body>
<script language="javascript">
    function SetCwinHeight() {
        var cwin = document.getElementById("main");
//        if (document.getElementById) {
//            if (cwin && !window.opera) {
//                if (cwin.contentDocument && cwin.contentDocument.body.offsetHeight)
//                    cwin.height = cwin.contentDocument.body.offsetHeight + 20;
//                else if (cwin.Document && cwin.Document.body.scrollHeight)
//                    cwin.height = cwin.Document.body.scrollHeight + 20;
//            }
//        }
    }
</script>
</html>
