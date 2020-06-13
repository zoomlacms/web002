<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="BBS_leaveword, App_Web_dypvjobb" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>豫章小学家校互动中心</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../Template/yzxx/style/global.css"  rel="stylesheet" type="text/css"/>
<script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
<script src="../JS/jquery.js" type="text/javascript"></script>
<script charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript">
    function CheckDirty() {
        var oEditor = CKEDITOR.instances.TxtTContent;
        var value = oEditor.getData();
        var TxtTTitle = document.getElementById("TxtTTitle").value;
        var TxtValidateCode = document.getElementById("TxtValidateCode").value;

        if (value == "" || TxtTTitle == "" || TxtValidateCode=="") {
            if (value == "") {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "<font color='red'>内容不能为空！</font>";
            }
            else {
                var obj = document.getElementById("RequiredFieldValidator1");
                obj.innerHTML = "";
            }
            if (TxtTTitle == "") {
                var obj2 = document.getElementById("RequiredFieldValidator2");
                obj2.innerHTML = "<font color='red'>留言标题不能为空！</font>";
            }
            else {
                var obj2 = document.getElementById("RequiredFieldValidator2");
                obj2.innerHTML = "";
            }
            if (TxtValidateCode == "") {
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "<font color='red'>验证码不能为空！</font>";
            } else {
                var obj3 = document.getElementById("sp1");
                obj3.innerHTML = "";
            }
            return false;
        }
        else {
            var obj = document.getElementById("RequiredFieldValidator1");
            obj.innerHTML = "";
            var obj2 = document.getElementById("RequiredFieldValidator2");
            obj2.innerHTML = "";
            var obj3 = document.getElementById("sp1");
            obj3.innerHTML = "";
            document.getElementById("EBtnSubmit2").click();
        }
    }
</script>
<style>
.cart_lei a{ font-size:12px; color:#336699; margin-left:10px; margin-right:10px;}
#btnSearch{ width:64px; height:24px; text-align:center; line-height:24px; border:none; background:url(../Template/yzxx/style/images/search_bg.jpg); cursor:pointer;}
#form1{ background:#FFF;}
#Gdv,.tdbgleft{ border:none;}

</style>
</head>
<body style=" background: url(../Template/yzxx/style/images/Body_bg.jpg) repeat-x;">
<!--top end-->
<%Call.Label("{ZL.Label id=\"和雅豫章头部\"/}"); %>
<form id="form1" runat="server">
<div id="main" class="rg_inout">
<h1>您的位置：<a href="/">网站首页</a>>>&nbsp;<a href="Default.aspx">留言中心</a>>><a href="#GuestBorder">留言板</a></h1>
<div class="cart_lei" style=" background:#A6DFFD;">
<ul style=" color:#336699; padding-left:16px;">
<asp:Literal ID="LitCate" runat="server"></asp:Literal>分类查询：</b> <a href="Default.aspx">所有分类：</a><asp:Repeater ID="Repeater1" runat="server"><ItemTemplate> <font color="red"><%#GetDataItem()%></font> </ItemTemplate></asp:Repeater>
</ul>
</div>

  <table>
    <tr>
      <td><b>留言ID:</b>
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
      <td><b>留言标题:</b>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
      <td><asp:Button ID="Button1" runat="server"  Text="搜索" CausesValidation="False" onclick="Button1_Click" /></td>
    </tr>
  </table>
    <div class="cleardiv"></div>
    <asp:GridView ID="Gdv" DataKeyNames="GID"  
        runat="server" AutoGenerateColumns="False" PageSize="20"  Width="100%">
      <Columns>
      <asp:BoundField DataField="GID" HeaderText="序号">
        <ItemStyle  CssClass="tdbg" />
        <HeaderStyle Width="5%" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="标题">
        <ItemTemplate> <a href="GuestShow.aspx?GID=<%# Eval("GID")%>"><%# Eval("Title")%></a> </ItemTemplate>
        <ItemStyle  CssClass="tdbg"/>
        <HeaderStyle Width="25%" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="类别">
        <ItemTemplate> <a href="Default.aspx?CateID=<%# Eval("CateID","{0}")%>"><%# GetCate(Eval("CateID","{0}")) %></a> </ItemTemplate>
        <ItemStyle  CssClass="tdbg"  />
        <HeaderStyle Width="10%" />
      </asp:TemplateField>
      </Columns>
      <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
      <PagerStyle CssClass="tdbg" ForeColor="Black"  />
      <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#000" BorderStyle="None" Height="30px" Font-Overline="False" />
      <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <table Width="100%">
      <tr class="tdbg">
        <td height="22" colspan="9"  class="tdbgleft"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          条记录
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server"
                        Text="" />
          页
          <asp:Label ID="pagess" runat="server" Text="" />
          条记录/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
          页 </td>
      </tr>
    </table>
    <table class="border" width="100%" cellpadding="0" cellspacing="0">
      <tr>
        <td class="spacingtitle" colspan="2" ><a name="GuestBorder">
          <asp:Literal ID="LTitle" runat="server" Text="发表帖子"></asp:Literal>
          </a></td>
      <tbody id="UCate" runat="server" style="display:none">
        <tr class="tdbg">
          <td class="style1"><strong>选择分类：</strong></td>
          <td><asp:DropDownList ID="DDLCate" runat="server" Height="20px" Width="100px" > </asp:DropDownList></td>
        </tr>
      </tbody>
      <tbody id="TCateName" runat="server" style="display:none">
        <tr class="tdbg">
          <td class="style1"><strong>分类：</strong></td>
          <td><asp:Label ID="LblCateName" runat="server" Text="Label"></asp:Label></td>
        </tr>
      </tbody>
      <tr class="tdbg">
        <td class="style1"><strong>标题：</strong></td>
        <td style="width:85%"><asp:TextBox ID="TxtTTitle" runat="server" Width="80%" MaxLength="100" />
          <span id="RequiredFieldValidator2"></span></td>
      </tr>
      <tr class="tdbg">
        <td class="style1"><strong>内容：</strong></td>
        <td style="width:85%"><textarea cols="80" id="TxtTContent" width="580px" height="200px" name="TxtTContent" rows="10" runat="server"></textarea>
          <script id="headscript" type="text/javascript">
    //<![CDATA[
    CKEDITOR.replace('TxtTContent',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script> 
          <span id="RequiredFieldValidator1"></span>
          <input type="hidden" id="txt_Config\" value="" />
          <asp:TextBox ID="FilePicPath" runat="server" Text="fbangd" Style="display: none;height:20px"></asp:TextBox></td>
      </tr>
      <tr  class="tdbg">
        <td><strong>验证码：</strong></td>
        <td style="width:85%;margin-top:3px"><asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
          <asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:70px;border:#CCC solid 1px;height:20px; line-height:23px;" autocomplete="off"></asp:TextBox>
          <span id="sp1"></span></td>
      </tr>
      <tr class="tdbgbottom">
        <td colspan="2"><asp:HiddenField ID="HdnCateID" runat="server" />
          <input type="button" id="EBtnSubmit" name="EBtnSubmit" value="提交留言" onclick="CheckDirty()" />
          <asp:Button ID="EBtnSubmit2" Text="提交留言" OnClick="EBtnSubmit_Click" runat="server" style="display:none" /></td>
      </tr>
    </table>
  </div>
  <!-- 版权信息 -->

<div id="bottom" style="display:none;">
<a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
<script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp; <%Call.Label("{$SiteName/}"); %> All rights reserved.</p>
</div>
</form>
</body>
</html>