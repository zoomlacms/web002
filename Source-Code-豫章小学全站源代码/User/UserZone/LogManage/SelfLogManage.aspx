<%@ page language="C#" autoeventwireup="true" inherits="SelfLogManage, App_Web_i4agugph" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的日志</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt;我的日志
</div>
</div>
  <div>
    <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
  </div>
  <br />
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td rowspan="2" style="width: 110px">&nbsp;
        <asp:Image ID="Image1" runat="server" ImageUrl="../Images/blog.gif" /></td>
      <td>&nbsp;我的日志 </td>
    </tr>
    <tr>
      <td valign="top" style="height: 16px">&nbsp;<a href="CreatLog.aspx">写新日志</a> &nbsp;|&nbsp;
        <asp:LinkButton ID="lbtnManage" runat="server">我的日志</asp:LinkButton></td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="1" width="100%" bgcolor="212,208,200">
    <tr>
      <td style="width: 80%" bgcolor="#FFFFFF" valign="top"><asp:GridView ID="gvLog" runat="server" AutoGenerateColumns="false" Width="100%"
                  OnRowDataBound="gvLog_RowDataBound" GridLines="None" CellPadding="4" PageSize="2"
                  DataKeyNames="ID" AllowPaging="True" OnPageIndexChanging="gvLog_PageIndexChanging">
          <Columns>
          <asp:TemplateField>
            <ItemTemplate>
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td><hr /></td>
                </tr>
                <tr>
                  <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td><asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"LogTitle") %>'></asp:Label></td>
                        <td><a href="CreatLog.aspx?LogID=<%#DataBinder.Eval(Container.DataItem,"ID")%>">编辑</a> &nbsp;|&nbsp;
                          <asp:LinkButton ID="lbtnDelete" runat="server" OnClick="lbtnDelete_Click" OnClientClick="return confirm('确定删除吗？');">删除</asp:LinkButton></td>
                      </tr>
                      <tr>
                        <td colspan="2"><asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"CreatDate") %>'></asp:Label>
                          (分类:
                          <asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"LogTypeID") %>'></asp:Label>
                          ) </td>
                      </tr>
                      <tr>
                        <td colspan="2">&nbsp;</td>
                      </tr>
                      <tr>
                        <td colspan="2"><asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"LogContext") %>'></asp:Label></td>
                      </tr>
                      <tr>
                        <td colspan="2" style="background: 247,247,247">&nbsp;</td>
                      </tr>
                      <tr>
                        <td><a href="LogReadCriticism.aspx?LogID=<%#DataBinder.Eval(Container.DataItem,"ID")%>"> 阅读</a>(
                          <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"ReadCount") %>'></asp:Label>
                          ) </td>
                        <td><a href="LogReadCriticism.aspx?LogID=<%#DataBinder.Eval(Container.DataItem,"ID")%>"> 评论</a>(
                          <asp:Label ID="Label6" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"CriticismCount") %>'></asp:Label>
                          ) </td>
                      </tr>
                    </table></td>
                </tr>
              </table>
            </ItemTemplate>
          </asp:TemplateField>
          </Columns>
          <PagerTemplate>
            <table>
              <tr>
                <td> 第
                  <asp:Label ID="lblPageIndex" runat="server" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1  %>' />
                  页
                  共
                  <asp:Label ID="lblPageCount" runat="server" Text='<%# ((GridView)Container.Parent.Parent).PageCount  %>' />
                  页
                  <asp:LinkButton ID="btnFirst" runat="server" CausesValidation="False" CommandArgument="First"
                                      CommandName="Page" Text="首页" Enabled=" <%# ((GridView)Container.Parent.Parent).PageIndex!=0 %>" />
                  <asp:LinkButton ID="btnPrev" runat="server" CausesValidation="False" CommandArgument="Prev"
                                      CommandName="Page" Text="上一页" Enabled=" <%# ((GridView)Container.Parent.Parent).PageIndex!=0 %>" />
                  <asp:LinkButton ID="btnNext" runat="server" CausesValidation="False" CommandArgument="Next"
                                      CommandName="Page" Text="下一页" Enabled=" <%# ((GridView)Container.Parent.Parent).PageIndex!=((GridView)Container.Parent.Parent).PageCount-1 %>" />
                  <asp:LinkButton ID="btnLast" runat="server" CausesValidation="False" CommandArgument="Last"
                                      CommandName="Page" Text="尾页" Enabled=" <%# ((GridView)Container.Parent.Parent).PageIndex!=((GridView)Container.Parent.Parent).PageCount-1 %>" />
                  <asp:TextBox ID="txtNewPageIndex" runat="server" Width="20px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1  %>' />
                  <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-1"
                                      CommandName="Page" Text="GO" /></td>
              </tr>
            </table>
          </PagerTemplate>
        </asp:GridView></td>
      <td style="width: 2px" bgcolor="#FFFFFF">&nbsp;</td>
      <td valign="top" bgcolor="Silver"><table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><br />
              日志分类 </td>
          </tr>
          <tr>
            <td><asp:GridView ID="gvLogType" runat="server" AutoGenerateColumns="False" Width="100%"
                              GridLines="None" CellPadding="4" DataKeyNames="ID">
                <Columns>
                <asp:TemplateField>
                  <ItemTemplate>
                    <asp:LinkButton ID="lbtnLogTypeList" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"LogTypeName") %>'  OnClick="lbtnLogTypeList_Click"></asp:LinkButton>
                    (
                    <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"LogCount") %>'></asp:Label>
                    ) </ItemTemplate>
                </asp:TemplateField>
                </Columns>
              </asp:GridView></td>
          </tr>
          <tr>
            <td><hr /></td>
          </tr>
          <tr>
            <td> 日志存档 </td>
          </tr>
          <tr>
            <td><asp:GridView ID="gvdateLog" runat="server" AutoGenerateColumns="False" Width="100%"
                              GridLines="None" CellPadding="4">
                <Columns>
                <asp:TemplateField>
                  <ItemTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td><asp:LinkButton ID="lbtnLogDate" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"CreatDate","{0:yyyy年MM月dd日}") %>'  OnClick="lbtnLogDate_Click"></asp:LinkButton>
                          (
                          <asp:Label ID="labDateCount" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"ReadCount") %>'></asp:Label>
                          ) </td>
                      </tr>
                      <tr>
                        <td style="background: 247,247,247"></td>
                      </tr>
                    </table>
                  </ItemTemplate>
                </asp:TemplateField>
                </Columns>
              </asp:GridView></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td colspan="3" bgcolor="#FFFFFF"></td>
    </tr>
  </table>
  <div class="s_bright" id="dwindow" style="position: absolute; top: 0px; left: 0px;
      width: 60%; height: 400px; display: none; filter: alpha(opacity=70); background-color: Gray;
      padding-top: 10px; margin-top: 50px; margin-left: 100px;" runat="server">
    <div class="i_r_ftitle"> 登录会员</div>
    <div class="i_r_fbody">
      <h1> 请输入正确的用户名与密码 <font color='red'>
        <label id="LbAlert" runat="server" />
        </font> </h1>
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
          <asp:ImageButton ID="IbtnEnter" ImageUrl="../../images/login.gif" runat="server"
                      OnClick="IbtnEnter_Click" />
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