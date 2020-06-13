<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectExam, App_Web_pq3hbfoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>项目审核</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>项目管理</span>&gt;&gt;<span><a href="ProjectManage.aspx"> 项目列表</a></span>&gt;&gt;<span> 项目审核</span>	</div> 
                                    <div class="clearbox"></div>  
                                      <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="border"
       DataKeyNames="ProjectID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" OnRowCommand="GridView1_RowCommand" EmptyDataText="无任何相关数据">
        <Columns>
            <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkSel" runat="server" />
                  </ItemTemplate>
                  <HeaderStyle Width="4%" />
                  <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="项目名称" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>  
                    <%#DataBinder.Eval(Container.DataItem, "ProjectName").ToString()%>      
                </ItemTemplate>
                <HeaderStyle Width="15%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="项目简介" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>  
                    <%#DataBinder.Eval(Container.DataItem, "ProjectIntro").ToString()%>      
                </ItemTemplate>
                <HeaderStyle Width="25%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="已审核" ItemStyle-HorizontalAlign="Center">
                <HeaderStyle Width="8%" />
                <ItemTemplate>  
                 <%# (bool)Eval("Passed") ==false ? "<span style=\"color: #ff0033\">×</span>" : "√"%>                
                         
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
           </asp:TemplateField>
             <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate> 
                <a href="ProjectExam.aspx?Action=<%# (bool)Eval("Passed") == false ? "Passed" : "CancelPassed"%>&PId=<%#Eval("ProjectID")%>">
                                    <%# (bool)Eval("Passed") == false ? "通过审核" : "取消审核"%>
                                    </a>                                         
                    <asp:LinkButton ID="LnkDelete"  runat="server" CommandName="DelProject" OnClientClick="return confirm('确实要删除吗？');"
                        CommandArgument='<%# Eval("ProjectID")%>'>删除</asp:LinkButton>
                         </ItemTemplate>
                  <ItemStyle CssClass="tdbg" HorizontalAlign="Center" Width="15%"/>
            </asp:TemplateField>   
            　</Columns>
         <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <div class="clearbox"></div>   
      <asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged"
        Text="全选" />      
    
    <asp:Button ID="btnPassed" runat="server" Text="批量通过审核" OnClick="btnPassed_Click" class="C_input"/>
</form>
</body>
</html>
