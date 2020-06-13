<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_TableStructureDataView, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>数据库查询</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><a href="TableStructureDataView.aspx">数据库查询</a></div>
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td>
                    <table>
                        <tr>
                            <td valign="middle" align="right" style="width:250px" rowspan="2">
                                数据库查询字符串：
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtDataString" TextMode="MultiLine" Width="400px" Height="80px"
                                    runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="margin-left: 200px">
                                <asp:Button ID="Button1" runat="server" Text="查   询" CssClass="button" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="background-position: center 50%; background-image: url(../images/line.gif);
                background-repeat: repeat-x">
                <td >
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <font color="red">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></font>
                </td>
            </tr>
            <tr>
                <td align="center" >
                    <asp:GridView Width="98%" ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 10px">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
