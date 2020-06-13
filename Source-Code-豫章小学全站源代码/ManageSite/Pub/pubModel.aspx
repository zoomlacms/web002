<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_pubModel, App_Web_vxpwslge" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>提交表单管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="column">
            <div class="columntitle">
          当前位置：功能导航 >> 提交表单管理&nbsp;&nbsp;【<a href='PubaddModel.aspx?nid=<%=Request.QueryString["nid"] %>' style="color:Red">添加提交表单</a>】</div>    
    <table width="100%" border="0" cellpadding="0" cellspacing="1"  align="center">
        <tbody>
            <tr  align="center" style="height:25px;">
                <td width="5%" height="20">
                    <strong>ID</strong></td>
                <td width="5%">
                    <strong>图标</strong></td>
                <td width="20%">
                    <strong>模型名称</strong></td>
                <td width="20%">
                    <strong>模型描述</strong></td>
                <td width="10%">
                    <strong>项目名称</strong></td>
                <td width="20%">
                    <strong>表名</strong></td>                        
                <td width="20%">
                    <strong>操作</strong></td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="height:25px;">                        
                        <td>
                            <strong><%# Eval("ModelID") %></strong></td>
                        <td>
                            <img src="<%# GetIcon(DataBinder.Eval(Container, "DataItem.ItemIcon", "{0}"))%>" style="border-width:0px;" /></td>
                        <td>
                            <strong><%# Eval("ModelName")%></strong></td>
                        <td align="center">
                            <strong><%# Eval("Description")%></strong></td>
                        <td>
                            <strong><%# Eval("ItemName")%></strong></td>
                        <td align="center">
                            <strong><%# Eval("TableName")%></strong></td>                        
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ModelID") %>'>修改</asp:LinkButton> | 
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("ModelID") %>' OnClientClick="return confirm('确实要删除此模型吗？');">删除</asp:LinkButton> | 
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Field" CommandArgument='<%# Eval("ModelID") %>'>字段列表</asp:LinkButton>                            
                         </td>
                    </tr>
                </ItemTemplate>
             </asp:Repeater>                        
        </tbody>
    </table>
    </div>
    </form>
</body>
</html>