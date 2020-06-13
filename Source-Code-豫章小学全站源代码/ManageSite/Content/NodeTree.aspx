<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.NodeTree, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<html>
<head runat="server">
<title>栏目名导航</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript">    
    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling)
        {
            if(obj.nextSibling.nodeName=="DIV")
            {
                nextDiv = obj.nextSibling;
            }
            else
            {
                if(obj.nextSibling.nextSibling)
                {
                    if(obj.nextSibling.nextSibling.nodeName=="DIV")
                    {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if(nextDiv)
            {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none"; 
            }
        }
    }
    function OpenLink(lefturl,righturl) {
        
        if(lefturl!="")
        {
            parent.frames["content_left"].location = lefturl;
        }
    }
    function chechs() {
        if (document.getElementById) {
            parent.document.getElementById("content_left").height = document.body.scrollHeight + 20;
        }
        else {
            parent.document.getElementById("content_left").height = document.body.scrollHeight + 20;
        }
    }

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.main_right.location = "../" + url;
        }
    }
    
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top: 1px;" >
    <div class="lefttab2">
        <a href="javascript:undefined;" onclick="location.reload();" title="点击刷新栏目">栏目名</a>
    </div>
    <div class="columncontent">
        <form id="formGuide" runat="server">
        <asp:TreeView ID="tvNav" runat="server" ShowLines="True" EnableViewState="False"
            NodeIndent="10" >
            <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
            <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
            <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
            <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
        </asp:TreeView>
        </form>
    </div>
</body>
</html>