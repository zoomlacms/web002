<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.Print_Type, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<title><%=lang.Get("M_PrintType_printout")%></title>

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
<div class="r_navigation">
	<span><%=lang.Get("M_SpecContent_manage")%></span> &gt;&gt; <span><%=lang.Get("M_SpecContent_content")%></span> &gt;&gt; <span><%=lang.Get("M_PrintType_printout")%></span> &gt;&gt;
	<span><%=lang.Get("M_PrintType_typeTemplate")%></span>&nbsp; 【<a href="addPrintType.aspx" style="color: Red"><%=lang.Get("M_PrintType_addTypeTemplate")%></a>】&nbsp;【<a
		href="PrintMaskList.aspx" style="color: Red"><%=lang.Get("M_PrintType_maskLibrary")%></a>】
</div>
    <div class="clearbox">
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="PID" AutoGenerateColumns="False"
            Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                    <HeaderTemplate>
                        <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <input name="Item" type="checkbox" value='<%# Eval("PID")%>' />
                    </ItemTemplate>
                    <HeaderStyle Width="30px"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:BoundField DataField="PID" HeaderText="编号" HeaderStyle-Width="50px" ItemStyle-HorizontalAlign="Center">
                    <HeaderStyle Width="50px"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="P_Name" HeaderText="模板名称" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="P_AddTime" HeaderText="添加时间" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="调用代码">
                    <ItemTemplate>
                        /User/PrintServer/PrintServer.aspx?PID=<%# Eval("PID")%><%#Eval("P_ShopID").ToString()=="0" ? "" : "&Item=" + Eval("P_ShopID")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" HeaderStyle-Width="100px" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <a href="AddPrintType.aspx?PID=<%#DataBinder.Eval(Container.DataItem,"PID") %>">修改</a>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="100px"></HeaderStyle>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>
            <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        </asp:GridView>
    </div>
    <asp:Button ID="Button3" class="C_input" Style="width: 100px;" runat="server" OnClick="Button3_Click"
        OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" />
    </form>
</body>
</html>