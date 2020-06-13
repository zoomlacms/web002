<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_CastAboutContent_, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >> 
            <asp:Label ID="lblCount" runat="server" Text=""></asp:Label></div>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <b>栏目：</b>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlColumn" runat="server" AutoPostBack="True" DataValueField="NodeID"
                                    DataTextField="NodeName" OnSelectedIndexChanged="ddlColumn_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <b>内容状态：</b>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                    <asp:ListItem Value="0" Selected="True">全部</asp:ListItem>
                                    <asp:ListItem Value="3">已审核</asp:ListItem>
                                    <asp:ListItem Value="2">未审核</asp:ListItem>
                                    <asp:ListItem Value="1">投稿</asp:ListItem>
                                    <asp:ListItem Value="4">退稿</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
            <td>
            <table>
            <tr>
                <td>
                    <b>时间：</b>
                </td>
                <td>从
                    <asp:TextBox ID="txtStateTime" runat="server"  onclick="setday(this)"></asp:TextBox>
                    &nbsp;到
                    <asp:TextBox ID="txtEndTime" runat="server"  onclick="setday(this)"></asp:TextBox>
                    &nbsp;
                </td>
                <td>目标：
                    <asp:DropDownList ID="txtbyfilde" runat="server" >
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;关键字：<asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" CssClass="button" runat="server" Text="查 找" OnClick="Button4_Click"
                        Width="48px" />&nbsp;
                          <asp:HiddenField ID="HdnKey" runat="server" />
                </td>
            </tr>
            </table>
            </td>
            </tr>
        </table>
    </div>
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >><asp:Label ID="lblAboutConten" runat="server" Text=""></asp:Label></div>
        <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="GeneralID"
            HeaderStyle-BackColor="#F0F6FC" FooterStyle-BorderColor="White" PageSize="20"
            Width="100%" BorderStyle="None">
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSel" runat="server" />
                    </ItemTemplate>
                    <HeaderStyle Width="5%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField HeaderText="ID" DataField="GeneralID" ItemStyle-BackColor="White">
                    <HeaderStyle Width="5%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="标题" ItemStyle-BackColor="White" ItemStyle-HorizontalAlign="Left">
                    <ItemTemplate>
                        <%# GetPic(Eval("ModelID", "{0}"))%>
                        <%# GetTitle(Eval("GeneralID", "{0}"), Eval("NodeID", "{0}"), Eval("Title", "{0}"), Eval("ModelID", "{0}"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="35%" />
                    <ItemStyle CssClass="tdbg" />
                </asp:TemplateField>
                <asp:BoundField HeaderText="点击数" DataField="Hits" ItemStyle-BackColor="White">
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                    <HeaderStyle Width="8%" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="推荐" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetElite(Eval("EliteLevel", "{0}")) %>
                    </ItemTemplate>
                    <HeaderStyle Width="10%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="状态" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetStatus(Eval("Status", "{0}")) %>
                    </ItemTemplate>
                    <HeaderStyle Width="10%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已生成" ItemStyle-BackColor="White">
                    <ItemTemplate>
                        <%# GetCteate(Eval("IsCreate", "{0}"))%>
                    </ItemTemplate>
                    <HeaderStyle Width="6%" />
                    <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <PagerSettings Visible="False" />
            <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
            <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
                Height="30px" Font-Overline="False" BorderColor="White" />
        </asp:GridView>
        <br />
    共
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
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
            ontextchanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" 
            MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
 <br />
    </div>
    </form>
</body>
</html>
