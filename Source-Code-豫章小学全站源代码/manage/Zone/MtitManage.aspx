<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_MtitManage, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
  <script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<style type="text/css">
    .style3
    {
        background: #e0f7e5;
        line-height: 120%;
    }
</style>
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
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; 插件管理&nbsp;&nbsp;<a href="addMitit.aspx">[ 添加地址 ]</a>&nbsp;&nbsp;</div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="8%" class="title">调换位置</td>
        <td width="15%" class="title">标题</td>
        <td width="41%" class="title">地址</td>
        <td width="8%" class="title">是否给学生开放</td>
        <td width="8%" class="title">是否给老师开放</td>
        <td width="21%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="item" type="checkbox" value='<%# Eval("I_id")%>'/></td>
        <td height="22" align="center"><%# Eval("Iinfo")%></td>
         <td height="22" align="center"><%#Eval("Iurl")%></td>
        <td height="22" align="center"> <%#GetType(DataBinder.Eval(Container.DataItem, "Itype"))%> </td>
        <td height="22" align="center"><%#GetType(DataBinder.Eval(Container.DataItem, "Stype"))%></td>
        <td height="22" align="center"><a href="MtitManage.aspx?menu=up&id=<%#Eval("I_id") %>">向上</a>&nbsp;<a href="MtitManage.aspx?menu=di&id=<%#Eval("I_id") %>">向下</a>&nbsp;<a href="addMitit.aspx?menu=edit&id=<%#Eval("I_id") %>" >修改</a>&nbsp;&nbsp;&nbsp;<a href="MtitManage.aspx?menu=del&id=<%#Eval("I_id") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td colspan="6" align="center" class="style3">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    <br />
    <asp:Button ID="Button1" class="C_input" runat="server" Text="调换排序" onclick="Button1_Click" OnClientClick="if(!IsTwoSelectedId()){alert('只能选择2个互换，请重新选择');return false;}else{return true}"/>
    提示：一次只能点击2个调换位置<div>
       &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 
      
    </div>
    </form>
</body>
</html>
