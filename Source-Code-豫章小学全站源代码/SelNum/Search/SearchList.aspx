<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.SearchList, App_Web_zkrma30s" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<head id="Head1" runat="server">
<title>搜索结果</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
    function setEmpty(obj) {
        if (obj.value == "请输入关键字") {
            obj.value = "";
        }
    }
    function settxt(obj) {
        if (obj.value == "") {
            obj.value = "请输入关键字";
        }
    }
</script>
</head>
<body id="Body1" runat="server">
    <form runat="server" id="myform">
     <div id="s_nav"><a href="../">网站首页</a><a href="/guestbook/">留言咨询</a></div>
    <div id="s_top" runat="server">
        <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
        <div id="Div1" runat="server" style="float: left; width: 500px; margin-top: 40px;">
            站内搜索
            <asp:DropDownList ID="DDLNode" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLNode_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:TextBox ID="TxtKeyword" runat="server" Text="请输入关键字"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="搜  索" OnClick="Button1_Click" />
        </div>
    </div>
    
    <div id="s_title">
	<span>一共为您找到标题为[<%=GetKeyWord() %>]关键词的信息<%=GetCommModelCount() %>篇</span> 
您的位置：<a href="/"><asp:Literal ID="sitename" runat="server"></asp:Literal></a>>><a  href="../../Search/indexsearch.aspx">信息搜索</a>
    </div>

    <div id="s_main">
        <div id="s_main_l">
            <ul>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                <li><strong><a href="" target="_blank"><a href="<%# GetUrl(Eval("GeneralID","{0}")) %>" target="_blank" alt="<%# Eval("Title") %>"><%#Eval("Title") %></a></strong>
                    <p><%#Eval("TagKey") %></p>
                    <span>发表时间：<%#Eval("CreateTime") %>
                    <a href="<%# GetUrl(Eval("GeneralID","{0}")) %>" target="_blank">访问详情>></a></span>
                </li>
					</ItemTemplate>
                </asp:Repeater>
            </ul>


        <div id="PShow" runat="server" visible="true">
            <pre>
            抱歉，没有找到与此相关的网页，
             搜索建议您： 看看输入的文字是否有误! 
             去掉可能不必要的字词:如"的","什么"等
            </pre>
        </div>

        </div>

        <div id="s_main_r">
            <span>按栏目搜索:</span>

            <script language="javascript">
                function searchList(nodeid) {
                    var keyWord = document.getElementsByName("TxtKeyword").item(0).value;
                    if (keyWord == "请输入关键字") {
                        keyWord = "";
                    }
                    parent.location = "SearchList.aspx?node=" + nodeid + "&keyWord=" + keyWord;
                }
            </script>

            <asp:Repeater ID="nodeList" runat="server">
                <ItemTemplate>
                    <ul>
                        <li><a href="javascript:searchList(<%#Eval("nodeid") %>)">
                            <%#Eval("NodeName") %>
                        </a></li>
                    </ul>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="cleardiv"></div>
    </div>
    
    
    <div id="Pager1" runat="server"></div>
    
    <div id="s_bottom">
        <p>
            站内搜索
            <asp:DropDownList ID="DDLNode1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLNode1_SelectedIndexChanged">
            </asp:DropDownList>
            <input id="keyWord" name="keyWord" runat="server" onclick="setEmpty(this)" onblur="settxt(this)"
                value="请输入关键字" />
            <asp:Button ID="btnSearch" runat="server" Text="搜  索" OnClick="btnSearch_Click" />
        </p>
    </div>
    
    <div id="s_copyrigt">
        &copy;<script type="text/javascript" language="JavaScript">
<!--
            var year = ""; mydate = new Date(); myyear = mydate.getYear(); year = (myyear > 200) ? myyear : 1900 + myyear; document.write(year);
--> 
        </script>
        <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank"><%Call.Label("{$SiteName/}"); %></a>
    </div>
</form>
</body>
</html>