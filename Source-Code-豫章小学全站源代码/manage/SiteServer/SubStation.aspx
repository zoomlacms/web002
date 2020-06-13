<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_SubStation, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title></title>

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
        
        <span>后台管理</span> &gt;&gt; <span>站群管理 </span> &gt;&gt; <span>子站管理 </span>&gt;&gt; <span>远程控制</span> 
    </div>
    <div class="clearbox">
    </div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr>
                <td align="center" class="spacingtitle">
                    <b>远程控制</b>
                </td>
            </tr>
                  <tr class="tdbg" runat="server" id="PubNames">
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="100%" DataKeyNames="S_ID" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="S_ID" HeaderText="ID" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="SiteName" HeaderText="子站名称" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Pname" HeaderText="站长名称" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="tel" HeaderText="联系电话" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="子站状态" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#GetState(DataBinder.Eval(Container.DataItem, "states").ToString() )%>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <a href='/API/SitePortApi.aspx?Method=Putinfo&InfoClass=9&SID=<%#DataBinder.Eval(Container.DataItem, "S_ID")%>'>远程控制</a>
                            </ItemTemplate>
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