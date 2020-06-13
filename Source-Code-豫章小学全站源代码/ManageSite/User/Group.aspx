<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.Group, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>会员组编辑</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
	}
	
	function SelectRule()
        {
            window.open('RuleList.aspx?id=<%=Request.QueryString["id"] %>','','width=600,height=450,resizable=0,scrollbars=yes');

        }
    </script>
<body>
<form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> <a href="Group.aspx">
<asp:Literal ID="LTitle" runat="server" Text="添加会员组"></a></asp:Literal></div>
    <table width="100%" cellpadding="2" cellspacing="1" >
        <tr class="tdbg">
            <td style="width: 35%">
                <strong>会员组名称：</strong>
            </td>
            <td align="left" >
                <asp:TextBox ID="TxtGroupName" runat="server" Width="156" MaxLength="200" /><font color="red">*</font>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtGroupName">会员组名称不能为空</asp:RequiredFieldValidator></td>
        </tr>
        <tr class="tdbg">
            <td >
                <strong>会员组说明：</strong>
            </td>
            <td align="left">                
                <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Width="365px" Height="43px" />                
            </td>
        </tr>        
        <tr class="tdbg">
            <td >
                <strong>是否注册可选：</strong>
            </td>
            <td align="left">
                <asp:RadioButtonList ID="RBLReg" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                    <asp:ListItem Value="0">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>        
         </table>
         <div ></div>
           <table width="100%" cellpadding="2" cellspacing="1" >
            <tr  align="center" style="height:25px;">
	             <td height="26" colspan="13" ><strong>角色列表</strong></td>
            </tr>
             <tr >
             <td width="5%" height="24" align="center"><asp:CheckBox ID="CheckBox1" runat="server" onclick="CheckAll(this);" /></td>
             <td width="5%" height="24" align="center"><strong>ID</strong></td>
              <td width="10%" height="24" align="center"><strong>角色名称</strong></td>
              <td width="14%" height="24" align="center"><strong>角色说明</strong></td>
              <td width="8%" height="24" align="center"><strong>内容浏览</strong></td>
              <td width="8%" height="24" align="center"><strong>列表浏览</strong></td>
              <td width="8%" height="24" align="center"><strong>新增发布</strong></td>
              <td width="8%" height="24" align="center"><strong>编辑修改</strong></td>
              <td width="8%" height="24" align="center"><strong>删除内容</strong></td>
              <td width="8%" height="24" align="center"><strong>评论权限</strong></td>
              <td width="8%" height="24" align="center"><strong>优先级</strong></td>
              <td width="5%" height="24" align="center"><strong>状态</strong></td>
              <td width="5%" height="24" align="center"><strong>操作</strong></td>
              



 
            </tr>
                <asp:Repeater ID="Pagetable" runat="server">
                    <ItemTemplate>
                    <tr class="tdbg">
                          <td height="24" align="center">
                          <input name="Item" type="checkbox" value="<%#Eval("ID") %>"></td>
                          <td height="24" align="center"><%#Eval("ID") %></td>
                          <td height="24" align="center"><a href="Permissionadd.aspx?menu=edit&id=<%#Eval("ID") %>"><%#Eval("RoleName") %></a></td>
                          <td height="24" align="center"><%#Eval("info")%></td>
                          <td height="24" align="center"><%#Getpagepre(Eval("Perlist", "{0}").ToString(), "ViewContent")%></td>
                          <td height="24" align="center"><%#Getpagepre(Eval("Perlist", "{0}").ToString(), "ListContent")%></td>
                          <td height="24" align="center"><%#Getpagepre(Eval("Perlist", "{0}").ToString(), "AddContent")%></td>
                          <td height="24" align="center"><%#Getpagepre(Eval("Perlist", "{0}").ToString(), "ModefiyContent")%></td>
                          <td height="24" align="center"><%#Getpagepre(Eval("Perlist", "{0}").ToString(), "DeleteContent")%></td>
                          <td height="24" align="center"><%#Getpagepre(Eval("Perlist", "{0}").ToString(), "AddComm")%></td>
                          <td height="24" align="center"><%#Eval("Precedence") %></td>
                          <td height="24" align="center"><%#Eval("IsTrue","{0}")=="True"?"<font color=green>启用</font>":"<font color=red>停用</font>"%></td>
                          <td height="24" align="center"><a href="?menu=ruledel&ruleid=<%#Eval("ID") %>&id=<%=Request.QueryString["id"] %>" onclick="return confirm('确实要删除此角色吗？');">删除</a></td>
                          </tr>
                    </ItemTemplate>
                </asp:Repeater>	
             </table>
                <div ></div>
    <table width="100%" cellpadding="2" cellspacing="1" >
        <tr >
            <td colspan="2">
                <asp:HiddenField ID="HdnGroupID" runat="server" />
                &nbsp;&nbsp;
                <asp:Button ID="Button1"  CssClass="button" Text="添加角色" OnClientClick="SelectRule();return false;" runat="server" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" CssClass="button"  Text="批量删除" OnClientClick="return confirm('确实要批量删除角色吗？');" runat="server" OnClick="Button2_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="EBtnSubmit"  CssClass="button" Text="保存设置" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button"  CssClass="button"  id="Cancel" value="取消" onclick="location.href='GroupManage.aspx'" />                
            </td>
        </tr>
    </table>
</div>
</form>
</body>
</html>
