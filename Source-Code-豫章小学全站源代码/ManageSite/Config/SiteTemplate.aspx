<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_SiteTemplate, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript" language="javascript">
    function Nest() {
        l = document.getElementsByName("selectRad");
        s = document.getElementsByName("RadioButtonList1");

        if (s[1].checked&&s[1].value == 1) {
            for (i = 0; i < l.length; i++) {
                if (l[i].checked) {
                    location.href = "AddSite.aspx?Tid=" + l[i].value;
                }
            }
        }
        else {
            location.href = "AddSite.aspx";
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >><a href="SiteTemplate.aspx">新建站点向导</a></div>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
      <tr style="height: 60px">
        <td align="left" colspan="2"> 选择站点模板 <br />
          <br />
          欢迎使用新建站点向导，您可以选择使用站点模板作为新建站点的基础。 </td>
      </tr>
      <tr style="height: 60px">
        <td align="center" style="width: 120px"> 是否使用站点模板： </td>
        <td align="left"><asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
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
      <tr style="background-position: center 50%; height:30px; background-image: url(../Images/line.gif);  background-repeat: repeat-x">
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center" style="height: 20px" valign="middle"><input id="Button1" type="button" class="button" value="下一步" style="width:80px" onclick="Nest()" /></td>
      </tr>
    </table>
    <br />
  </div>
</form>
</body>
</html>