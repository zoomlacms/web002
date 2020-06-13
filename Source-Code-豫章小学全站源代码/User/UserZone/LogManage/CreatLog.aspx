<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_UserZone_LogManage_CreatLog, App_Web_i4agugph" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的日志</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent"> 会员中心</a>&gt;&gt;<a title="我的日志" href='<%=ResolveUrl("~/User/UserZone/LogManage/SelfLogManage.aspx")%>'>我的日志</a>&gt;&gt;发表日志
</div>
  <div>
    <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
  </div>
  </div>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
      <td align="center" style="width: 771px"><table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td colspan="2" style="height: 44px" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../Images/blog.gif" /> &nbsp; 发表新日志 &nbsp; &nbsp; </td>
          </tr>
          <tr>
            <td><hr /></td>
          </tr>
          <tr>
            <td><table border="0" cellpadding="0" cellspacing="0" width="90%">
                <tr>
                  <td align="left"> 标题：
                    <asp:TextBox ID="txtTitle" runat="server" Width="379px"></asp:TextBox>
                    <asp:Label ID="lblErr" Text="" runat="server"></asp:Label>
                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle"   Display="Dynamic" ErrorMessage="请填写标题" Font-Size="10pt"></asp:RequiredFieldValidator> --%></td>
                </tr>
                <tr>
                  <td align="left"> 分类：
                    <asp:DropDownList ID="dropLogType" runat="server"> </asp:DropDownList>
                    <a href="LogTypeMange.aspx?where=2">分类管理</a></td>
                </tr>
                <tr>
                  <td align="left" style="height: 300px"><asp:HiddenField ID="HiddenField1" runat="server" />
                    <textarea cols="80" id="infoeditor" width="580px" height="200px" name="infoeditor"
                                              rows="10" runat="server"></textarea>
                    <script id="headscript" type="text/javascript">
                              //<![CDATA[
                                              CKEDITOR.replace('infoeditor',
                          {
                              skin: 'v2',
                              enterMode: 2,
                              shiftEnterMode: 2,
                              toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
                          });
                              //]]>
                                          </script></td>
                </tr>
                <tr>
                  <td align="left"> 日志中提到的好友：
                    <asp:TextBox ID="txtFrd" runat="server" Height="46px" TextMode="MultiLine"
                                              Width="272px"></asp:TextBox></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="btnPut" runat="server" Text="发  布" OnClick="btnPut_Click" />
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
              <asp:Button ID="btnSave" runat="server" Text="保存为草稿" OnClick="btnSave_Click" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <div class="s_bright" id="dwindow" style="position: absolute; top: 0px; left: 0px;
      width: 60%; height: 400px; display: none; filter: alpha(opacity=70); background-color: Gray;
      padding-top: 10px; margin-top: 50px; margin-left: 100px;" runat="server">
    <div class="i_r_ftitle"> 登录会员</div>
    <div class="i_r_fbody">
      <h1>请输入正确的用户名与密码 <font color='red'>
        <label id="LbAlert" runat="server" />
        </font></h1>
      <div class="cleardiv" style="height: 30px;"> </div>
      <ul>
        <li style="width: 150px; text-align: right;"><b>用户名：</b></li>
        <li>
          <asp:TextBox ID="TxtUserName" class="input1" MaxLength="20" runat="server"></asp:TextBox>
        </li>
      </ul>
      <div class="cleardiv"> </div>
      <ul>
        <li style="width: 150px; text-align: right;"><b>密码：</b></li>
        <li>
          <asp:TextBox ID="TxtPassword" runat="server" class="input1" TextMode="Password"></asp:TextBox>
        </li>
      </ul>
      <asp:PlaceHolder ID="PhValCode" runat="server">
        <ul>
          <li style="width: 150px; text-align: right;"><b>验证码：</b></li>
          <li>
            <asp:TextBox ID="TxtValidateCode" class="input1" MaxLength="6" runat="server"></asp:TextBox>
            <asp:Image ID="VcodeLogin" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" />
          </li>
        </ul>
      </asp:PlaceHolder>
      <ul>
        <li style="width: 150px; text-align: right;"><b>Cookie：</b></li>
        <li>
          <asp:DropDownList ID="DropExpiration" runat="server">
            <asp:ListItem Value="Day" Text="保存一天"></asp:ListItem>
            <asp:ListItem Value="Month" Text="保存一月"></asp:ListItem>
            <asp:ListItem Value="Year" Text="保存一年"></asp:ListItem>
          </asp:DropDownList>
        </li>
      </ul>
      <div class="cleardiv"> </div>
      <ul>
        <li style="width: 150px; text-align: right;">&nbsp;</li>
        <li>
          <asp:ImageButton ID="IbtnEnter" ImageUrl="../../images/login.gif" runat="server" OnClick="IbtnEnter_Click" />
          <a href="../../Register.aspx"> <img src="../../images/reg1.gif" alt="" /></a> </li>
      </ul>
      <div class="cleardiv"> </div>
      <ul>
        <li style="width: 150px; text-align: right;">&nbsp;</li>
        <li><a href="/User/GetPassword.aspx">忘记密码了？ </a></li>
        <li>如果您尚未在本站注册为用户，请先<a href="../../Register.aspx">点此注册</a> 。</li>
      </ul>
    </div>
  </div>
</form>
</body>
</html>