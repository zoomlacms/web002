<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectAffairsAdd, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>新建事务</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
<!-- 
/* Button 样式 */
.btn{   padding: 1px 1px 1px 1px;
    font-size: 12px;
    height: 22px;
    background: url(/App_Themes/AdminDefaultTheme/Images/btnbg.gif);
    border-right: #999999 1px solid;
    border-top: #999999 1px solid;
    border-left: #999999 1px solid;
    border-bottom: #999999 1px solid;
}
-->
</style>
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>项目管理</span>&gt;&gt;<span><a href="ProjectAffairsCenter.aspx">事务中心</a></span>&gt;&gt;<span>新建事务</span>	</div> 
                                    <div class="clearbox"></div>   
<div>
<table width="99%" cellpadding="2" border="0" cellspacing="1" class="border" align="center">
        <tr class="title">
            <td align="left" colspan=2>
                新建事务：文件名：
                <asp:TextBox ID="TxtFilename" runat="server" class="l_input"></asp:TextBox>.txt
                <asp:RequiredFieldValidator ID="ValrKeywordText" ControlToValidate="TxtFilename"
            runat="server" ErrorMessage="事务名不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>                       
                路径:
                <asp:Label ID="lblFielName" runat="server" Text="/"></asp:Label>
                <asp:HiddenField ID="HdnShowPath" runat="server" />                       
            </td>
        </tr>
          <tr class="tdbg">
            <td align="left" valign="top"><asp:TextBox TextMode="MultiLine" runat="server" 
                    ID="textContent" Rows="15" Columns="100" class="l_input" Height="186px"></asp:TextBox></td></tr>
            <tr class="tdbg">
            <td align="left">
                <asp:Button ID="btnSave" runat="server"  CssClass="btn" Text="保存文档"  OnClick="btnAffairs_Click" class="C_input"/>
                <asp:Button ID="btnModify" runat="server"  CssClass="btn" Text="保存文档"  OnClick="btnAffairsModify_Click" Visible="false" class="C_input"/>
                <input id="Button1" type="button" value="取消" class="btn" onclick="javascript:window.history.go(-1);" class="C_input"/>
                </td>
        </tr>
            
            </table>
        
</div>
</form>
</body>
</html>
