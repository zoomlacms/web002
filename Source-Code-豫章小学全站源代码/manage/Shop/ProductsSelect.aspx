<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ProductsSelect, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>选择商品</title>

    <base target="_self" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script language="javascript" type="text/javascript">
	function GetCheckvalue(name,itemid)
	{
	    var spanChk = window.document.getElementById(name);
	    var itemsid = window.document.getElementById(itemid);
	    
	    opener.document.getElementById("Productsname<%=Request.QueryString["act"]%>").value = spanChk.value;
        opener.document.getElementById("HiddenField<%=Request.QueryString["act"]%>").value = itemsid.value;
        window.close();
	}
</script>
<body>
    <form id="form1" runat="server">        
            <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
                <tr class="title">
                    <td align="left">
                        <b>产品列表：</b></td>
                    <td align="right">
                        <asp:TextBox ID="TxtKeyWord" class="l_input" runat="server"></asp:TextBox>&nbsp;&nbsp;
                        <asp:Button class="C_input" ID="BtnSearch" runat="server" Text="查找" OnClick="BtnSearch_Click" /></td>
               </tr>
            <tr>
             <td valign="top" colspan="2">
             <table width="100%" border="0" cellspacing="1" cellpadding="1">
            <tr class="tdbgleft">
             <td width="5%" height="24" align="center"><strong>ID</strong></td>
             <td width="10%" height="24" align="center"><strong>商品图片</strong></td>
             <td width="40%" height="24" align="center"><strong>商品名称</strong></td>
             <td width="35%" height="24" align="center"><strong>商品零售价</strong></td>
            </tr>
             <asp:Repeater ID="Pagetable" runat="server">
               <ItemTemplate>    
                  <tr class="tdbg">
                  <td height="24" align="center"><%#Eval("ID") %></td>
                  <td height="24" align="center"><%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%></td>
                  <td height="24" align="left"><span onclick="GetCheckvalue('Pronames<%#Eval("ID") %>','Item<%#Eval("ID") %>')" style="cursor:hand"><u><%#Eval("Proname") %></u></span><input type="hidden" id="Pronames<%#Eval("ID") %>" value="<%#Eval("Proname") %>" /><input type="hidden" id="Item<%#Eval("ID") %>" value="<%#Eval("ID") %>" />
                  </td>
                  <td height="24" align="center"><%#Eval("LinPrice","{0:c}")%></td>
                  </tr>
               </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td class="tdbgleft" colspan="6" align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                </td>
            </tr>
            
             </table> 
             </td>
             </tr>
                 <tr>
                     <td colspan="2" align="center">
                         <asp:Button ID="Button1" class="C_input"  style="width:100px;" runat="server" Text="添加捆绑" OnClientClick="GetCheckvalue();return false;" />
                         <asp:Button ID="Button2" class="C_input"  style="width:100px;" runat="server" Text="取消添加" OnClientClick="window.close();return false;" /></td>
                 </tr>
             </table>
    </form>    
</body>
</html>
