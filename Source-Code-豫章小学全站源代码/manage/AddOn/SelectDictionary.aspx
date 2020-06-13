<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.SelectDictionary, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>选择数据字典</title>
     
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>选择数据字典列表</span>
</div>
<div class="clearbox"></div>
<table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td style="height: 21px">                   
            分类名：<asp:TextBox ID="txtCategoryName" runat="server" Width="200px" class="l_input"></asp:TextBox>
            &nbsp;                        
            <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" class="C_input"/>
            <asp:HiddenField ID="HdnNameKey" runat="server" />
            </td>
    </tr>                
</table>
<div class="clearbox"></div>
<asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="DicCateID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据">
    <Columns>                
        <asp:BoundField DataField="DicCateID" HeaderText="序号">
        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        <HeaderStyle Width="5%" />
        </asp:BoundField>                                               
        <asp:TemplateField HeaderText="分类名">
            <ItemTemplate>                                
               <%# Eval("CategoryName")%>
            </ItemTemplate>
             <ItemStyle  CssClass="tdbg" HorizontalAlign="Left" />
             <HeaderStyle Width="50%" />
        </asp:TemplateField>                                                      
        <asp:TemplateField HeaderText="操作">
        <HeaderStyle Width="19%" />
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" CommandArgument='<%# Eval("DicCateID") %>'>选择</asp:LinkButton>                    
        </ItemTemplate>
        <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
    </Columns>
     <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
     <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
     <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />                
</asp:GridView>
<asp:TextBox ID="TxtSelectDic" runat="server" TextMode="MultiLine" Rows="6" 
    Width="300px" class="l_input" Height="85px"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="确定" OnClientClick="add();" class="C_input"/>
<asp:HiddenField ID="HdnContrID" runat="server" />
<script language="javascript" type="text/javascript">
    function add()
    {
        var conid=document.getElementById('<%= HdnContrID.ClientID %>').value;            
        opener.document.getElementById(conid).value=document.getElementById('<%= TxtSelectDic.ClientID %>').value;
        window.close();
    }
</script>    
</form>
</body>
</html>
