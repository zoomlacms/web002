<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.ProductManage, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>商品列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
    }
</script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript">
    function openurls(url) {
        Dialog.open({ URL: url });
    }

    function open_title(ModelID, NodeID) {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = "添加" + "[ESC键退出当前操作]";
        diag.URL = "AddProduct.aspx?ModelID=" + ModelID + "&NodeID=" + NodeID;
        diag.show();
    }

    function opentitle(url, title) {
        var diag = new Dialog();
        diag.Width = 800;
        diag.Height = 600;
        diag.Title = title;
        diag.URL = url;
        diag.show();
    }

    function closdlg() {
        Dialog.close();
    }

    function getinfo(id, NodeID, ModelID) {
        location.href = "AddProduct.aspx?menu=edit&ModelID=" + ModelID + "&NodeID=" + NodeID + "&id=" + id + "";
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span style="float: right; background: url(../../../Images/ModelIcon/edit.gif) no-repeat left; padding-left: 20px;">
            <a onclick='opentitle("/manage/content/EditNode.aspx?NodeID=<%=this.NodeID %>","配置本节点[ESC键退出当前操作]")' href="javascript:void(0)" title="配置本节点">配置本节点</a></span> <span>后台管理</span>
        &gt;&gt; <span><a href="ProductManage.aspx">商城管理</a></span> &gt;&gt;
        <asp:Label ID="Label1" runat="server"></asp:Label></div>
    <div class="divline">
        <ul style="cursor: hand;">
            <li>&nbsp;&nbsp;</li>
            <li><a href="ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&quicksouch=1">商品列表</a></li>
            <li><a href="ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&flag=Elite">推荐商品</a></li>
            <li><a href="ProductManage.aspx?quicksouch=14">捆绑销售商品</a></li>
            <li><a href="ProductManage.aspx?quicksouch=15">所有礼品</a></li>
            <li><a href="ProductManage.aspx?quicksouch=16">已审核商品</a></li>
            <li><a href="ProductManage.aspx?quicksouch=17">待审核商品</a></li>
            <li><a href="ProGroupManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&groupby=1">团购管理</a></li>
            <li><a href="PromotionBalance.aspx">推广管理</a></li>
        </ul>
    </div>
    <div class="clearbox"></div>
    <div class="divline" style="padding-left: 10px; height: 32px;">
        <div style="float: left; width: 30%; height: 32px;">
            <b>请选择排列顺序：</b>
            <asp:DropDownList ID="txtbyfilde" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="txtbyOrder" runat="server"></asp:DropDownList>
        </div>
        <div style="height: 32px; width: 65%; float: left;">
            快速查找：
            <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1">所有商品</asp:ListItem>
                <asp:ListItem Value="2">正在销售的商品</asp:ListItem>
                <asp:ListItem Value="3">未销售的商品</asp:ListItem>
                <asp:ListItem Value="4">正常销售的商品</asp:ListItem>
                <asp:ListItem Value="5">特价处理的商品</asp:ListItem>
                <asp:ListItem Value="6">所有热销的商品</asp:ListItem>
                <asp:ListItem Value="7">所有新品</asp:ListItem>
                <asp:ListItem Value="8">所有精品商品</asp:ListItem>
                <asp:ListItem Value="9">有促销活动的商品</asp:ListItem>
                <asp:ListItem Value="10">实际库存报警的商品</asp:ListItem>
                <asp:ListItem Value="11">预定库存报警的商品</asp:ListItem>
                <asp:ListItem Value="12">已售完的商品</asp:ListItem>
                <asp:ListItem Value="13">所有批发商品</asp:ListItem>
                <asp:ListItem Value="14">所有捆绑销售商品</asp:ListItem>
                <asp:ListItem Value="15">所有礼品</asp:ListItem>
                <asp:ListItem Value="16">已审核商品</asp:ListItem>
                <asp:ListItem Value="17">待审核商品</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabs">
            <tr class="tdbg">
                <td width="34%" height="24" class="tdbgleft" style="padding-left: 10px;">
                    <b>商品操作：</b><asp:Label ID="lblAddContent" runat="server" Text=""></asp:Label>
                </td>
                <td width="66%" align="center" class="tdbgleft">
                    <asp:DropDownList ID="souchtable" runat="server">
                        <asp:ListItem Value="0">请选择</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">商品名称</asp:ListItem>
                        <asp:ListItem Value="2">商品简介</asp:ListItem>
                        <asp:ListItem Value="3">商品介绍</asp:ListItem>
                        <asp:ListItem Value="4">厂商</asp:ListItem>
                        <asp:ListItem Value="5">品牌/商标</asp:ListItem>
                        <asp:ListItem Value="6">条形码</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="souchkey" runat="server" CssClass="l_input" />
                    <asp:Button ID="souchok" runat="server" Text=" 搜索 " CssClass="C_input" OnClick="souchok_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <% if (Request.QueryString["isDivImp"] != null && Request.QueryString["isDivImp"] == "1")
       { %>
    <div id="divImp" class="divline" style="padding-left: 10px; display: block">
        导入商城地址：<asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="287px" />
        <asp:Button ID="btImport" runat="server" Text="导 入" OnClick="btImport_Click" />
        <asp:LinkButton ID="lbtnSaveTempter" runat="server" OnClick="lbtnSaveTempter_Click" CausesValidation="true">
            <font style="color:#0E529D;">下载[<%=getNodeName()%>]的<%=this.bmode.GetModelById(ZoomLa.Common.DataConverter.CLng(int.Parse(this.Request.QueryString["ModelID"]))).ItemName %>模型CSV导入模板</font></asp:LinkButton>
            (下载后用EXCEL打开从第二行开始按规范填写并保存即可)
    </div>
    <%} %>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabss">
            <tr class="title">
                <td width="3%" height="28" align="center">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="3%" align="center">
                    <span>ID</span>
                </td>
                <td width="12%" align="center">
                    <span>商品图片</span>
                </td>
                <td width="17%" align="center">
                    <span>商品名称</span>
                </td>
                <td width="5%" align="center">
                    <span>单位</span>
                </td>
                <td width="5%" align="center">
                    <span>库存</span>
                </td>
                <td width="6%" align="center">
                    <span>价格</span>
                </td>
                <td width="6%" align="center">
                    <span>类型</span>
                </td>
                <td width="5%" align="center">
                    <span>推荐</span>
                </td>
                <td width="6%" align="center">
                    <span>商品属性</span>
                </td>
                <td width="6%" align="center">
                    <span>销售中</span>
                </td>
                <td width="7%" align="center">
                    <span>排序</span>
                </td>
                <td width="12%" align="center">
                    <span>操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Productlist" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" id="<%#Eval("id")%>" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id,<%#Eval("Nodeid") %>,<%#Eval("ModelID") %>)">
                        <td height="24" align="center">
                            <input name="Item" type="checkbox" value='<%# Eval("id")%>' />
                        </td>
                        <td height="24" align="center">
                            <%# Eval("id")%>
                        </td>
                        <td height="24" align="center" title="单击查看详情">
                            <a href="ShowProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">
                                <%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%></a>
                        </td>
                        <td height="17" align="left" title="单击查看详情" style="cursor: pointer">
                            <a href="ShowProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"
                                ondblclick="javascript:localhost.href('ShowProduct.aspx?menu=edit&ModelID={0}&NodeID={1}&id={2}'),<%#Eval("ModelID") %>,<%#Eval("Nodeid") %>,<%#Eval("id")%>">
                                <%#(Eval("Priority", "{0}") == "1") && (Convert.ToInt32(Eval("Propeid","{0}")) > 0) ? "<font color=maroon>[绑]</font>  " : ""%><%#Eval("proname")%></a>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("ProUnit")%>
                        </td>
                        <td height="24" align="center">
                            <%#Stockshow(DataBinder.Eval(Container,"DataItem.id","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#formatcs(DataBinder.Eval(Container, "DataItem.LinPrice", "{0}"), Eval("ProClass", "{0}"), Eval("PointVal","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#formatnewstype(DataBinder.Eval(Container,"DataItem.ProClass","{0}"),Eval("id","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("Dengji")%>
                        </td>
                        <td height="24" align="center">
                            <%#forisbest(DataBinder.Eval(Container,"DataItem.isbest","{0}"))%>
                            <%#forishot(DataBinder.Eval(Container,"DataItem.ishot","{0}"))%>
                            <%#forisnew(DataBinder.Eval(Container,"DataItem.isnew","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#formattype(DataBinder.Eval(Container,"DataItem.Sales","{0}"))%>
                        </td>
                        <td align="center">
                            <%-- <a href="MtrlsMrktng.aspx?mmid=<%#Eval("id")%>"  onclick="return confirm('你确定将该商品推广吗？');">商品推广</a> --%>
                            <a href="ProductManage.aspx?menu=UpMove&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">上移</a>
                            <a href="ProductManage.aspx?menu=DownMove&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">下移</a>
                        </td>
                        <td height="24" align="center">
                            <%#GetStendCon(Eval("Nodeid", "{0}"), Eval("ModelID", "{0}"), Eval("id", "{0}"), Eval("isStand", "{0}"), Eval("UserShopID","{0}"))%>
                            <a href="AddProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">修改</a>
                            <a href="ProductManage.aspx?menu=delete&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"
                                <%#Eval("recycler").ToString()=="False"?" onclick=\"return confirm('不可恢复性删除数据,你确定将该数据删除吗？');\"":"style=\"color:#999999\" onclick=\"return false\"" %>>
                                    删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="13" align="center" class="tdbgleft">
                    <div style="text-align: center" class="tdbg">
                        <span style="text-align: center">共
                            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                            条数据
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />
                            页次：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:Label ID="pagess" runat="server" Text="" />
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                            条数据/页 转到第
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                        </span>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td style="height: 21px">
                &nbsp;<asp:Button ID="Button1" runat="server" Text="开始销售" OnClick="Button1_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button2" runat="server" Text="设为热卖" OnClick="Button2_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button6" runat="server" Text="设为精品" OnClick="Button6_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button5" runat="server" Text="设为新品" OnClick="Button5_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button3" runat="server" Style="width: 100px;" Text="批量删除" CssClass="C_input" OnClick="Button3_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？'); " />
                <asp:Button ID="Button4" runat="server" Text="停止销售" OnClick="Button4_Click" CssClass="C_input" Style="width: 100px;" />
                <br />
                &nbsp;<asp:Button ID="Button7" runat="server" Text="取消热卖" OnClick="Button7_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button8" runat="server" Text="取消精品" OnClick="Button8_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button9" runat="server" Text="取消新品" OnClick="Button9_Click" CssClass="C_input" Style="width: 100px;" />
                <asp:Button ID="Button10" runat="server" Text="批量移动" OnClick="btnMove_Click" Style="width: 100px;" UseSubmitBehavior="true" CssClass="C_input" />
                <asp:Button ID="Button11" runat="server" Text="批量审核" UseSubmitBehavior="true" OnClick="Button11_Click" class="C_input" Style="width: 100px;" />
                <asp:Button ID="Button12" runat="server" Text="取消审核" UseSubmitBehavior="true" OnClick="Button12_Click" class="C_input" Style="width: 100px;" />
                <%--<asp:Button ID="MtrlsMrktng" runat="server" class="C_input" Text="商品推广" onclick="MtrlsMrktng_Click"/>--%>
            </td>
        </tr>
        <tr>
            <td>
                <strong>商品属性中的各项含义：</strong><br />
                <font color="blue">精</font>----推荐精品， 
                <font color="red">热</font>----热门商品， 
                <font color="green">新</font>----推荐新品， 
                <font color="blue">图</font>----有商品缩略图， 
                <font color="maroon">绑</font>----捆绑商品销售
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
</body>
</html>