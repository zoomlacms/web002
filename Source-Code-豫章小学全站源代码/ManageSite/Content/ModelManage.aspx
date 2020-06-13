<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.ModelManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容模型管理</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script language="javascript" type="text/javascript">
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
    <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >> <a href="ModelManage.aspx?nid=115">内容模型管理</a> &nbsp;&nbsp; </div>
    <table width="100%" border="0" cellpadding="1" cellspacing="2" class="border" align="center">
        <tbody>
            <tr align="center" style="height: 25px; background-color:#F0F6FC" >
           <%-- <td>
           <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>--%>
                <%--<td width="5%" height="20" align="center">
                    <strong>ID</strong>
                </td>--%>
                <td width="5%" height="20" align="center">
                    <strong>ID</strong>
                </td>
                <td width="5%" align="center">
                    <strong>图标</strong>
                </td>
                <td width="20%" align="center">
                    <strong>模型名称</strong>
                </td>
                <td width="15%" align="center">
                    <strong>表名</strong>
                </td>
                <td width="10%" align="center">
                    <strong>项目名称</strong>
                </td>
                <td width="20%" align="center">
                    <strong>模型描述</strong>
                </td>
                <td width="25%" align="center">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" align="center" >
                    <%--<td>
                    <input name="Item" type="checkbox" value='<%# Eval("NodeID")%>' />
                    </td>--%>
                        <td>
                            <strong>
                                <%# Eval("ModelID") %></strong>
                        </td>
                        <td>
                            <img src="<%# GetIcon(DataBinder.Eval(Container, "DataItem.ItemIcon", "{0}"))%>" style="border-width: 0px;" />
                        </td>
                        <td align="center">
                            <strong>
                                <%# Eval("ModelName")%></strong>
                        </td>
                        <td align="center">
                           <strong>
                                <%# Eval("TableName")%></strong> 
                        </td>
                        <td>
                            <strong>
                                <%# Eval("ItemName")%></strong>
                        </td>
                        <td align= "center" >
                            
                                <%# Eval("Description")%>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ModelID")%>'>复制</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ModelID") %>' OnClientClick="return confirm('确实要删除此模型吗？');">删除</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Field" CommandArgument='<%# Eval("ModelID") %>'>字段列表</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
              <tr class="tdbg">
            <td height="22" colspan="7" align="center" class="tdbgleft">
               <span style="text-align: center">
                   共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />页次：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
                        class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
            </td>
        </tr>
        </tbody>
    </table>
    </div>
    </form>
</body>
</html>
