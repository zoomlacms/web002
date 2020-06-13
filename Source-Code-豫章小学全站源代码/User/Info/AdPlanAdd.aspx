<%@ page language="C#" autoeventwireup="true" inherits="User_Info_AdPlanAdd, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>常用客户管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<style type="text/css">
.style1 { height: 19px; }
#ShowTime {color:#aaa;}
</style>
</head>
<body>
<% this.ADID.Items[0].Selected = true;%>
<form id="form1" runat="server">
<div class="us_topinfo">您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a> &gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt;<a title="修改密码" href="AdPlan.aspx">广告计划</a>&nbsp;<a href="AdPlanAdd.aspx">[申请广告]</a></div>
  <div class="us_seta">
    <h1 style="text-align: center;">
      <asp:Label ID="Label1" runat="server" Text="申请广告"></asp:Label>
      <asp:Label ID="Label2" Visible="false" runat="server" Text="修改广告"></asp:Label>
    </h1>
    <table width="100%" cellpadding="2" cellspacing="1" class="ad_info">
      <tr>
        <td align="right" class="Adleft">版位名称&nbsp;: </td>
        <td><asp:RadioButtonList ID="ADID" runat="server" DataSourceID="RedioDataSource" DataTextField="ZoneName" DataValueField="ZoneID" RepeatDirection="Horizontal"> </asp:RadioButtonList>
          <asp:ObjectDataSource ID="RedioDataSource" runat="server" SelectMethod="ADZone_ID"  TypeName="B_ADZone"></asp:ObjectDataSource></td>
      </tr>
      <tr>
        <td align="right" class="Adleft"> 广告权重&nbsp;: </td>
        <td class="style2"><asp:DropDownList ID="Scale" runat="server">
            <asp:ListItem Value="10"></asp:ListItem>
            <asp:ListItem Value="9"></asp:ListItem>
            <asp:ListItem Value="8"></asp:ListItem>
            <asp:ListItem Value="7"></asp:ListItem>
            <asp:ListItem Value="6"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="1"></asp:ListItem>
          </asp:DropDownList>
         *如要购买完整广告请填10</td>
      </tr>
      <tr>
        <td align="right" class="Adleft"> 购买天数&nbsp;: </td>
        <td class="style1"><asp:TextBox ID="ShowTime" class="input_out" runat="server" Text="广告投放时间数（单位：天）" Width="200px"  onclick="setEmpty(this)" onblur="settxt(this)"></asp:TextBox>
          <span><b>*</b>广告投放时间数（单位：天）</span>
          <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ShowTime" ErrorMessage="申请天数必须在1-365天之间" MaximumValue="365" MinimumValue="1" SetFocusOnError="True" Display="Dynamic" Type="Integer"></asp:RangeValidator></td>
      </tr>
      <tr>
      <tr>
        <td align="right" class="Adleft"> 计划费用&nbsp;: </td>
        <td class="style9"><asp:TextBox ID="Price" Class="input_out" runat="server" Width="200px"></asp:TextBox>
          <span><b>*</b>单位：人民币。</span>
          <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Price" Display="Dynamic" ErrorMessage="不能小于0或负数" MaximumValue="999999999" MinimumValue="1" SetFocusOnError="True" Type="Double"></asp:RangeValidator></td>
      </tr>
      <tr>
        <td align="right" class="Adleft"> 广告内容&nbsp;: </td>
        <td><asp:TextBox ID="Content" runat="server" Class="input_out" Height="100px" Width="300px" TextMode="MultiLine"></asp:TextBox>
          <span><b>*</b>可以填写您对于广告投放的其它要求。</span></td>
      </tr>
      <tr>
        <td align="right" class="Adleft">广告附件&nbsp;: </td>
        <td><asp:TextBox ID="txt" runat="server" Width="200px" Class="input_out" ></asp:TextBox><br/>
        <iframe id="Upload_Pic" src="/Common/Upload.aspx" marginheight="0" marginwidth="0"  frameborder="0" height="30" scrolling="no"></iframe>
        <asp:Label ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label>
        <span>*推荐使用rar|zip|jpg|docx等格式上传您的广告详细附件</span>
        </td>
      </tr>
        <td align="right" class="style1">投放时间&nbsp;: </td>
        <td class="style1"><span id="Span2">
          <asp:TextBox ID="Ptime" class="input_out" runat="server" Width="200px" onclick="calendar('Ptime');parent.document.getElementById('main_right').height = document.body.offsetHeight+400;"></asp:TextBox>
          <span><b>*</b>选择计划广告投放的时间</span> </span>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Ptime" Display="Dynamic" ErrorMessage="时间格式为yyyy-MM-dd" SetFocusOnError="True" ValidationExpression="\d{4}-\d{2}-\d{2}"></asp:RegularExpressionValidator></td>
      </tr>
      <tr>
        <td colspan="2" align="center" style="text-align: left; padding-left: 100px;"><asp:Button ID="Button2" runat="server" Text="修改" Width="68px" OnClick="Button2_Click" class="i_bottom" OnClientClick="javascript:if(check()) return true;else return false;" />
          &nbsp;
          <asp:Button ID="Button1" runat="server" Text="提交申请" Width="68px" OnClientClick="javascript:if(check()) return true;else return false;" OnClick="Button1_Click" class="i_bottom" />
          &nbsp;
          <input id="Reset1" class="i_bottom" type="reset" value="重置" /></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">
    function setEmpty(obj) {
        if (obj.value == "广告投放时间数（单位：天）") {
            obj.value = "";
            document.getElementById("ShowTime").style.color = "#000";
        }
    }
    function settxt(obj) {
        if (obj.value == "") {
            obj.value = "广告投放时间数（单位：天）";
            document.getElementById("ShowTime").style.color = "#aaa";
        }
    }
</script> 
<script type="text/javascript" src="/JS/pacalendar.js"></script>
</body>
</html>