<%@ page language="C#" autoeventwireup="true" inherits="manage_SelectNum_NumManage, App_Web_el2p3ip1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
    .style1
    {
        line-height: 22px;
        color: #1e860b;
        font-weight: bold;
        width: 19%;
        background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
    }
    .style2
    {
        width: 19%;
    }
</style>
   <script language="javascript" type="text/javascript">
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
        
        <span>后台管理</span> &gt;&gt; <span>编号管理</span> </div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="40%" class="title">号码</td>
        <td width="20%" class="title">是否绑定用户</td>
        <td width="30%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("s_id")%>'/></td>
        <td height="22" align="center"><%# Eval("s_id")%></td>
        <td height="22" align="center"><%# getname(Eval("Sname"))%></td>
        <td height="22" align="center"><%#getuser(Eval("SUserID"))%></td>
        <td height="22" align="center"><a href="addNum.aspx?menu=edit&sid=<%#Eval("s_id") %>" >修改</a>
       &nbsp;&nbsp;&nbsp;&nbsp;<a href="NumManage.aspx?menu=del&sid=<%#Eval("s_id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" 
                OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    <div>
        <asp:Button ID="Button3" class="C_input" runat="server"  OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
                        Text="批量删除" onclick="Button3_Click1"  /></div>
    </form>
</body>
</html>
