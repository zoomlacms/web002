<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ShopGrade, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>等级管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
    </script>
</head>
<body>
    <form id="form2" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 店铺等级管理 [<a href="AddShopGrades.aspx">添加等级</a>]
	</div>
      
     <div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
               <tr class="tdbg">
          <td width="3%" align="center" class="title" style="height: 24px"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="10%" align="center" class="title" style="height: 24px"><span class="tdbgleft">等级名称</span></td>
          <td width="10%" align="center" class="title" style="height: 24px"><span class="tdbgleft">等级别名</span></td>
          <td width="25%" align="center" class="title" style="height: 24px"><span class="tdbgleft">等级图片</span></td>
          <td width="21%" align="center" class="title" style="height: 24px"><span class="tdbgleft">积分</span></td>
          <td  width="10%" align="center" class="title" style="height: 24px"><span class="tdbgleft">启用状态</span></td>
          <td width="10%" align="center" class="title" style="height: 24px"><span class="tdbgleft">等级类型</span></td>
          <td width="12%" align="center" class="title" style="height: 24px"><span class="tdbgleft">操作</span></td>
          
        </tr>
        <asp:Repeater ID="GradeList" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center">
          <input name="Item" type="checkbox" value='<%#Eval("ID") %>' />
              </td>
          <td height="24" align="center">
          <%#Eval("GradeName")%></td>
          <td height="24" align="center">
          <%#Eval("OtherName")%></td>
          <td height="24" align="center">
          <%#GetIcon(DataBinder.Eval(Container, "DataItem.Gradeimg", "{0}"),Eval("Imgnum","{0}"))%>
          </td>
          <td height="24" align="center">
          <%#Eval("CommentNum")%></td>
          <td height="24" align="center">
          <%#Getture(Eval("Istrue","{0}"))%></td>
           <td height="24" align="center">
           <%#Gettpye(Eval("GradeType","{0}"))%></td>
            <td height="24" align="center">
             <a href="AddShopGrades.aspx?menu=edit&id=<%#Eval("ID") %>">修改</a>　<a href="?menu=del&id=<%#Eval("ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
        </tr>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
         <tr class="tdbg">
          <td height="24" colspan="8" align="center" class="tdbgleft" width="100%">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>个&nbsp;
              <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个/页
              转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="Button1" class="C_input"  style="width:110px;"  runat="server" Text="设为启用" CommandName="1" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" class="C_input"  style="width:110px;"  Text="设为停用" CommandName="0" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" class="C_input"  style="width:110px;"  Text="批量删除" CommandName="5" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" OnClick="Button3_Click" />
            </td>
      </tr>
            <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>
