<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_StoreManage, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head2" runat="server">
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
    <form id="form2" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 商家店铺管理
    </div>
    <%--<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">

      <tbody id="Tabs" >

        <tr class="tdbg">
          <td width="34%" height="24" class="title">选择类型查询：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
            <asp:ListItem value="2">店铺名称</asp:ListItem>
            <asp:ListItem value="3">申请人</asp:ListItem>
          </asp:DropDownList>
              关键字:
              <asp:TextBox ID="keytxt" runat="server"></asp:TextBox>
              <asp:Button ID="Searchbtn" runat="server" Text="搜  索" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="keytxt"
                  ErrorMessage="请输入关键字"></asp:RequiredFieldValidator></td>
        </tr>
      </tbody>
    </table>
    --%>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabss">
            <tr class="tdbg">
                <td width="3%" height="24" align="center" class="title">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="5%" align="center" class="title">
                    <span class="tdbgleft">ID</span>
                </td>
                <td width="12%" align="center" class="title">
                    <span class="tdbgleft">申请人用户名</span>
                </td>
                <td width="20%" align="center" class="title">
                    <span class="tdbgleft">店铺名称</span>
                </td>
                <td width="20%" align="center" class="title">
                    <span class="tdbgleft">申请时间</span>
                </td>
                <td width="7%" align="center" class="title">
                    <span class="tdbgleft">店铺状态</span>
                </td>
                <td width="8%" align="center" class="title">
                    <span class="tdbgleft">操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Productlist" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="center">
                            <input name="Item" type="checkbox" value='<%# Eval("GeneralID")%>' />
                        </td>
                        <td height="24" align="center">
                            <%#DataBinder.Eval(Container.DataItem, "GeneralID")%>
                        </td>
                        <td height="24" align="center">
                            <%#GetUsername(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>
                        </td>
                        <td height="24" align="center">
                            <a href="../../Store/Storeindex.aspx?id=<%# Eval("GeneralID")%>" target="_blank"
                                title="点击进入店铺">
                                <%#GetStorename(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%></a>
                        </td>
                        <td height="24" align="center">
                            <%#GetAddtime(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>
                        </td>
                        <td height="24" align="center">
                            <%#GetState(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>
                        </td>
                        <td height="24" align="center">
                            <a href="StroeUpdate.aspx?username=<%#GetUsername(DataBinder.Eval(Container.DataItem, "GeneralID").ToString())%>">
                                修改</a>&nbsp;<a href="StoreEdit.aspx?id=<%#Eval("GeneralID")%>">查看</a>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName='<%#Eval("GeneralID")%>'
                                OnClick="Button2_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="7" align="center" class="tdbgleft">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1" runat="server"
                            AutoPostBack="True">
                        </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td style="height: 21px">
                &nbsp;<asp:Button ID="Button1" class="C_input" Style="width: 110px;" runat="server"
                    Text="设为推荐" CommandName="1" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="C_input" Style="width: 110px;" runat="server" Text="关闭店铺"
                    CommandName="2" OnClick="Button1_Click" />
                <asp:Button ID="Button6" class="C_input" Style="width: 110px;" runat="server" Text="取消推荐"
                    CommandName="3" OnClick="Button1_Click" />
                <asp:Button ID="Button5" class="C_input" Style="width: 110px;" runat="server" Text="取消关闭"
                    CommandName="4" OnClick="Button1_Click" />
                <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" Text="批量删除"
                    CommandName="5" OnClick="Button1_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
