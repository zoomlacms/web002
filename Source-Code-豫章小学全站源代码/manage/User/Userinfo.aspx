<%@ page language="C#" autoeventwireup="true" inherits="manage_User_Userinfo, App_Web_tskucmgh" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../Common/Common.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript" language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2"<%=tabTitles %>);
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2"<%=tabs %>);
    function ShowTabss(SID) {
        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "";
            tID = SID;
        }
    }   
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="UserManage.aspx">会员管理</a>&gt;&gt;会员信息</div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" id="bindset">
    <tr align="center">
      <td colspan="4" class="spacingtitle"><strong>查看的信息</strong></td>
    </tr>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr align="center">
        <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)">基本信息</td>
        <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)">联系信息</td>
        <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)">其他信息</td>
        <asp:Literal ID="models" runat="server"></asp:Literal>
        <td>&nbsp;</td>
      </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
      <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;"><table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
            <tbody id="Tabs0">
              <asp:Repeater ID="Repeater1" runat="server" 
                        onitemcommand="Repeater1_ItemCommand">
                <ItemTemplate>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 用户名： </td>
                    <td style="width: 35%; height: 25px;" align="left"><%#Eval("UserName") %> &nbsp;
                      <asp:LinkButton ID="btnlogin" runat="server" Text=">>作为此会员登录" CommandName="useLogin" CommandArgument='<%#Eval("UserId") %>' />
                      (在新窗口中打开) </td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right">用户虚拟币：</td>
                    <td  style="width: 35%" align="left"><%#Eval("DummyPurse")%></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> Email： </td>
                    <td style="width: 35%" align="left"><%#Eval("Email")%></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right">用户信誉值：</td>
                    <td  style="width: 35%" align="left"><%#Eval("UserCreit")%></td>
                  </tr>
                  <tr>
                    <td colspan="4"><table width="100%" border="0" cellpadding="0" cellspacing="1">
                        <tr class="tdbg">
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 剩余资金： </td>
                          <td style="width: 35%; height: 22px" align="left"><%#Eval("Purse") %></td>
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 用户积分： </td>
                          <td style="width: 35%; height: 22px" align="left"><%#Eval("UserExp") %></td>
                        </tr>
                        <tr class="tdbg">
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 提示问题答案： </td>
                          <td style="width: 35%; height: 22px" align="left"><span style="color: red"></span></td>
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 所属会员组： </td>
                          <td style="width: 35%; height: 22px" align="left"><%# GetGroupName(Eval("GroupID","{0}")) %></td>
                        </tr>
                        <tr class="tdbg">
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 点券： </td>
                          <td style="width: 35%; height: 22px" align="left"><%#Eval("UserPoint")%></td>
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 卖家积分： </td>
                          <td style="width: 35%; height: 22px" align="left"><%#Eval("boffExp") %></td>
                        </tr>
                        <tr class="tdbg">
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 消费积分： </td>
                          <td style="width: 35%; height: 22px" align="left"><%#Eval("ConsumeExp")%></td>
                          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 有效期截止时间： </td>
                          <td style="width: 35%; height: 22px" align="left"><%#Eval("DeadLine","{0}") %></td>
                        </tr>
                        <tr class="tdbg">
                         <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 已发布文章数(统计数)： </td>
                         <td style="width: 35%; height: 22px" align="left">共计<%=GetCount()%>篇</td>
                         <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 云盘空间(占用数)： </td>
                         <td style="width: 35%; height: 22px" align="left"><%=GetCloud()%>
                             <asp:LinkButton ID="CloudManage" runat="server" OnClick="CloudManage_Click" ForeColor="Red" >&nbsp;[<%=cloud()%>]</asp:LinkButton>
                         </td>
                        </tr>
                      </table></td>
                  </tr>
                </ItemTemplate>
              </asp:Repeater>
            </tbody>
            <tbody id="Tabs1" style="display: none">
              <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 真实姓名： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("TrueName") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 性别： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#(Eval("UserSex","{0}")=="True") ? "男" : "女" %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 出生日期： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Getbir(DataBinder.Eval(Container.DataItem,"BirthDay").ToString())%></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 办公电话： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("OfficePhone")%></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 家庭电话： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("HomePhone")%></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 传真： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("Fax")%></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 手机号码： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("Mobile") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 小灵通： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("PHS") %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 联系地址： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("Address") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 邮政编码： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("ZipCode") %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 身份证号码： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("IDCard") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 个人主页： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("HomePage") %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> QQ号码： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("QQ") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> ICQ号码： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("ICQ")%></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> MSN账号： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("MSN") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 雅虎通账号： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("Yahoo") %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> UC账号： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("UC") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 26px;" align="right"> 头像地址： </td>
                    <td style="width: 35%; height: 26px;" align="left"><%#Eval("UserFace") %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 头像宽度： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("FaceWidth") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 头像高度： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("FaceHeight") %></td>
                  </tr>
                  <tr class="tdbg">
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 签名档： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#Eval("Sign") %></td>
                    <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 隐私设定： </td>
                    <td style="width: 35%; height: 22px" align="left"><%#GetPrivat(Eval("Privating", "{0}"))%></td>
                  </tr>
                </ItemTemplate>
              </asp:Repeater>
            </tbody>
            <tbody id="Tabs2" style="display: none">
              <tr>
                <td colspan="4"><table width="100%" border="0" cellpadding="0" cellspacing="1">
                    <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
                  </table></td>
              </tr>
            </tbody>
            <asp:Literal ID="ltlTab" runat="server"></asp:Literal>
          </table></td>
      </tr>
    </table>
  </table>
  <br />
  <center>
    <asp:Button ID="btnmo" runat="server" Text="资金管理"  class="C_input" onclick="btnmo_Click"/>
    &nbsp;
    <asp:Button ID="Button4" runat="server" Text="积分管理" class="C_input" onclick="Button4_Click" />
    &nbsp;
    <asp:Button ID="Button7" runat="server" Text="点劵管理" class="C_input"  onclick="Button7_Click" />
    &nbsp;
    <asp:Button ID="Button6" runat="server" Text="虚拟币管理" class="C_input" onclick="Button6_Click" />
    &nbsp;
    <asp:Button ID="Button5" runat="server" Text="信誉值管理"  class="C_input" onclick="Button5_Click"/>
    &nbsp;
    <asp:Button ID="Button2" runat="server" Text="修改信息" OnClick="Button2_Click" class="C_input" />
    &nbsp;
    <asp:Button ID="Button3" runat="server" Text="升级为客户" class="C_input" onclick="Button3_Click" />
    &nbsp
    <asp:Button ID="Button1" runat="server" Text="返回列表" OnClick="Button1_Click" class="C_input" />
    &nbsp
    <input id="Button8" type="button"  value="返回上级" onclick="JavaScript:history.back(-1);" class="C_input" />
  </center>
</form>
</body>
</html>