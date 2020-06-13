<%@ page language="C#" autoeventwireup="true" inherits="UserReg_Move3, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlUserInfoTop.ascx" TagName="WebUserControlUserInfoTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>个人信息管理</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" target="_parent" href='<%=ResolveUrl("~/User/Default.aspx")%>'>会员中心</a>&gt;&gt;我的详细资料 
</div>
    <div>
      <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
      <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    </div>
    <br />
    <div class="us_topinfo" style="overflow: hidden; width:98%">
      <table border="0"  class="us_showinfo" align="center" width="100%"  cellpadding="0" cellspacing="0">
        <tr>
          <td align="right" width="17%"> 身高：</td>
          <td width="60%">&nbsp;
            <asp:TextBox ID="Staturetxt" runat="server" Width="49px" ReadOnly="true"></asp:TextBox>
            Cm</td>
          <td >&nbsp;
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="Staturetxt" ErrorMessage="请输入正确的身高信息" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> 体重：</td>
          <td>&nbsp;
            <asp:TextBox ID="Avoirtxt" runat="server" Width="48px"></asp:TextBox>
            Kg</td>
          <td>&nbsp;
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="Avoirtxt" ErrorMessage="请输入正确的体重信息" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></td>
        </tr>
        <tr>
          <td align="right"> 婚姻状况：</td>
          <td>&nbsp;
            <asp:DropDownList ID="ddlMarry" Width="177px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 宗教信仰：</td>
          <td>&nbsp;
            <asp:DropDownList ID="xinyang" Width="177px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 外貌自评：</td>
          <td><asp:CheckBoxList ID="facey" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
              <asp:ListItem Value="潇洒大方"  />
              <asp:ListItem Value="高大威武"  />
              <asp:ListItem Value="温暖亲切"  />
              <asp:ListItem Value="成熟稳重"  />
              <asp:ListItem Value="浓眉大眼"  />
              <asp:ListItem Value="阳光运动"  />
              <asp:ListItem Value="文质彬彬"  />
              <asp:ListItem Value="风度翩翩"  />
              <asp:ListItem Value="朴实无华"  />
              <asp:ListItem Value="低调内敛"  />
              <asp:ListItem Value="酷似明星"  />
              <asp:ListItem Value="个性有品"  />
            </asp:CheckBoxList>
            &nbsp;</td>
        </tr>
        <tr>
          <td align="right" style="height: 26px"> 月收入：</td>
          <td style="height: 26px">&nbsp;
            <asp:DropDownList ID="ddlMonth" Width="177px" runat="server"> </asp:DropDownList></td>
          <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 住房条件：</td>
          <td>&nbsp;
            <asp:DropDownList ID="ddlHome" Width="177px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right" style="height: 24px"> 有没有孩子：</td>
          <td style="height: 24px">&nbsp;
            <asp:DropDownList ID="ddlChild" Width="177px" runat="server"> </asp:DropDownList></td>
          <td style="height: 24px">&nbsp;</td>
        </tr>
        <tr>
          <td align="right" > 体型：</td>
          <td >&nbsp;
            <asp:DropDownList ID="ddlSomato" Width="177px" runat="server"> </asp:DropDownList></td>
          <td ></td>
        </tr>
        <tr>
          <td align="right" > 脸型：</td>
          <td >&nbsp;
            <asp:DropDownList ID="faceType" Width="177px" runat="server">
              <asp:ListItem Value="圆脸" />
              <asp:ListItem Value="方脸" />
              <asp:ListItem Value="长脸" />
              <asp:ListItem Value="娃娃脸" />
              <asp:ListItem Value="鹅蛋脸" />
              <asp:ListItem Value="瓜子脸" />
              <asp:ListItem Value="三角脸" />
              <asp:ListItem Value="菱形脸" />
              <asp:ListItem Value="国字脸" />
            </asp:DropDownList></td>
          <td ></td>
        </tr>
        <tr>
          <td align="right" > 发型：</td>
          <td >&nbsp;
            <asp:DropDownList ID="hairType" Width="177px" runat="server">
              <asp:ListItem Value="过肩长发" />
              <asp:ListItem Value="中等长度" />
              <asp:ListItem Value="短发" />
              <asp:ListItem Value="自然卷" />
              <asp:ListItem Value="光头" />
              <asp:ListItem Value="其他" />
            </asp:DropDownList></td>
          <td ></td>
        </tr>
        <tr>
          <td align="right"> 血型：</td>
          <td>&nbsp;
            <asp:DropDownList ID="ddlBlood" Width="177px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 学历：</td>
          <td>&nbsp;
            <asp:DropDownList ID="ddlBachelor" Width="177px" runat="server"> </asp:DropDownList></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"> 毕业学校：</td>
          <td>&nbsp;
            <asp:TextBox ID="Schooltxt" runat="server"  Width="170px" ></asp:TextBox></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 所学专业：</td>
          <td>&nbsp;
            <asp:DropDownList ID="Zhuan" Width="177px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 所在行业：</td>
          <td>&nbsp;
            <asp:DropDownList ID="Hang" Width="177px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 工作状态：</td>
          <td>&nbsp;
            <asp:DropDownList ID="JobStatus" Width="177px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right"> 事业前景：</td>
          <td>&nbsp;
            <asp:DropDownList ID="JobFuture" Width="177px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right" style="height: 22px"> 民族：</td>
          <td style="height: 22px">&nbsp;
            <asp:DropDownList ID="Nationtxt" Width="177px"  runat="server"> </asp:DropDownList></td>
          <td style="height: 22px"></td>
        </tr>
        <tr>
          <td align="right"> 家中排行：</td>
          <td>&nbsp;
            <asp:DropDownList ID="BrotherDropDownList"  Width="177px" runat="server"> </asp:DropDownList></td>
          <td></td>
        </tr>
        <tr>
          <td align="right" style="height: 26px"> 语言能力：</td>
          <td style="height: 26px">&nbsp;
            <asp:DropDownList ID="LanguageDropDownList" Width="177px"  runat="server"> </asp:DropDownList></td>
          <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2">&nbsp;
            <asp:Button ID="nextButton" runat="server" Text="提  交" OnClick="nextButton_Click" /></td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>