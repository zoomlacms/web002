<%@ page language="C#" autoeventwireup="true" inherits="ZoomLaManage.WebSite.Manage.User.AdminManage, App_Web_wj135slx" title="管理员管理" tracemode="SortByCategory" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理员管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> <a href="AdminManage.aspx">管理员管理</a></div>
       <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td>
                    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        DataKeyNames="AdminID" PageSize="10" OnRowEditing="Egv_RowEditing" OnPageIndexChanging="Egv_PageIndexChanging"
                        OnRowCommand="Lnk_Click" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="选择" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkSel" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle Width="5%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="AdminId" HeaderText="ID" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <HeaderStyle Width="5%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="管理员状态" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <ItemTemplate>
                                    <%# ZoomLa.Common.DataConverter.CBool(DataBinder.Eval(Container, "DataItem.IsLock", "{0}")) ? "<span stytle='color:red;'>锁定</span>" : "正常"%>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="管理员名" DataField="AdminName" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <HeaderStyle Width="10%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="前台用户名" DataField="UserName" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <HeaderStyle Width="10%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="多人登录" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <ItemTemplate>
                                    <%# ZoomLa.Common.DataConverter.CBool(DataBinder.Eval(Container, "DataItem.EnableMultiLogin", "{0}")) ? "<span stytle='color:red;'>允许</span>" : "不允许"%>
                                </ItemTemplate>
                                <HeaderStyle Width="7%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="管理员类型" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <ItemTemplate>
                                    <%#GetState(Eval("AdminType").ToString()) %>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="最后登录IP" DataField="LastLoginIP" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <HeaderStyle Width="14%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="上次修改密码时间" DataField="LastModifyPwdTime" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <HeaderStyle Width="12%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="登录次数" DataField="LoginTimes" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <HeaderStyle Width="7%" />
                                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LnkModify" CommandName="ModifyAdmin" CommandArgument='<%# Eval("AdminId")%>'
                                        runat="server">修改</asp:LinkButton>
                                    <asp:LinkButton ID="LnkDelete" runat="server" CommandName="DeleteAdmin" OnClientClick="if(!this.disabled) return confirm('确实要删除此管理员吗？');"
                                        CommandArgument='<%# Eval("AdminId")%>'>删除</asp:LinkButton>
                                    <%--<asp:LinkButton ID="LnkCancel" CommandName="CancelAdmin" CommandArgument='<%# Eval("AdminId")%>'
                        runat="server" OnClick="LnkCancel_Click">取消</asp:LinkButton>    --%>
                                </ItemTemplate>
                                <HeaderStyle Width="10%" />
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
                <td align="left">&nbsp&nbsp&nbsp&nbsp
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
                        Text="全选" />
                    <asp:Button ID="Button1" CssClass="button"  runat="server" Font-Size="9pt" Text="取消" OnClick="Button1_Click" />
                    <asp:Button ID="Button2"  CssClass="button"  runat="server" Font-Size="9pt" Text="批量删除" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
