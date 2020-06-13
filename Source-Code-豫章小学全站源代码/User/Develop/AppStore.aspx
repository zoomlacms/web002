<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_AppStore, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>应用商城</title>
<meta http-equiv="content-Type" content="text/html; charset=utf-8"/> 
<link type="text/css" rel="stylesheet" href="Css/global.css" />	
<link rel="stylesheet" href="/js/lightbox2.02/css/lightbox.css" type="text/css" media="screen" />
	<script src="/js/lightbox2.02/js/prototype.js" type="text/javascript"></script>
	<script src="/js/lightbox2.02/js/lightbox.js" type="text/javascript"></script>
	<script src="/js/lightbox2.02/js/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
</head>
<body id="appstore_bg">
<form id="form1" runat="server">
<div id="app_head">
<b>  应用分类 </b>
<ul><li><a href="AppStore.aspx?groupid=3">相册类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=11">系统类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=2">文章类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=1">商品类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=9">在线地图类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=5">天气预报类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=10">换模版类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=6">图层类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=7">版式类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=8">背景类</a></li><li>|</li>
<li><a href="AppStore.aspx?groupid=4">布局类</a></li>
</ul>
</div>
<div id="app_main">
<div id="app_mList">
<div class="app_menu"><ul>
<li id="meu0"><asp:Label runat="server" ID="Liten"></asp:Label></li>
<li id="meu1" style="display: none;">相册类</li>
<li id="meu2" style="display: none;">系统类</li>
<li id="meu3" style="display: none;">文章列表类</li>
<li id="meu4" style="display: none;">商品列表类</li>
<li id="meu5" style="display: none;">在线地图类</li>
<li id="meu6" style="display: none;">换模版类</li>
<li id="meu7" style="display: none;">图层类</li>
<li id="meu8" style="display: none;">版式类</li>
<li id="meu9" style="display: none;">背景类</li>
<li id="meu10" style="display: none;">布局类</li>
</ul>
</div>
<!--<div id="viewPic" >
暂无<br/>预览
</div>-->
<div id="app_mshop">
    <asp:DataList ID="appList" runat="server" RepeatColumns="7" 
        RepeatDirection="Horizontal" DataKeyField="ID" 
        onitemdatabound="appList_ItemDataBound" 
        onitemcommand="appList_ItemCommand" >
        <ItemTemplate>
            <span><a href="<%# DataBinder.Eval(Container.DataItem, "Img") %>" title="<%# DataBinder.Eval(Container.DataItem, "Alias") %>"  rel="lightbox" ><div style="text-align: center;"><img alt="<%# DataBinder.Eval(Container.DataItem, "Alias") %>" src="<%# DataBinder.Eval(Container.DataItem, "Img") %>" /></div> 
                <div style="text-align: center;"><a><%# DataBinder.Eval(Container.DataItem, "Alias") %></a></div><div style="text-align: center;">￥<%# DataBinder.Eval(Container.DataItem, "Price") %>元</div>
                <div class="btndiv">
                    <asp:Button ID="BuyBtn"  runat="server"  CommandArgument='<%# DataBinder.Eval(Container.DataItem, "ID") %>'  CommandName='<%# DataBinder.Eval(Container.DataItem, "Price") %>' /></div>
                </span>
         </ItemTemplate>
    </asp:DataList>    
    </div>
    <div class="clear"></div>
    </div>
    <br />
    <div id="app_page">
    <asp:LinkButton ID="btn1" runat="server" CommandName="aa" OnCommand="btnOK" title="首页"><<</asp:LinkButton>
    <asp:LinkButton ID="btn2" runat="server" CommandName="bb" OnCommand="btnOK" title="上一页">☜</asp:LinkButton>
    <asp:LinkButton ID="btn3" runat="server" CommandName="cc" OnCommand="btnOK" title="下一页">☞</asp:LinkButton>
    <asp:LinkButton ID="btn4" runat="server" CommandName="dd" OnCommand="btnOK" title="尾页">>></asp:LinkButton><br />
    <span style="font-size:12px;">&nbsp&nbsp<%=pageIndex.ToString()%>/<%=pages.ToString()%>页  共<%=count.ToString()%>条记录</span>
    </div>
    </div>
    <div id="app_con">
    <b>如何使用</b>
        <p>
            使用以上产品，可以让您的网站更加绚丽，更加完善。<br/>
            使用步骤：<br/>
            1.选择商品，点击购买。<br/>
            2.购买后的商品会出现在设计台的控件中，可在网页设计的设计台中，点模块中的编辑，添加内容插入。
        </p>
    </div>
    </form>
</body>
</html>
