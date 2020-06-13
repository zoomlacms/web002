<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Config.SiteInfo, App_Web_ahh1qfsx" enableviewstate="False" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>网站信息配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7", "TabTitle8", "TabTitle9");
    var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4", "Div5", "Div6", "Div7", "Div8", "Div9");
    window.onload = function() {
        pload();
    }
    function ShowTabs(ID) {            
        location.href = 'ContentManage.aspx?NodeID=<%=Request.QueryString["NodeID"] %>&id=' + ID + '&type=' + ID;
    }
    
    function pload() {
        var ID = '<%=Request.QueryString["id"]%>';
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            tID = ID;
        }
     
    }

    function chechs() {

    }
    function getinfo(cid) {
        //alert(cid);
        //location.href = 'ContentShow.aspx?id=' + id;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;系统配置 &gt;&gt;网站信息配置</div>
  <table width="100%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>网站名称：</strong></td>
      <td><asp:TextBox ID="TextBox1" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>网站标题：</strong></td>
      <td><asp:TextBox ID="TextBox2" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>网站地址：</strong></td>
      <td><asp:TextBox ID="TextBox3" runat="server" Width="210px" class="l_input"></asp:TextBox>
        &nbsp;当前网址：
        <asp:Literal 
                ID="siteurl" runat="server"></asp:Literal></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px; "><strong>LOGO地址：</strong></td>
      <td><asp:TextBox ID="TextBox4" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px; "><strong>后台LOGO：</strong></td>
      <td><asp:TextBox ID="TextBox11" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px; height: 23px;"><strong>Banner地址：</strong></td>
      <td><asp:TextBox ID="TextBox5" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>站长姓名：</strong></td>
      <td><asp:TextBox ID="TextBox6" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>站长信箱：</strong></td>
      <td><asp:TextBox ID="TextBox7" runat="server" Width="210px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>网站META关键词：</strong></td>
      <td><asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Rows="5" Columns="60" class="x_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px"><strong>网站META网页描述：</strong></td>
      <td><asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="5" Columns="60" class="x_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 200px; height: 68px;"><strong>版权信息：</strong></td>
      <td><asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Rows="5" Columns="60" class="x_input"></asp:TextBox></td>
    </tr>
  </table>
  <br />
  <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" class="C_input" />
  <br />
</form>
</body>
</html>