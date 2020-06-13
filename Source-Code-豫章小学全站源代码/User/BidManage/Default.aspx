<%@ page language="C#" autoeventwireup="true" inherits="User_BidManage_Default, App_Web_kbi1lntz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>正在竞拍的商品</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/action/common.css" rel="Stylesheet" type="text/css" />
<link href="/action/auction.css" rel="Stylesheet" type="text/css" />
<script src="/JS/jquery-1.4.1.js"></script>
<script src="/JS/ajaxrequest.js"></script>
<script src="/JS/OperData.js"></script>
</head>
<body>
<div class="us_topinfo">
<div class="us_showinfo">您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent">
<asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>
</span> &gt;&gt; <span id="spaction" runat="server"></span></span></h1></div><div class="cleardiv"> </div></div>
<div class="us_seta"  style="margin-top:5px;"><h1 id="tipss" runat="server" align="center"></h1></div>

<div style="width:100%; border:1px #CCC solid" id="nocont" runat="server">暂时无参与的竞拍，快去选择你喜欢的商品吧! </div>

<div id="conten" runat="server" align="center">
    <asp:Repeater ID="repf" runat="server">
    <ItemTemplate>
        <dl class="Auction_HOR">
	        <dt>
		        <div class="proImg">
                    <input type="hidden" id="hid<%#Eval("ID") %>" value='<%#Eval("ID") %>'/>
			        <a href="DetailCom.aspx?cid=<%#Eval("ID") %>" title="<%#GetName(Eval("shopID","{0}"),"0") %>"><img width="100" height="75" alt="<%#GetName(Eval("shopID","{0}"),"0") %>" src="<%#GetName(Eval("shopID","{0}"),"4") %>" /></a>
		        </div>
	        </dt>
	        <dd class="detail">
		        <h3><a href="/action/DetailCom.aspx?cid=<%#Eval("ID") %>" target="_blank"  title="<%#GetName(Eval("shopID","{0}"),"0") %>"><%#GetName(Eval("shopID","{0}"),"0") %></a></h3>
		        <span class="description"><%#GetName(Eval("shopID","{0}"),"1") %></span>
		        <span>市价：<span class="worth">&yen;<%#GetName(Eval("shopID","{0}"),"2") %></span></span>&nbsp;&nbsp;奖品：<span style="color:#FF6600"><%#GetName(Eval("shopID","{0}"),"3") %></span>
                <div id="CompetNum" runat="server"><%#GetComTips(Eval("ID","{0}")) %></div></dd>
	        <dd class="bidder">
		        <a class="userName" href="javascript:void(0)"  id="bidder_<%#Eval("id") %>">-</a>
		        <span id='bid_btn_<%#Eval("id") %>' class="button button-hilite">
			        <span class="first-child">
                    <a href="/action/DetailCom.aspx?cid=<%#Eval("ID") %>"  id="<%#Eval("ID") %>" name="buttons" target="_blank">继续竞拍</a>
                     <input type="hidden" id="Hidden_<%#Eval("id") %>" name="Hiddenfilename" value="<%#Eval("CompeteXmlName") %>" />
                    </span>
		        </span>
	        </dd>
	        <dd class="countdown">
               <strong class="price f18" id="price_<%#Eval("id") %>" style="font-size:12px" ></strong>
                <strong class="f18" id="TimeCounter_<%#Eval("id") %>">--:--:--</strong>
            </dd>
        </dl>
    </ItemTemplate>
    </asp:Repeater>
    <div align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
            <span style="text-align: center">
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input"
                Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
                </span>条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>页</div> 
</div>
</body>
</html>