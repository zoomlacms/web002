<%@ page language="C#" autoeventwireup="true" inherits="manage_Search_SeachDirectory, App_Web_4vgnqrph" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>定义全文检索</title>
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
    <form id="form1" runat="server">
    <div class="r_navigation">        
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>全文检索</span> &gt;&gt; <span>全文目录</span>&nbsp;&nbsp;<a href="AddCard.aspx" style="color:Green; font-weight:bold">[添加目录]</a>
    </div>
    <div class="clearbox">
    </div>
    <div>
    </div>
    
    <div style="text-align:center">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="left">
        <td width="10%" class="tdbg">欢迎您使用全文检索系统；本系统将帮助您为数据库创建全文索引目录。
        <br />在此位置您可以对索引目录进行观察位置、大小、删除目录及管理目录的索引文件。
        </td>
      </tr>
      </table>
 
        <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center" class="title">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="10%" class="title">目录名称</td>
        <td class="style1"width="55%" >地址路径</td>
        <td width="10%" class="title">当前容量</td>
        <td width="10%" class="title">创建日期</td>
        <td width="10%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"></td>
        <td height="22" align="center"></td>
         <td height="22" align="center"></td>
        <td height="22" align="center"></td>
        <td height="22" align="center"></td>
        <td height="22" align="center"></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td colspan="6" align="center" class="tdbg">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    </form>
</body>
</html>