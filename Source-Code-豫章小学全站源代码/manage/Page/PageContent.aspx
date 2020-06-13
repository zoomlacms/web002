<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Page.PageContent, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>内容管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>  
<style>
.tdbg{text-align:center}
#Egv td{ border:1px solid #fff; width:auto; text-align:center; background:#e8f5ff}
</style>  
</head>
<body>
<form id="form1" runat="server">    
<div class="r_navigation">
	
	<span> 后台管理 </span>&gt;&gt; 企业黄页 &gt;&gt; 黄页内容管理  &gt;&gt; 
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
<div class="clearbox"></div>
<div class="divline">	    
	<ul style="cursor:hand;">
        <li><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>">内容列表</a></li>
        <li><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=Audit">已审核内容</a></li>
        <li><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=UnAudit">未审核内容</a></li>
        <li><a href="PageContent.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&flag=Elite">推荐内容</a></li>
    </ul>
</div>

<div class="clearbox"></div>

<div class="divline">	    
	<ul style="cursor:hand;">
        <li>关键字搜索：<asp:TextBox ID="keyword" runat="server" class="l_input"></asp:TextBox> <asp:Button ID="Button3" class="C_input"
            runat="server" Text="搜索" /></li>
    </ul>
</div>
<div class="clearbox"></div>
<div class="user_t">
<asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
   DataKeyNames="GeneralID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%">
    <Columns>
    　　<asp:TemplateField HeaderText="选择">
              <ItemTemplate>
               <asp:CheckBox ID="chkSel" runat="server" />  
              
              </ItemTemplate>
              <HeaderStyle Width="5%" />
          <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:BoundField HeaderText="ID"　DataField="GeneralID" >
            <HeaderStyle Width="5%" />
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:BoundField>            
        <asp:TemplateField HeaderText="标题">
            <ItemTemplate>  
                <%# GetTitle(Eval("GeneralID", "{0}"), Eval("ModelID", "{0}"), Eval("Title", "{0}"))%>    
            </ItemTemplate>
            <HeaderStyle Width="40%" />
            <ItemStyle CssClass="tdbg" />
        </asp:TemplateField>            
        <asp:BoundField HeaderText="点击数"　DataField="Hits" >
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="10%" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="状态">
            <ItemTemplate>  
               <%# GetStatus(Eval("Status", "{0}")) %>       
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="已生成">
            <ItemTemplate>  
                <%# GetCteate(Eval("IsCreate", "{0}"))%>    
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>            
        <asp:TemplateField HeaderText="操作" >
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GeneralID") %>'>修改</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GeneralID") %>' OnClientClick="return confirm('你确定将该数据删除到回收站吗？')">删除</asp:LinkButton>
              </ItemTemplate>
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
    </Columns>
     <RowStyle ForeColor="Black" BackColor="#fff" Height="25px" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
     <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
     <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
</asp:GridView></div>
<asp:CheckBox ID="CheckBox2"  runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
<asp:Button ID="Button1" class="C_input" runat="server" Text="审核通过"  OnClick="btnAudit_Click" OnClientClick="if(!IsSelectedId()){alert('请选择审核项');return false;}else{return confirm('你确定要审核选中内容吗？')}"/>&nbsp;               
<asp:Button ID="Button2" class="C_input" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
    OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}"  UseSubmitBehavior="true" />&nbsp;
   &nbsp; &nbsp;
</form>
</body>
</html>
