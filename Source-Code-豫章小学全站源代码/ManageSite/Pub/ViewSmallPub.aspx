<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_ViewSmallPub, App_Web_vxpwslge" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script>
    function OpenLink(lefturl, righturl) {
        if (lefturl != "") {
            parent.frames["left"].location = lefturl;
        }
        parent.frames["main_right"].location = righturl;
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        当前位置：功能导航 >>
        <span>后台管理</span> &gt;&gt;&nbsp;<span><a href="ViewPub.aspx"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a></span>
        <asp:HiddenField ID="HdnModelID" runat="server" />
        <asp:HiddenField ID="HiddenType" runat="server" />
          <asp:HiddenField ID="HiddenPubid" runat="server" />
           <asp:HiddenField ID="HdnID" runat="server" />
           <asp:HiddenField ID="HiddenNode" runat="server" />
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
        <tr class="title">
            <td>
                <asp:LinkButton ID="LbtnAllPub" runat="server" OnClick="LbtnAllPub_Click">所有信息</asp:LinkButton>
                |
                <asp:LinkButton ID="LbtnUNAuditedPub" runat="server" OnClick="LbtnUNAuditedPub_Click">待审核信息</asp:LinkButton>
                |
                <asp:LinkButton ID="LbtnuditedPub" runat="server" OnClick="LbtnuditedPub_Click">已审核信息</asp:LinkButton>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" CssClass="border" AutoGenerateColumns="False" DataKeyNames="ID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%" ShowFooter="False">
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <HeaderStyle Width="5%" BorderColor="White" HorizontalAlign=Center />
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" BorderColor="White"  HorizontalAlign=Center/>
            </asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="ID">
                <HeaderStyle Width="5%" BorderColor="White"  HorizontalAlign=Center/>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  BorderColor="White" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="标题">
                <HeaderStyle Width="30%" BorderColor="White"  HorizontalAlign=Center/>
                <ItemTemplate>
                   <asp:LinkButton ID="LinkButton4" runat="server" CommandName="View" CommandArgument='<%# Eval("ID") %>'><%# Eval("PubTitle", "{0}")%></asp:LinkButton>
                   
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="left"  BorderColor="White" />
            </asp:TemplateField>
            <asp:BoundField DataField="PubIP" HeaderText="IP地址">
                <HeaderStyle Width="15%" BorderColor="White"  HorizontalAlign=Center/>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  BorderColor="White" />
            </asp:BoundField>
            <asp:BoundField DataField="Pubnum" HeaderText="参与人数">
                <HeaderStyle Width="10%" BorderColor="White"  HorizontalAlign=Center/>
                <ItemStyle CssClass="tdbg" BorderColor="White" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="发表日期">
                <HeaderStyle Width="10%" BorderColor="White"  HorizontalAlign=Center/>
                <ItemTemplate>
                    <%# Eval("PubAddTime", "{0:yyyy-mm-dd}")%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  BorderColor="White"/>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态">
                <HeaderStyle Width="10%" BorderColor="White"  HorizontalAlign=Center/>
                <ItemTemplate>
                    <%# shenhe(Eval("Pubstart", "{0}"))%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  BorderColor="White" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
            <HeaderStyle BorderColor="White"  HorizontalAlign=Center/>
                <ItemTemplate>
              
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>'>修改</asp:LinkButton>
                  
             &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('你确定将该数据彻底删除吗？')">删除</asp:LinkButton> 
                   
                   &nbsp; <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Audit" CommandArgument='<%# Eval("ID") %>'>审核</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" BorderColor="White"  />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NumericFirstLast" 
            NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
     <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
    <asp:Button ID="Button1" runat="server" Text="删除选定的信息" UseSubmitBehavior="False" OnClientClick="if(!confirm('确定要批量删除评论吗？')){return false;}" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="审核通过选定的信息" UseSubmitBehavior="False" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="取消审核选定的信息" UseSubmitBehavior="False" OnClick="Button3_Click" />
    </form>
</body>
</html>

