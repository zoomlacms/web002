<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_FManage, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
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
        
        <span>后台管理</span>  &gt;&gt; <span>站群管理 </span>  &gt;&gt; <span>共享池方案管理</span> &gt;&gt; <span>方案管理</span> </div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="20%" class="title">方案</td>
        <td width="20%" class="title">站点</td>
        <td width="10%" class="title">类型</td>
        <td width="10%" class="title">状态</td>
        <td width="20%" class="title">发送类型</td>
        <td width="10%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("F_ID")%>'/></td>
        <td height="22" align="center"><%# Eval("F_ID")%></td>
        <td height="22" align="center"><a href="FManageContent.aspx?fid=<%# Eval("F_ID")%>"><%# Eval("Fname")%></a></td>
        <td height="22" align="center"><%#getSite(Eval("SID"))%></td>
          <td width="10%" align="center"><%#getType(Eval("type"))%></td>
        <td  align="center"><%#getState(Eval("IsOpen"))%></td>
        <td  align="center"><%#getSend(Eval("isGO").ToString (), Eval("endTime").ToString())%></td>
        <td height="22" align="center"><a href="AddF.aspx?menu=edit&fid=<%#Eval("F_ID") %>" >修改</a>
       &nbsp;&nbsp;&nbsp;&nbsp;<a href="FManage.aspx?menu=del&fid=<%#Eval("F_ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="8" align="center" class="tdbgleft">
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
    <div>
        <asp:Button ID="Button3" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要删除选中内容吗？')}"
                        Text="批量删除" onclick="Button3_Click1"  /> 
                 &nbsp;  &nbsp; &nbsp;      
                        <asp:Button ID="Button1" runat="server" class="C_input"  OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}"
                        Text="强制发送方案" onclick="Button1_Click"   />                        
                        </div>
    </form>
</body>
</html>
