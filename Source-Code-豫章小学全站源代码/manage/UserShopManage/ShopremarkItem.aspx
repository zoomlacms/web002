<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ShopremarkItem, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>评论管理</title>

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
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 评论管理
        <asp:Label ID="Label1" runat="server"></asp:Label></div>
      
     <div class="clearbox"></div>
     <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody>
      <tr>
          <td width="33%" height="24" align="center" class="tdbgleft"><a href="ShopRemark.aspx?actions=userremark">用户评论</a><asp:Label ID="Label2" runat="server"></asp:Label></td>
          <td width="33%" align="center" class="tdbgleft"><a href="ShopRemark.aspx?actions=proremark">商品评论</a><asp:Label ID="Label3" runat="server"></asp:Label></td>    
          <td width="33%" align="center" class="tdbgleft"><a href="ShopRemark.aspx?actions=orderremark">交易评论</a><asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        </tbody>
        </table>
        <div class="clearbox"></div>
        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody3">
        <tr class="tdbg">
          <td width="100%" height="24" align="center" class="title" colspan="2">
              查看评论信息</td>
        </tr>
        <tr class="tdbg">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>评论标题</b></td>
           <td height="24" align="left" width="80%">
               <asp:Label ID="S_Comtitle" runat="server" Text=""></asp:Label>
               </td>
        </tr>
        <tr class="tdbg" id="show1" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>受论用户ID</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_CUserid" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" id="show2" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>受论用户</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_CUsername" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" id="show3" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>商品ID</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_Proid" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" id="show4" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>商品名称</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_ProName" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" id="show5" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>交易ID</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_COrderid" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" id="show6" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>店铺店主</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_Storeid" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" id="show7" runat="server">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>评论类型</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_ComOption" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>作者</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_ComUser" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>提交时间</b></td>
           <td height="24" align="left" width="80%"><asp:Label ID="S_Addtime" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg">
          <td height="24" align="left" width="20%" class="tdbgleft"><b>评论内容</b></td>
           <td height="24" align="left" width="80%" style="word-break: break-all; word-wrap:break-word;">
           <asp:Label ID="S_ComContent" runat="server" Text=""></asp:Label>
           </td>
        </tr>
     </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="Button3" runat="server" Text="删除" CommandName="5" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" OnClick="Button3_Click" />
            <asp:Button ID="Button1" runat="server" Text="返回" OnClick="Button1_Click" /></td>
      </tr>
            <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>
