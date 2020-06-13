<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_WorkManage, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目工作内容列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&nbsp;&gt;&gt;CRM应用&nbsp;&gt;&gt;<a href="Projects.aspx">项目管理</a>&gt;&gt;<a href="WorkManage.aspx">流程管理</a>&nbsp;[<a ref="AddWork.aspx">添加流程</a>]
<asp:Label ID="Lbloper" runat="server" Text=""></asp:Label>
</div>
   <asp:Label ID="LblProject" runat="server" Text=""></asp:Label>
   <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CssClass="border" DataKeyNames="WorkID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging"
        Width="100%" OnRowCommand="GridView1_RowCommand" EmptyDataText="无任何相关数据" 
        onrowdatabound="Egv_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="4%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="WorkID" HeaderText="ID" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="流程名称" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <a href="AddWork.aspx?Wid=<%#Eval("WorkID")%>">
                        <%#DataBinder.Eval(Container.DataItem, "WorkName").ToString()%></a>
                </ItemTemplate>
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" Width="25%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="启用" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" />
                <ItemTemplate>
                    <%# (int)Eval("Status") == 0 ? "<span style=\"color: red\">×</span>" : "<font color=green>√</font>"%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:HiddenField ID="hfid" runat="server" Value='<%#Eval("WorkID") %>' />
                    <asp:LinkButton ID="LnkDelete" runat="server" CommandName="DelWork" OnClientClick="if(!this.disabled) return confirm('确实要删除吗？');"
                        CommandArgument='<%# Eval("WorkID")%>'>删除</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="EditWork" CommandArgument='<%# Eval("WorkID")%>'>修改</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="FinishWork" CommandArgument='<%# Eval("WorkID")%>'
                        OnClientClick="if(!this.disabled) return confirm('确实要执行此操作吗？');"><%# (int)Eval("Status") == 0 ? "启用":"停用"%></asp:LinkButton>
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
    <div class="clearbox">
    </div>
    <asp:Label ID="Lbl" runat="server" Text=""></asp:Label>
    <div class="clearbox">
    </div>
    <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged"
        Text="全选" />
    <asp:Button ID="btnDel" runat="server" Text="批量删除" OnClick="btnDel_Click" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
        class="C_input" />
    <asp:Label ID="LbComment" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Panel ID="Pl" runat="server" Width="100%" Visible="false">
        <div class="clearbox">
        </div>
        <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    <asp:Label ID="LblTitle" runat="server" Text="项目评论" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right" style="width: 105px">
                    <strong>项目评价:&nbsp;</strong>
                </td>
                <td class="tdbg" align="left">
                    <asp:TextBox ID="TBCommon" TextMode="MultiLine" Rows="8" Columns="50" runat="server"
                        class="l_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValrKeywordText" ControlToValidate="TBCommon" runat="server"
                        ErrorMessage="项目名称不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="right" style="width: 105px">
                    <strong>项目评分:&nbsp;</strong>
                </td>
                <td class="tdbg" align="left">
                    <asp:TextBox ID="TxtScore" runat="server" class="l_input" Height="75px" Width="316px"></asp:TextBox>
                    <font color="red">(注：输入0-100的数字)</font>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtScore"
                        Type="Integer" ErrorMessage="评分必须满足0～100" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbgbottom">
                <td colspan="2">
                    <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input" />
                    <input name="Cancel" type="button" class="C_input" id="Cancel" value="取消" runat="server"
                        onclick="javascript:history.go(-1)" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:LinkButton ID="LB" runat="server" Visible="false" OnClick="LB_Click">你尚未填写项目评价,马上填写?</asp:LinkButton>
    </form>
</body>
</html>
