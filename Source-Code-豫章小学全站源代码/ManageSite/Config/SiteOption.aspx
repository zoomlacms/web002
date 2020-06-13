<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.ManageSite.Config.SiteOption, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>网站参数</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle">当前位置：功能导航 >>站点配置</div>
    <table width="99%" cellspacing="1" cellpadding="0" >
      <tr >
        <td  align="right" style="width: 300px;"><strong>Site Server (子站系统)：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButtonList ID="SiteServer" runat="server" 
                        RepeatDirection="Horizontal" AutoPostBack="True" 
                        onselectedindexchanged="SiteServer_SelectedIndexChanged">
            <asp:ListItem Value="1">开启</asp:ListItem>
            <asp:ListItem Value="0" Selected="True">关闭</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" runat="server" id="SiteServerOption">
        <td align="right" style="width: 300px;"><strong>站点类型：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButtonList ID="ServerType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
            <asp:ListItem Value="Server" Selected="True">主站-主控服务器端</asp:ListItem>
            <asp:ListItem Value="Client">子站-客户端</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tbody id="ClientApiOpton" runat="server">
        <tr class="tdbg">
          <td  align="right" style="width: 300px;"><strong>主站(API)接口：</strong></td>
          <td align="left" ><asp:TextBox ID="ServerApiUrl" runat="server" Width="360px" AutoPostBack="True" ontextchanged="ServerApiUrl_TextChanged"></asp:TextBox>
            <span id="sitestart" runat="server"></span><br />
            <font color=red>输入主站接口地址,例子： http://xxx.xxx.xxx/API/SitePortApi.aspx</font></td>
        </tr>
        <tr class="tdbg">
          <td  align="right" style="width: 300px;"><strong>主站许可证：</strong></td>
          <td align="left" ><asp:TextBox ID="txtSiteLicense" runat="server" TextMode="MultiLine" Width="360px" Height="60px" ></asp:TextBox></td>
        </tr>
      </tbody>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>开启日志：</strong></td>
        <td align="left" ><asp:RadioButtonList ID="OpenLog" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="1">开启</asp:ListItem>
            <asp:ListItem Value="0">关闭</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>保留指定天数的日志：(0-不限制)：</strong></td>
        <td align="left" >&nbsp;
          <asp:TextBox ID="Savadaylog" runat="server"></asp:TextBox>
          &nbsp;天</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>保留指定数量的日志：(0-不限制)：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="Savanumlog" runat="server"></asp:TextBox>
          &nbsp;条</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>广告目录：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;;"><strong>是否启用后台管理认证码：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton1" runat="server" GroupName="EnableSiteManageCod"
                        TabIndex="1" />
          是
          <asp:RadioButton ID="RadioButton2" runat="server" GroupName="EnableSiteManageCod"
                        TabIndex="2" />
          否</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>是否使用软键盘输入密码：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton3" runat="server" GroupName="EnableSoftKey" TabIndex="1" />
          是
          <asp:RadioButton ID="RadioButton4" runat="server" GroupName="EnableSoftKey" TabIndex="2" />
          否</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>是否允许上传文件：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton5" runat="server" GroupName="EnableUploadFiles" TabIndex="1" />
          是
          <asp:RadioButton ID="RadioButton6" runat="server" GroupName="EnableUploadFiles" TabIndex="2" />
          否</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>是否开启个人空间：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton9" runat="server" GroupName="IsZone" TabIndex="1" />
          是
          <asp:RadioButton ID="RadioButton10" runat="server" GroupName="IsZone"
                        TabIndex="2" />
          否</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>是否开启多用户网店功能：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton11" runat="server" GroupName="IsMall"
                        TabIndex="1" />
          是
          <asp:RadioButton ID="RadioButton12" runat="server" GroupName="IsMall"
                        TabIndex="2" />
          否</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>链接地址方式：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton7" runat="server" GroupName="IsAbsoluatePath" TabIndex="1" />
          相对路径
          <asp:RadioButton ID="RadioButton8" runat="server" GroupName="IsAbsoluatePath" TabIndex="2" />
          绝对路径</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>子站转换功能：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButton ID="RadioButton13" runat="server" GroupName="UrlWrite" TabIndex="1" />
          开启
          <asp:RadioButton ID="RadioButton14" runat="server" GroupName="UrlWrite" TabIndex="2" />
          关闭</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>后台管理目录：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
          <span style="color:#1e860b;">默认目录为manage，改名后将屏蔽原路径访问，并启用新路径进入后台管理。</span></td>
      </tr>
      <asp:HiddenField ID="HiddenUrlWrite" runat="server" />
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>后台管理认证码：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>模板方案：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td style="width: 300px;" align="right"><strong>生成首页扩展名：</strong></td>
        <td align="left">&nbsp;
          <asp:RadioButtonList ID="IndexEx" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
            <asp:ListItem Value="1">.htm</asp:ListItem>
            <asp:ListItem Value="2">.shtml</asp:ListItem>
            <asp:ListItem Value="3">.aspx</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>生成静态目录：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="txtCatalog" runat="server"></asp:TextBox>
          目录名前后不要加斜杠"/"</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>网站首页模板：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
          <input type="button" value="选择模板"
                        onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox2')+'&FilesDir=',650,480)"
                        class="button" /></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>商铺首页模板：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          <input type="button" value="选择模板"
                        onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TextBox3')+'&FilesDir=',650,480)"
                        class="button" /></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>网站上传目录：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>附件类型限制：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>可上传附件最大值：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
          KB 提示：1 KB = 1024 Byte，1
          MB = 1024 KB</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>编辑器上传图片类型限制：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TxtUpPicExt" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>可上传图片最大值：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TxtUpPicSize" runat="server"></asp:TextBox>
          KB 提示：1 KB = 1024 Byte，1
          MB = 1024 KB</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>媒体文件类型限制：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TxtUpMediaExt" runat="server"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>媒体文件最大值：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TxtUpMediaSize" runat="server"></asp:TextBox>
          KB 提示：1 KB = 1024 Byte，1
          MB = 1024 KB</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px; height: 23px;"><strong>可上传Flash等媒体文件最大值：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TxtUpFlashSize" runat="server"></asp:TextBox>
          KB 提示：1 KB = 1024 Byte，1
          MB = 1024 KB</td>
      </tr>
      <tr class="tdbg">
        <td align="right" style="width: 300px;"><strong>过滤敏感词汇：</strong></td>
        <td align="left">&nbsp;
          <asp:TextBox ID="TxtSensitivity" runat="server" Rows="6" TextMode="MultiLine" Width="300px"></asp:TextBox>
          提示：敏感词汇请用","分隔 </td>
      </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click"  CssClass="button" />
    <br />
  </div>
</form>
</body>
</html>