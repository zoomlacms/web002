<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_PubModelField, App_Web_vxpwslge" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>模型字段列表</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >>
        <a href="">
 <span><a href="">模型字段列表</a></span></a>&nbsp;&nbsp;&nbsp;&nbsp;当前模型:[<asp:Literal ID="Literal1" runat="server"></asp:Literal>] 
	</div>
    <table width="100%" cellspacing="1" cellpadding="0"  align="center">
        <tr class="bgleft">
            <td align="left" style="height: 20px">
                &nbsp;
                &nbsp;&nbsp; <a href="pubModel.aspx?nid=<%=Request.QueryString["nid"] %>">返回表单模型管理</a>  
                    &nbsp;&nbsp; <a href="PubAddModelField.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&nid=<%=Request.QueryString["nid"] %>">添加字段</a>  
            </td>
        </tr>
    </table>
    <div style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
            background-repeat: repeat-x">
        </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1"  align="center">
        <tr  align="center" style="height:25px;">
            <td width="10%" height="20">
                <strong>字段名</strong></td>
            <td width="10%">
                <strong>字段别名</strong></td>
            <td width="10%">
                <strong>字段类型</strong></td>
            <td width="10%">
                <strong>字段级别</strong></td>
            <td width="10%">
                <strong>是否必填</strong></td>
                <td width="10%">
                <strong>回复显示</strong></td>
            <td width="20%">
                <strong>排序</strong></td>                        
            <td width="30%">
                <strong>操作</strong></td>
        </tr>
        <asp:Repeater ID="RepSystemModel" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" >
                        <td>
                            <%#Eval("FieldName")%>
                        </td>
                        <td align=center>
                            <%#Eval("FieldAlias")%>
                        </td>
                        <td align=center>
                            <%# Eval("FieldType", "{0}")%>
                        </td>
                        <td align=center>
                            <font color="#339900">系统</font></td>
                        <td align=center>
                            <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                        </td>
                         <td align=center>
                            <%#Getshows(Eval("FieldName","{0}"))%>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater ID="RepModelField" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" >
                        <td>
                            <%#Eval("IsShow", "{0}") == "False" ? "<font color=#999999>" : ""%><%#Eval("FieldName")%><%#Eval("IsShow","{0}")=="False"?"</font>":"" %>
                        </td>
                        <td align=center>
                            <%#Eval("FieldAlias")%>
                        </td>
                        <td align=center>
                            <%# GetFieldType(Eval("FieldType", "{0}"))%>
                        </td>
                        <td align=center>自定义</td>
                        <td align=center>
                            <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                        </td>
                         <td align=center>
                            <%# GetisShow(Eval("RestoreField", "{0}"))%>
                        </td>
                        <td align=center>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("FieldID") %>'>上移</asp:LinkButton> | <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("FieldID") %>'>下移</asp:LinkButton>
                        </td>
                        <td align="center"><a href="PubUpdateModelField.aspx?FieldID=<%# Eval("FieldID") %>">修改</a> | <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?\r\n\r\n删除字段后需要重新生成静态Html代码')">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
    </table>
    <div style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
            background-repeat: repeat-x">
        </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" align="center">
        <tr class="tdbg">
			<td width="30%" align="left">
			<asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
            <input type="button" value="选择模板" class="button" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" class="btn"/>
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="设定模板" OnClick="SetTemplate" /></td>			
		</tr>
    </table>
    </div>
    </form>
</body>
</html>
