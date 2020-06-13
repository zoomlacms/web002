<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_AddSite, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加站点</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
      <div class="column">
        <div class="columntitle"> 当前位置：功能导航 >><a href="AddSite.aspx">新建站点向导</a></div>
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
          <tr style="height: 60px">
            <td align="left" colspan="2"> 选择站点模板 <br />
              <br />
              欢迎使用新建站点向导，您可以选择使用站点模板作为新建站点的基础。 </td>
          </tr>
          <tr style="height: 60px">
            <td align="center" style="width: 120px"> 是否使用站点模板： </td>
            <td align="left"><asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                <asp:ListItem Value="2">否</asp:ListItem>
              </asp:RadioButtonList></td>
          </tr>
            <tr>
            <td align="left" colspan="2">
          <table width="100%" border="0" cellpadding="0" cellspacing="1" id="tableFile" runat="server">
            <tr align="center" style="height: 25px; background-color: #F0F6FC">
              <td width="10%"> 选择 </td>
              <td width="45%"> 名称 </td>
              <td width="10%"> 大小 </td>
              <td width="10%"> 类型 </td>
              <td width="20%"> 修改时间 </td>
            </tr>
              <tr>
            
            <td colspan="5">
            <asp:Repeater ID="repFile" runat="server">
              <ItemTemplate>
                  <tr class="tdbg">
                  <td align="center"><input type="radio" name="selectRad" value='<%=themeID++ %>' /></td>
                  <td align="left"><img alt="" src=' <%# System.Convert.ToInt32(Eval("type")) == 1 ? "../../App_Themes/AdminDefaultTheme/Images/Node/closefolder.gif" :"../../App_Themes/AdminDefaultTheme/Images/Node/singlepage.gif" %>' /> <%# Eval("Name") %></td>
                  <td align="center"><%# GetSize(Eval("size").ToString()) %></td>
                  <td align="center"><asp:HiddenField ID="HdnFileType" Value='<%#Eval("type") %>' runat="server" />
                    <%# System.Convert.ToInt32(Eval("type")) == 1 ? "文件夹" : Eval("content_type").ToString() + "文件" %></td>
                  <td align="center"><%#Eval("lastWriteTime")%></td>
                </tr>
              </ItemTemplate>
            </asp:Repeater>
              </td>
            
              </tr>
            
          </table>
            </td>
            </tr>
          
          <tr style="background-position: center 50%; height: 30px; background-image: url(../Images/line.gif);  background-repeat: repeat-x">
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center" style="height: 20px" valign="middle"><asp:Button ID="btnNext1" runat="server" CssClass="button" Text="下一步"  onclick="btnNext1_Click" /></td>
          </tr>
        </table>
        <br />
      </div>
    </asp:View>
    <asp:View ID="View2" runat="server">
      <div class="column">
        <div class="columntitle"> <%=type%>站点</div>
        <table width="99%" cellspacing="1" cellpadding="0">
          <tr class="tdbg">
            <td align="right" style="width: 200px"><strong>上级站点：</strong></td>
            <td align="left"><asp:DropDownList ID="ddlSite" runat="server" DataValueField="NodeID" DataTextField="NodeName"> </asp:DropDownList></td>
          </tr>
          <tr class="tdbg">
            <td align="right" style="width: 200px"><strong>站点名称：</strong></td>
            <td align="left"><asp:TextBox ID="txtSite" runat="server" Width="210px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSite" ErrorMessage="请输入站点名称" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
          </tr>
          <tr class="tdbg">
            <td align="right" style="width: 200px"><strong>存放文件夹名：</strong></td>
            <td align="left"><asp:TextBox ID="txtFileName" runat="server" Width="210px"  ontextchanged="txtFileName_TextChanged"></asp:TextBox>
              <asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFileName"  ErrorMessage="请输入存放的文件夹名称"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
            <td align="right" style="width: 200px"><strong>管理员：</strong></td>
            <td align="left"><asp:RadioButtonList ID="rblType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblType_SelectedIndexChanged"  RepeatDirection="Horizontal">
                <asp:ListItem Value="0" Selected="True">暂不需要管理员</asp:ListItem>
                <asp:ListItem Value="1" >创建新管理员</asp:ListItem>
                <asp:ListItem Value="2">设置现有管理员</asp:ListItem>
              </asp:RadioButtonList></td>
          </tr>
          <tr class="tdbg" id="addAdmin" runat="server" visible="false">
            <td align="right" valign="top" style="width: 200px"><strong>创建频道管理员：</strong></td>
            <td align="left"> 管理员用户名：
              <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="不能包含特殊字符，如@，#，$，%，^，&，*，(，)，'，?，{，}，[，]，;，:等" ValidationExpression="^[^@#$%^&*()'?{}\[\];:]*$" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="管理员名必须大于等于4个字符并且不能超过20个字符！" ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5]{4,20}$" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
              <br />
              管&nbsp;理&nbsp;员&nbsp;密&nbsp;码：
              <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
              <br />
              确&nbsp;&nbsp;认&nbsp;&nbsp;密&nbsp;&nbsp;码：&nbsp;
              <asp:TextBox ID="txtPwd2" runat="server"></asp:TextBox>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                    ControlToValidate="txtPwd2" ErrorMessage="密码与初始密码不一致"></asp:CompareValidator>
              <br /></td>
          </tr>
          <tr class="tdbg" id="ChooseAdmin" runat="server" visible="false">
            <td align="right" style="width: 200px"><strong>选择管理员：</strong></td>
            <td align="left"><asp:DropDownList ID="ddlAdminList" runat="server"> </asp:DropDownList></td>
          </tr>
          <tr class="tdbg">
            <td align="center" colspan="2"><asp:Button ID="btnNext2" runat="server" Text="保 存" CssClass="button"  onclick="btnNext2_Click"  /></td>
          </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"   ShowMessageBox="True" ShowSummary="False" />
      </div>
    </asp:View>
  </asp:MultiView>
</form>
</body>
</html>