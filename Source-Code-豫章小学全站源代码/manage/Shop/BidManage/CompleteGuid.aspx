<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_CompleteGuid, App_Web_wtzqf5go" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title><%=lang.Get("m_CompleteGuid_manage")%></title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
            }
        }
    }

    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }

        try {
            parent.MDIOpen(righturl); return false;
        } catch (Error) {
            parent.frames["main_right"].location = righturl;
        }
    }

    function chechs() {
        if (document.getElementById) {
            parent.document.getElementById("left").height = document.body.scrollHeight + 20;
        }
        else {
            parent.document.getElementById("left").height = document.body.scrollHeight + 20;
        }
    }

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>
</head>
<body id="Guidebody" style="margin: 0px; margin-top:1px;">
<form id="formGuide" runat="server">

<div id="Div1">
    <ul>
        <li id="Li2">
            <div id="Div2">
                <div class="guideexpand" onclick="Switch(this)">
                    <%=lang.Get("m_CompleteGuid_auction")%>
                </div>                    
                <div class="guide">
                <ul>                        
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="Interference.aspx" target="main_right"><%=lang.Get("m_CompleteGuid_set")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="BuyPaiBao.aspx" target="main_right"><%=lang.Get("m_CompleteGuid_beat")%></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="BuyPaiBaolog.aspx" target="main_right"><%=lang.Get("m_CompleteGuid_record") %></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="BidConfige.aspx" target="main_right"><%=lang.Get("m_CompleteGuid_info") %></a></li>
                    <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="History.aspx" target="main_right"><%=lang.Get("m_CompleteGuid_history") %></a></li>
                </ul>
                </div>
            </div>
        </li>

        <li id="Li4">
            <div id="Div4">
                <div class="guideexpand" onclick="Switch(this)"><%=lang.Get("m_CompleteGuid_manage") %></div>    
                <div id="Guide_box" style="height:500px">
                <asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" 
                    EnableViewState="False" NodeIndent="10" Height="220px" Width="98px">
                    <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                    <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                    <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                    <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                </asp:TreeView>

            </div>                   
            </div>
            
        </li>
     </ul>
</div>
</form>
</body>
</html>