<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.SearchList, App_Web_4hcrvkm5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<head id="Head1" runat="server">
<title>豫章小学_站内搜索</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../Template/yzxx/style/global.css"  rel="stylesheet" type="text/css"/>
<style>
#btnSearch{ width:64px; height:24px; text-align:center; line-height:24px; border:none; background:url(../Template/yzxx/style/images/search_bg.jpg); cursor:pointer;}
</style>
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
<body id="Body1" runat="server" style=" background: url(../Template/yzxx/style/images/Body_bg.jpg) repeat-x;">
<!--top end-->
<%Call.Label("{ZL.Label id=\"和雅豫章头部\"/}"); %>
<form runat="server" id="myform" style=" width:980px; margin:auto; clear:both;">
     <div id="s_nav" style="display:none;"><a href="../">网站首页</a><a href="/guestbook/">留言咨询</a></div>
    <div id="s_top" runat="server" style=" height:30px;">
        <a href="<%Call.Label("{$SiteURL/}"); %>" target="_blank" style="display:none;"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
        <div id="Div1" runat="server" style="float: left; width: 500px; margin-top: 40px; display:none">
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

        <div id="s_main_r" style="display:none;">
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
    
  <div id="s_bottom" style="display:none;">
        <p>
            站内搜索
            <asp:DropDownList ID="DDLNode1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLNode1_SelectedIndexChanged">
            </asp:DropDownList>
            <input id="keyWord" name="keyWord" runat="server" onclick="setEmpty(this)" onblur="settxt(this)"
                value="请输入关键字" />
            <asp:Button ID="btnSearch" runat="server" Text="搜  索" OnClick="btnSearch_Click" />
        </p>
    </div>
    
 <div id="s_copyrigt" style="display:none;">
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