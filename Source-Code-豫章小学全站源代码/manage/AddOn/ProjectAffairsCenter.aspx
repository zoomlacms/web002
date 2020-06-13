<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_AddOn_ProjectAffairsCenter, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>

<html>
<head runat="server">
<title>事务中心</title>

<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
   <style type="text/css">
<!-- 
/* Button 样式 */
.btn
{
padding: 1px 1px 1px 1px;
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
 <script language="javascript" type="text/javascript">
  function ShowCreate(result)
	{
		HideCreate();
		result.style.display="";
	}

	function HideCreate()
	{
		for(i=1;i<5;i++)
		{
			eval("crt"+i).style.display="none";	
		}
	}
	function CheckAffair()
	{
	     if(document.form1.TBTitle.value=="")
         {
           alert("请输入事务名称！");
           form1.TBTitle.focus();
           return false
           }
        if(document.form1.TbRemmber.value=="")
         {
           alert("请输入事务内容！");
           form1.TbRemmber.focus();
           return false
           }
     }	
//         function Refesh()
//         {          
//            window.location.reload();
//          for(i=1;i<5;i++)
//			{
//				eval("crt"+i).style.display="none";	
//			}
//			crt2.style.display="";
        //ShowCreate(crt2);            
    // }	
</script>
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>项目管理</span>&gt;&gt;<span>事务中心</span>	</div> 
                                    <div class="clearbox"></div>                                       
<div class="divline">
	<ul style="cursor:hand;">
	                
        <li onclick="ShowCreate(crt3)">公共事务社区</li>
        <li onclick="ShowCreate(crt4)">我的备忘</li>           
        <li onclick="ShowCreate(crt2)">即时会话聊天</li>
	   <li onclick="ShowCreate(crt1)">项目文档管理</li>              
       
    </ul>
</div>
<div class="clearbox"></div>    
<!--我的备忘-->
   <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt4" style="display:none;">
        <tr class="title"><td colspan="2" align="left" style="height: 23px">&nbsp我的备忘</td></tr>
        
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"><td colspan="2" align="left" style="height: 350px">
<asp:TextBox ID="TBxRemmber" class="l_input" runat="server" Height="200px" Width="800" TextMode="MultiLine" Rows="20" Columns="80" AutoPostBack="true" OnTextChanged="AutoSave"></asp:TextBox>
</td></tr>
</table>
<!--项目文档管理-->
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt1" style="display:none;">
    <tr class="title" style="height: 23px"><td colspan="2" align="left" style="height: 23px">&nbsp;项目文档管理</td></tr>
    <tr class="title" style="height: 23px"><td colspan="2" align="left" style="height: 23px">
   <table width="100%" class="border">
    <tr>
		<td align="left">
			当前目录：<asp:Label ID="lblDir" runat="server" Text="/"></asp:Label>
		</td>
		<td align="right">
            <asp:Literal ID="LitParentDirLink" runat="server"></asp:Literal>
        </td>
	</tr>
</table>
</td>
</tr>
<tr class="title" style="height: 23px"><td colspan="2" align="left" style="height: 23px">
 <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tr class="gridtitle" align="center" style="height:25px;">
        <td width="45%">名称</td><td width="10%">大小</td><td width="10%">类型</td><td width="25%">修改时间</td><td>操作</td>
    </tr></table></td></tr>
    
<tr class="title" style="height: 23px"><td colspan="2" align="left" style="height: 23px"><table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
    <tr class="tdbg">
		<td width="10%" align="center"><asp:Button ID="Button1" runat="server" class="C_input" Text="新建文档" OnClick="AddAffairs_Click"/></td>
		<td width="10%" align="left">目录名称：</td>
		<td align="left" width="50%"><asp:TextBox ID="txtForderName" class="l_input" runat="server" Width="200"></asp:TextBox></td>
		<td align="left" width="15%"><asp:Button ID="btnCreateFolder" runat="server" class="C_input" Text="新建目录" OnClick="btnCreateFolder_Click"/>
            <asp:HiddenField ID="HdnPath" runat="server" />
        </td>
		<td width="30%"></td>
		<td width="100%"></td>
	</tr>
	<asp:Repeater ID="repFile" runat="server" OnItemCommand="repFileReName_ItemCommand">
<ItemTemplate>
    <tr class="tdbg">            
        <td align="left">
            <img alt="" src=' <%# System.Convert.ToInt32(Eval("type")) == 1 ? "/App_Themes/AdminDefaultTheme/Images/Node/closefolder.gif" :"/App_Themes/AdminDefaultTheme/Images/Node/singlepage.gif" %>' />
			<a href="<%# System.Convert.ToInt32(Eval("type")) == 1 ?  "ProjectAffairsCenter.aspx?Dir=" + Server.UrlEncode(Request.QueryString["Dir"] +"/"+ Eval("Name").ToString()):"ProjectAffairsAdd.aspx?TxtPath="+ Server.UrlEncode(Request.QueryString["Dir"] +"/"+ Eval("Name").ToString()) %>">
			<%# Eval("Name") %></a>
		</td>
		<td align="center"> <%# GetSize(Eval("size").ToString()) %></td>			
		<td align="center">
		    <asp:HiddenField ID="HdnFileType" Value='<%#Eval("type") %>' runat="server" />
            <%# System.Convert.ToInt32(Eval("type")) == 1 ? "文件夹" : Eval("content_type").ToString() + "文件" %></td>
		<td align="center"><%#Eval("lastWriteTime")%></td>
		<td align="center">&nbsp;				
			<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Name").ToString()%>' CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>' OnClientClick="return confirm('你确认要删除该文件夹或文件吗？')" ><%# Flag==true?"删除":""%></asp:LinkButton>
			 <a title="提示：右键选[另存为]即可下载到本地" href="<%# System.Convert.ToInt32(Eval("type")) == 1 ?  "": "../../IAA/Note/"+Request.QueryString["Dir"] + Eval("Name").ToString() %>"><%# System.Convert.ToInt32(Eval("type")) == 1?"":"下载" %></a> 
		</td>
    </tr>
</ItemTemplate>
</asp:Repeater>
</table></td></tr>
</table>
<!--公用记事本-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt2" style="display:none;">
        <tr class="title"><td colspan="2" align="left" style="height: 23px">&nbsp即时会话聊天:</td></tr>
        
		<tr class="tdbg">
			<td align="right">内容显示：</td>
<td class="bqright">
<asp:TextBox ID="TxB" runat="server" class="l_input" TextMode="MultiLine" Height="120px" Rows="8" Columns="100"></asp:TextBox>
<asp:Button ID="Button2" runat="server" Text="刷新" OnClick="EBtnRefesh_Click" class="C_input"/><asp:Button ID="BtClean" class="C_input" runat="server" Text="清空" OnClientClick="javascript:return confirm('你确定要清空公共记事本内容吗!');" OnClick="EBtnClean_Click"/></td>
		</tr>
        
        <tr class="tdbg">
            <td align="right" valign="middle">新内容：</td>
            <td class="bqright" valign="middle" style="padding:0px;">
                <div style="float:left;"><asp:TextBox ID="TBComment" class="l_input" runat="server"></asp:TextBox></div>                     
                <div style="float:left;">&nbsp;<asp:Button ID="btnNote" runat="server" Text="发送" class="C_input" OnClick="btnNote_Click" /></div>
            </td>
        </tr>
    </table>
     <!--BBS池-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt3">
        <tr class="title"><td colspan="2" align="left" style="height: 23px">&nbsp;&nbsp;公共事务社区:</td></tr>
        <tr class="title"><td colspan="2" align="left" style="height: 23px">
        <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
       DataKeyNames="ID" ShowHeader="false" PageSize="5" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" OnRowCommand="GridView1_RowCommand" EmptyDataText="无相关讨论内容">
        <Columns>
            <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center">
                  <ItemTemplate>
                      <asp:CheckBox ID="chkSel" runat="server" Visible="false"/>
                  </ItemTemplate>               
                  <ItemStyle CssClass="tdbg" HorizontalAlign="Center" Width="5%"/>
            </asp:TemplateField> 
            <asp:BoundField DataField="MainTitleID" HeaderText="ID" ItemStyle-HorizontalAlign="Center">
                     <ItemStyle CssClass="tdbg" HorizontalAlign="Center" Width="5%" />
            </asp:BoundField>
            
           <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>  
                   <%#DataBinder.Eval(Container.DataItem, "AuthorName").ToString()%> <%#DataBinder.Eval(Container.DataItem, "EditTime").ToString()%> 
                    <br />
                  <a href='#' onclick="window.open('ProjectAffairsShow.aspx?PAid=<%# Eval("ID")%>','事务内容', 'width=450,height=560,resizable=1,scrollbars=auto')"> <%#DataBinder.Eval(Container.DataItem, "Title").ToString()%> </a>
                </ItemTemplate>
                
                <ItemStyle CssClass="tdbg" HorizontalAlign="Left" />
            </asp:TemplateField>
                                       
            <asp:TemplateField HeaderText="操作"  ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>                        
                    <asp:LinkButton ID="LnkDelete"  runat="server" CommandName="DeleteAffairs" OnClientClick="return confirm('确实要删除吗？');"
                        CommandArgument='<%# Eval("ID")%>'><%# Flag==true?"删除":"" %></asp:LinkButton>  
                    <asp:LinkButton ID="LinkButton1"  runat="server" CommandName="ReplyAffairs"
                        CommandArgument='<%# Eval("ID")%>'>回复</asp:LinkButton> 
                       
                  </ItemTemplate>
                  
                  <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  Width="10%"/>                    
            </asp:TemplateField>
        　</Columns>
         <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
     <div class="clearbox"></div> 
     </td></tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right">标题：</td>
			<td class="bqright">
                <asp:TextBox ID="TBTitle" runat="server" class="l_input"></asp:TextBox></td>
		</tr>
        
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" valign="middle">评论内容：</td>
            <td class="bqright" valign="middle" style="padding:0px;">
                <div style="float:left;"></div> <asp:TextBox ID="TbRemmber" runat="server" 
                    TextMode="MultiLine" Rows="8" Columns="50" class="l_input" Height="101px"></asp:TextBox>
                
                <div>&nbsp;
                <asp:Button ID="BtnSubmit" runat="server" Text="发送"   OnClientClick="return CheckAffair();" OnClick="EBtnSubmit_Click" class="C_input"/>
                <asp:Button ID="BtnSave" runat="server" Text="保存"  OnClick="EBtnReply_Click" Visible="false" class="C_input"/>
                <asp:HiddenField ID="HfdMid" runat="server" />
                </div>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
