<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ProductManage, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>商品列表</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script language="javascript">
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

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 店铺商品管理 &gt;&gt; <span>商品列表</span>
    </div>
    <div class="clearbox">
    </div>
    <div class="divline">
        <ul style="cursor: hand;">
            <li><a href="ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&type=0">商品列表</a></li>
            <li><a href="ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&type=1">推荐商品</a></li>
            <li><a href="ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&type=2">团购商品</a></li>
            <li><a href="ProductManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&type=3">竞拍商品</a></li>
        </ul>
    </div>
    <div class="clearbox">
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabs">
            <tr class="tdbg">
                <td width="34%" height="24" align="center" class="title">
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
                    </asp:DropDownList>
                </td>
                <td width="66%" align="center" class="title">
                    高级查询：
                    <asp:DropDownList ID="souchtable" runat="server">
                        <asp:ListItem Value="0" Selected="True">请选择</asp:ListItem>
                        <asp:ListItem Value="1">商品名称</asp:ListItem>
                        <asp:ListItem Value="2">商品简介</asp:ListItem>
                        <asp:ListItem Value="3">商品介绍</asp:ListItem>
                        <asp:ListItem Value="4">厂商</asp:ListItem>
                        <asp:ListItem Value="5">品牌/商标</asp:ListItem>
                        <asp:ListItem Value="6">条形码</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="souchkey" runat="server" class="l_input" />
                    <asp:Button ID="souchok" class="C_input" runat="server" Text=" 搜索 " OnClick="souchok_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabss">
            <tr class="tdbg">
                <td width="3%" height="24" align="center" class="title">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="5%" align="center" class="title">
                    <span class="tdbgleft">ID</span>
                </td>
                <td width="7%" align="center" class="title">
                    <span class="tdbgleft">商品图片</span>
                </td>
                <td width="20%" align="center" class="title">
                    <span class="tdbgleft">商品名称</span>
                </td>
                <td width="7%" align="center" class="title">
                    <span class="tdbgleft">发布商品人</span>
                </td>
                <td width="7%" align="center" class="title">
                    <span class="tdbgleft">价格</span>
                </td>
                <td width="6%" align="center" class="title">
                    <span class="tdbgleft">购买方式</span>
                </td>
                <td width="6%" align="center" class="title">
                    <span class="tdbgleft">推荐级别</span>
                </td>
                <td width="8%" align="center" class="title">
                    <span class="tdbgleft">结束时间</span>
                </td>
                <td width="6%" align="center" class="title">
                    <span class="tdbgleft">人数</span>
                </td>
                <td width="6%" align="center" class="title">
                    <span class="tdbgleft">商品属性</span>
                </td>
                <td width="4%" align="center" class="title">
                    <span class="tdbgleft">销售中</span>
                </td>
                <td width="8%" align="center" class="title">
                    <span class="tdbgleft">操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Productlist" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="center">
                            <input name="Item" type="checkbox" value='<%# Eval("id")%>' />
                        </td>
                        <td height="24" align="center">
                            <%# Eval("id")%>
                        </td>
                        <td height="24" align="center">
                            <%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#DataBinder.Eval(Container.DataItem,"ProName")%>
                        </td>
                        <td height="24" align="center">
                            <%#GetUsername(DataBinder.Eval(Container.DataItem,"UserID").ToString())%>
                        </td>
                        <td height="24" align="center">
                            <%#formatcs(DataBinder.Eval(Container,"DataItem.LinPrice","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#formatnewstype(DataBinder.Eval(Container,"DataItem.Colonel").ToString ())%>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("Dengji")%>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("ColonelTime")%>
                        </td>
                        <td height="24" align="center">
                            <%#DataBinder.Eval(Container,"DataItem.ColonelNowNum")%>\<%#DataBinder.Eval(Container,"DataItem.ColonelNum")%>
                        </td>
                        <td height="24" align="center">
                            <%#forisbest(DataBinder.Eval(Container,"DataItem.isbest","{0}"))%>
                            <%#forishot(DataBinder.Eval(Container,"DataItem.ishot","{0}"))%>
                            <%#forisnew(DataBinder.Eval(Container,"DataItem.isnew","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#formattype(DataBinder.Eval(Container,"DataItem.Sales","{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%--<a href="AddProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">修改</a>--%>
                            <a href="ProductManage.aspx?menu=delete&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"
                                onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="13" align="center" class="tdbgleft">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    个商品
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />个商品/页 转到第<asp:DropDownList ID="DropDownList1" runat="server"
                            AutoPostBack="True">
                        </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td style="height: 21px">
                &nbsp;<asp:Button ID="Button1" class="C_input" Style="width: 110px;" runat="server"
                    Text="开始销售" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="C_input" Style="width: 110px;" runat="server" Text="设为热卖"
                    OnClick="Button2_Click" />
                <asp:Button ID="Button6" class="C_input" Style="width: 110px;" runat="server" Text="设为精品"
                    OnClick="Button6_Click" />
                <asp:Button ID="Button5" class="C_input" Style="width: 110px;" runat="server" Text="设为新品"
                    OnClick="Button5_Click" />
                <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" Text="批量删除"
                    OnClick="Button3_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" />
                <asp:Button ID="Button4" class="C_input" Style="width: 110px;" runat="server" Text="停止销售"
                    OnClick="Button4_Click" />
                <br />
                &nbsp;<asp:Button ID="Button7" class="C_input" Style="width: 110px;" runat="server"
                    Text="取消热卖" OnClick="Button7_Click" />
                <asp:Button ID="Button8" class="C_input" Style="width: 110px;" runat="server" Text="取消精品"
                    OnClick="Button8_Click" />
                <asp:Button ID="Button9" class="C_input" Style="width: 110px;" runat="server" Text="取消新品"
                    OnClick="Button9_Click" />
                <asp:Button ID="Button10" class="C_input" Style="width: 110px;" runat="server" Text="批量移动"
                    OnClick="btnMove_Click" UseSubmitBehavior="true" />
                <asp:Button ID="Button11" class="C_input" Style="width: 110px;" runat="server" Text="批量审核"
                    UseSubmitBehavior="true" OnClick="Button11_Click" />
                <asp:Button ID="Button12" class="C_input" Style="width: 110px;" runat="server" Text="取消审核"
                    UseSubmitBehavior="true" OnClick="Button12_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <strong>商品属性中的各项含义：</strong><br />
                <font color="blue">精</font>----推荐精品，<font color="red">热</font>----热门商品，<font color="green">新</font>----推荐新品，<font
                    color="blue">图</font>----有商品缩略图，<font color="maroon">绑</font>----捆绑商品销售
                <br />
            </td>
        </tr>
        <%--      <tr>
        <td style="height: 21px">&nbsp;
            <asp:Button ID="Button3" runat="server" Text="批量删除" OnClick="Button3_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" /></td>
      </tr>--%>
    </table>
    </form>
</body>
</html>
