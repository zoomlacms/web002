<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_SiteInfo, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>网站信息配置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script type="text/javascript">
        var tID = 0;
        var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7", "TabTitle8", "TabTitle9");
        var arrTabs = new Array("Div0", "Div1", "Div2", "Div3", "Div4", "Div5", "Div6", "Div7", "Div8", "Div9");
        window.onload = function () {
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
            try {
                parent.document.getElementById("main_right").height = document.body.offsetHeight;
            } catch (Error) { }
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
      <div class="r_navigation">
        <div class="columntitle"> 当前位置：功能导航 >> 网站配置</div>
      </div>
      <div class="clearbox"></div>
      <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px"><strong>网站名称：</strong></td>
          <td><asp:TextBox ID="TextBox1" runat="server" Width="210px"></asp:TextBox></td>
        </tr>
        <tr  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px"><strong>网站标题：</strong></td>
          <td><asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox></td>
        </tr>
        <tr  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px"><strong>网站地址：</strong></td>
          <td><asp:TextBox ID="TextBox3" runat="server" Width="210px"></asp:TextBox></td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td class="tdbgleft" style="width: 200px; "><strong>LOGO地址：</strong></td>
          <td><asp:TextBox ID="TextBox4" runat="server" Width="210px" ></asp:TextBox></td>
        </tr>
        <tr  align="left">
          <td style="width: 200px; height: 23px;"><strong>Banner地址：</strong></td>
          <td><asp:TextBox ID="TextBox5" runat="server" Width="210px" ></asp:TextBox></td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td><strong>站长姓名：</strong></td>
          <td><asp:TextBox ID="TextBox6" runat="server" Width="210px"></asp:TextBox></td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px"><strong>站长信箱：</strong></td>
          <td><asp:TextBox ID="TextBox7" runat="server" Width="210px"></asp:TextBox></td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px"><strong>网站META关键词：</strong></td>
          <td><asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Rows="5" Columns="60"></asp:TextBox></td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px"><strong>网站META网页描述：</strong></td>
          <td><asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="5" Columns="60"></asp:TextBox></td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" align="left">
          <td style="width: 200px; height: 68px;"><strong>版权信息：</strong></td>
          <td><asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Rows="5" Columns="60" align="left"></asp:TextBox></td>
        </tr>
      </table>
      <br />
      <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" CssClass="button"  />
      <br />
    </form>
</body>
</html>