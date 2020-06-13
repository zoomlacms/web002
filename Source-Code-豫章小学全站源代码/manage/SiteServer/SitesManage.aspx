<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_SitesManage, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>SiteServer</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script src="/JS/Common.js" type="text/javascript"></script>

<script src="/JS/RiQi.js" type="text/javascript"></script>

<script src="/JS/calendar.js" type="text/javascript"></script>

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
        
        <span>后台管理</span> &gt;&gt; <span>站群管理  </span>&gt;&gt; <span>子站管理</span> &gt;&gt;
        <span>子站列表</span> <a href="AddSiteinfo.aspx"><font color="red">[添加子站]</font></a></div>
    <div class="clearbox">
    </div>
    <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
        width="100%">
        <tr class="tdbg">
            <td align="center" class="title" height="24" width="100%">
                子站信息管理
            </td>
        </tr>
        <tr class="tdbg" runat="server" id="PubNames">
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="100%" DataKeyNames="S_ID" 
                    AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderStyle-Width="30px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <HeaderTemplate>
                                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <input name="Item" type="checkbox" value='<%# Eval("S_ID")%>' />
                            </ItemTemplate>
                            <HeaderStyle Width="30px"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:BoundField DataField="S_ID" HeaderText="ID"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="子站账号" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <a href='GetSite.aspx?ID=<%#DataBinder.Eval(Container.DataItem, "S_ID")%>'>
                                    <%# Eval("SiteNum")%></a>
                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SiteName" HeaderText="子站名称"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Pname" HeaderText="站长名称"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="tel" HeaderText="联系电话"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="子站状态" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <%#GetState(DataBinder.Eval(Container.DataItem, "states").ToString() )%>
                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="go" CommandArgument='<%# Eval("S_ID") %>'>采集</asp:LinkButton>
                                <a href='AddSiteinfo.aspx?SID=<%# Eval("S_ID")%>'>修改信息</a>
                                <a href='GetSite.aspx?ID=<%#DataBinder.Eval(Container.DataItem, "S_ID")%>'>查看</a>
                                <a href="SitesManage.aspx?menu=delsite&id=<%#Eval("S_ID") %>" OnClick="return confirm('你确定将该数据删除吗？不可恢复性删除数据！');" >删除</a>
                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr class="tdbg">
            <td class="tdbgleft" align="center">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
