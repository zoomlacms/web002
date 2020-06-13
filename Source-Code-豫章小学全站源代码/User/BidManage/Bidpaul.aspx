<%@ page language="C#" autoeventwireup="true" inherits="User_BidManage_Bidpaul, App_Web_kbi1lntz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>保价购买</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/action/common.css" rel="Stylesheet" type="text/css" />
<link href="/action/auction.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <div class="us_topinfo">
        您现在的位置：<a title="网站首页" href="/" target="_parent">
            <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;
        <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>
       &gt;&gt; 保价购买</div>
    <div class="us_seta" style="margin-top: 5px;">
        <h1 id="tipss" runat="server" align="center">
            保价购买</h1>
    </div>
    <div style="width: 100%; border: 1px #CCC solid" id="nocont" runat="server">
        您还没有保价购买的商品!
    </div>
    <div id="conten" runat="server" align="center">
        <asp:Repeater ID="repf" runat="server" OnItemDataBound="repf_ItemDataBound" OnItemCommand="repf_ItemCommand">
            <ItemTemplate>
                <dl class="Auction_HOR">
                    <dt>
                        <div class="proImg">
                            <a href="DetailCom.aspx?cid=<%#Eval("ID") %>" title="<%#GetName(Eval("shopID","{0}"),"0") %>">
                                <img width="100" height="75" alt="<%#GetName(Eval("shopID","{0}"),"0") %>" src='<%#GetName(Eval("shopID","{0}"),"1") %>' /></a>
                        </div>
                    </dt>
                    <dd class="detail" style="text-align: left">
                        <h3>
                            <a href="/action/DetailCom.aspx?cid=<%#Eval("ID") %>" target="_blank" title="<%#GetName(Eval("shopID","{0}"),"0") %>">
                                <%#GetName(Eval("shopID","{0}"),"0") %></a></h3>
                        <span>保价：<font color="#369A28">&yen;<%#GetName(Eval("shopID","{0}"),"3") %></font>&nbsp;&nbsp;市价：<span
                            class="worth">&yen;<%#GetName(Eval("shopID","{0}"),"2") %></span></span>&nbsp;&nbsp;
                        成交价：<font color="#0093ED">&yen;<%#DataBinder.Eval(Container.DataItem, "InitPrice", "{0:F2}")%></font>
                        <div align="left">
                            有效期：<%#Eval("BegionTime")%>
                            -
                            <%#Eval("EndTime") %></div>
                    </dd>
                    <dd class="bidder">
                        <span id='bid_btn_<%#Eval("id") %>' class="button button-hilite"><span class="first-child">
                            <a class="userName" href="javascript:void(0)" id="bidder_<%#Eval("id") %>" style="width: 200px">
                                <%#GetComTips(Eval("ID", "{0}"), Eval("DepVal", "{0}"))%></a>
                            <asp:LinkButton ID="subm" runat="server" CommandName="sub" CommandArgument='<%#Eval("ID") %>'>保价购买</asp:LinkButton>
                            <input type="button" onclick="" value="晒图反馈" runat="server" id="b" visible="false" />
                            <asp:HiddenField ID="hforderid" runat="server" Value='<%#Eval("OrderID") %>' />
                            <asp:HiddenField ID="hfstate" runat="server" Value='<%#Eval("comState") %>' />
                        </span></span>
                    </dd>
                </dl>
            </ItemTemplate>
        </asp:Repeater>
        <div align="center">
            共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条信息
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                Text="" />页 <span style="text-align: center">
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                        Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                </span>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            页</div>
    </div>
</body>
</html>
