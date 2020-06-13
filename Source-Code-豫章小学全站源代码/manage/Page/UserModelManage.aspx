<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.WebSite.Manage.Page.UserModelManage, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>申请设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function getinfo(id){
    location.href = "UserModel.aspx?ModelID="+id+"";
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; 企业黄页 &gt;&gt; 黄页申请设置
    [<a href="UserModel.aspx">添加申请模型</a>]</div>
<div class="clearbox"></div>
<table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tbody>
        <tr class="gridtitle" align="center" style="height:25px;">
            <td width="5%" height="24">
                <strong>ID</strong></td>                
            <td width="25%">
                <strong>模型名称</strong></td>
            <td width="25%">
                <strong>模型描述</strong></td>
            <td width="25%">
                <strong>表名</strong></td>                        
            <td width="20%">
                <strong>操作</strong></td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%# Eval("ModelID") %>" ondblclick="getinfo(this.id)">                        
                    <td align="center" height="24">
                        <%# Eval("ModelID") %></td>                        
                    <td align="left">
                        <%# Eval("ModelName")%></td>
                    <td align="left">
                        <%# Eval("Description")%></td>                                               
                    <td align="left">
                        <%# Eval("TableName")%></td>                        
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton> | 
                        <%#showdelbotton(DataBinder.Eval(Container,"DataItem.ModelID","{0}"))%>| 
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Field" CommandArgument='<%# Eval("ModelID") %>'>字段列表</asp:LinkButton>                            
                        </td>
                </tr>
            </ItemTemplate>
         </asp:Repeater>                        
    </tbody>
</table>
</form>
</body>
</html>
