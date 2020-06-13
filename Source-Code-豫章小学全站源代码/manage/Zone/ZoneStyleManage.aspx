<%@ page language="C#" autoeventwireup="true" inherits="manage_ZoneStyleManage_StoreStyleManage, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head2" runat="server">
<title>商品列表</title>

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
		
		<span>后台管理</span> &gt;&gt; <span>会员空间管理</span>  &gt;&gt; 空间模板管理  &gt;&gt;   <a href="ZoneStyleAdd.aspx">[添加空间模板]</a>
	</div>
<div class="clearbox"></div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
               <tr class="tdbg">
          <td width="3%" height="24" align="center" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="12%" align="center" class="title"><span class="tdbgleft">模板缩略图</span></td>
          <td width="12%" align="center" class="title"><span class="tdbgleft">模板名称</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">模板状态</span></td>
          <td width="8%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="Productlist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center">
              <input name="Item" type="checkbox" value='<%# Eval("ID")%>'/>
              </td>
          <td height="24" align="center"><asp:image ID="img2" runat="server" Width="50" Height="50" ImageUrl='<%#GetImg(DataBinder.Eval(Container.DataItem, "ID").ToString())%>' /></td>
          <td height="24" align="center"><%#DataBinder.Eval(Container.DataItem, "StyleName")%></td>
          <td height="24" align="center"><%#GetState(DataBinder.Eval(Container.DataItem, "StyleState").ToString())%></td>
          <td height="24" align="center"><a href="zoneStyleEdit.aspx?id=<%#Eval("ID")%>">修改</a> <asp:LinkButton ID="LinkButton1" runat="server"  CommandName='<%#Eval("ID")%>' OnClick="Button1_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</asp:LinkButton></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                 <tr class="tdbg">
          <td height="24" colspan="5" align="center" class="tdbgleft">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
              <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个/页
              转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="SaveBtn" class="C_input"  runat="server" Text="设为启用" CommandName="1" OnClick="SaveBtn_Click" />
            <asp:Button ID="Button2" runat="server" class="C_input"  Text="设为停用" CommandName="0" OnClick="SaveBtn_Click" />
            <asp:Button ID="Button3" runat="server" class="C_input"  Text="批量删除" CommandName="5" OnClick="SaveBtn_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" />
            </td>
      </tr>
            <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>
