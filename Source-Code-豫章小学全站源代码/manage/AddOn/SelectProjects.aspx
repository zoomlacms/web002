<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_SelectProjects, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title></title>
     <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
     <script>
            function onstr() {
                parent.Dialog.close();
            }

            function setvalue(objname, valuetxt) {
                parent.document.getElementById(objname).value = valuetxt;
                //mainright.frames[parent.nowWindow].document.getElementById(objname).value = valuetxt;
            }
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CssClass="border" DataKeyNames="AdminID" OnPageIndexChanging="Egv_PageIndexChanging" 
            OnRowCommand="Lnk_Click" OnRowDataBound="Egv_RowDataBound" Width="100%">
        <Columns>
        　　<asp:BoundField DataField="AdminId" HeaderText="ID">
                <HeaderStyle Width="5%" />
                <ItemStyle  HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="管理员名"　DataField="AdminName" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" />
                <ItemStyle  HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="前台用户名" DataField="UserName" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="10%" />
                <ItemStyle  HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField HeaderText="管理员真实姓名" DataField="AdminTrueName" 
                ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="15%" />
                <ItemStyle  HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" >
                <ItemTemplate>
                    <asp:LinkButton ID="LnkSelect" CommandName="SelectAdmin" CommandArgument='<%# Eval("AdminId")%>'
                        runat="server">选择</asp:LinkButton>
                    <%--<asp:LinkButton ID="LnkCancel" CommandName="CancelAdmin" CommandArgument='<%# Eval("AdminId")%>'
                        runat="server" OnClick="LnkCancel_Click">取消</asp:LinkButton>    --%> 
                  </ItemTemplate>
                  <HeaderStyle Width="10%" />
                  <ItemStyle   HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
         <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    
    </div>
    </form>
</body>
</html>
