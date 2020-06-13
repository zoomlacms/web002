<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_TableStructure, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>数据库表结构查看器</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><a href="TableStructure.aspx">数据库表结构查看器</a></div>
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tr>
                <td align="right" style="width:200px; height:30px">
                    <img src="../images/help.gif" alt="数据库列表" style="border-width:0px;" title="数据库列表" /> 数据库列表：
                </td>
                <td style="width:40px">
                </td>
                <td align="left">
                    <img src="../images/help.gif" alt="表及视图列表" style="border-width:0px;"  title="表及视图列表" /> 表及视图列表：
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:ListBox ID="lbDataList" runat="server" DataValueField="name" 
                        Height="200px" DataTextField="name" AutoPostBack="True" 
                        onselectedindexchanged="lbDataList_SelectedIndexChanged"></asp:ListBox>
                    
                </td>
                <td style="width:40px">
                
                </td>
                <td align="left">
                <asp:ListBox ID="lbDataTableList" runat="server" AutoPostBack="True"  Height="200px"  DataTextField="name" DataValueField ="name"
                        onselectedindexchanged="lbDataTableList_SelectedIndexChanged"></asp:ListBox>
                </td>
            </tr>
            <tr style="background-position: center 50%; background-image: url(../images/line.gif);
                background-repeat: repeat-x">
                <td colspan="3" >
                    &nbsp;
                </td>
            </tr>
            <tr>
            <td align="center" colspan="3" valign="top" style="height:30px">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
            <td  colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="98%" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField HeaderText="字段名称"  DataField="fieldname"/>
                <asp:BoundField HeaderText="数据名称"  DataField="fieldtype"/>
                <asp:BoundField HeaderText="数据长度"  DataField="typelength"/>
                <asp:BoundField HeaderText="数据精度"  DataField="decimaldigits"/>
                <asp:BoundField HeaderText="默认值"  DataField="typedefault"/>
                <asp:TemplateField HeaderText="属性" >
                <ItemTemplate>
                <%#GetNull(Eval("IsNotNull").ToString()) %>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="字段说明"  DataField="fieldvalue"/>
                </Columns>
                </asp:GridView>

                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
