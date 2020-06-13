<%@ page language="C#" autoeventwireup="true" inherits="User.UserManage, App_Web_wj135slx" title="会员管理" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle"> 当前位置：功能导航 >>  查找会员</div>
        <table cellpadding="2" cellspacing="1" style="background-color: white;" width="100%">
            <tr>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="1" Selected="True">按会员组查找</asp:ListItem>
                        <asp:ListItem Value="2">按登陆日期查找</asp:ListItem>
                    </asp:DropDownList>
                    <strong id="strtime" runat="server" visible="false">
                        <asp:TextBox ID="txtSteatTime" runat="server" Width="102px" onclick="calendar()"></asp:TextBox>
                        到
                        <asp:TextBox ID="txtEndTime" runat="server" Width="102px" onclick="calendar()"></asp:TextBox></strong>
                    <strong id="strgroup" runat="server" visible="true">
                        <asp:DropDownList ID="ddlGroup" runat="server" DataTextField="GroupName" DataValueField="GroupID">
                        </asp:DropDownList>
                    </strong>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="查 找" OnClick="Button1_Click1" />
                </td>
            </tr>
        </table>
    </div>
    <div class="column">
        <div class="columntitle">
        <a href="UserManage.aspx">
            <asp:Label ID="Label2" runat="server" Text="会员管理"></asp:Label>
            </a></div>
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td>
                    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        DataKeyNames="UserID" PageSize="20" OnRowCommand="Lnk_Click" OnPageIndexChanging="Egv_PageIndexChanging"
                        Width="100%" AllowSorting="true" OnSorting="Egv_Sorting">
                        <Columns>
                            <asp:TemplateField HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSel" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle Width="3%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="UserID"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  HeaderText="ID" SortExpression="UserID"  >
                                <HeaderStyle   ForeColor="Black" Font-Bold="true" ></HeaderStyle>
                                <ItemStyle  HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="会员名" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                <ItemTemplate>
                                    <a href="Userinfo.aspx?id=<%# Eval("UserID") %>">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label></a>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="会员组" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                <ItemTemplate >
                                    <%# GetGroupName(Eval("GroupID","{0}")) %>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                                <ItemStyle  HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Purse" HeaderText="资金余额"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  DataFormatString="{0:c}">
                                <HeaderStyle Width="10%" />
                                <ItemStyle  HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RegTime" HeaderText="注册时间"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  SortExpression="RegTime">
                                <HeaderStyle  ForeColor="Black" Font-Bold="true"  Width="13%" />
                                <ItemStyle  HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UserExp" HeaderText="积分" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                <HeaderStyle Width="5%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LoginTimes" HeaderText="登录次数"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  SortExpression="LoginTimes">
                                <HeaderStyle Width="6%"   ForeColor="Black" Font-Bold="true"  />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LastLockTime" HeaderText="最后登录时间"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  SortExpression="LastLockTime">
                                <HeaderStyle Width="13%"   ForeColor="Black" Font-Bold="true"  />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="状态" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                <ItemTemplate>
                                    <%# GetStatus(Eval("Status","{0}")) %>
                                </ItemTemplate>
                                <HeaderStyle Width="5%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="操作" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                <ItemTemplate>
                                    <asp:LinkButton ID="LnkDelete" runat="server" CommandName="DeleteUser" OnClientClick="if(!this.disabled) return confirm('确实要删除此会员吗？');"
                                        CommandArgument='<%# Eval("UserID")%>'>删除</asp:LinkButton>
                                    | <a href='UserModify.aspx?UserID=<%# Eval("UserID")%>'>修改</a> | <a href='UserExp.aspx?UserID=<%# Eval("UserID")%>'>
                                        积分</a> | <a href='UserPurse.aspx?UserID=<%# Eval("UserID")%>'>资金</a> | <a href='UserSitePermission.aspx?uid=<%# Eval("UserID")%>'>
                                            权限</a>
                                </ItemTemplate>
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
                            Height="30px" Font-Overline="False" />
                        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PreviousPageText="上一页" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="left">
                    <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged"
                        Text="全选" />
                    <asp:Button ID="btnCan" runat="server" CssClass="button"  Text="批量认证" OnClick="Button1_Click" />
                    <asp:Button ID="btnLock" runat="server" CssClass="button"  Text="批量锁定" OnClick="btnLock_Click" />
                    <asp:Button ID="btnDel" runat="server"  CssClass="button" Text="批量删除" OnClick="btnDel_Click" />
                    <asp:Button ID="btnNormal" runat="server"  CssClass="button" Text="批量解锁" OnClick="btnNormal_Click" />
                    <asp:DropDownList ID="UserGroup" runat="server">
                        <asp:ListItem Selected="True" Value="1">普通会员</asp:ListItem>
                        <asp:ListItem Value="2">企业会员</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="GroupMove" runat="server"  CssClass="button" Text="批量移动" OnClick="GroupMove_Click" />
                    <asp:HiddenField ID="HdnGroupID" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
