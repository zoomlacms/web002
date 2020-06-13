<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_VideoHouseEdit, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>视频房间申请</title>
    <link href="../CSS/main.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    
    <style type="text/css">
        .style1
        {
            width: 306px;
            padding: 2px;
            background: #e0f7e5;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="6" class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>房间名称：</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:TextBox ID="txtHouseName" runat="server" Width="267px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFHouseName" runat="server" 
                    ControlToValidate="txtHouseName" ErrorMessage="房间名称不能为空"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>职&nbsp;&nbsp;位：</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:DropDownList ID="Position" runat="server" Width="130px" 
                    DataTextField="PositionName" DataValueField="PositionID"></asp:DropDownList>
            </td>           
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>房间人数：</strong>
            </td>
            <td valign="middle" colspan="5">
                <asp:DropDownList ID="dlHousePersonNum" runat="server" Width="130px">
                <asp:ListItem Value="5">1~5人</asp:ListItem>
                <asp:ListItem Value="10">6~10人</asp:ListItem>
                <asp:ListItem Value="30">11~30人</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr class="tdbgbottom">
            <td colspan="6">
                <asp:Button ID="EBtnSubmit" Text="申请" runat="server" 
                    onclick="EBtnSubmit_Click"/>
                &nbsp;
                <%--<input name="Cancel" type="button" id="Cancel" value="取消" onclick="window.location.href='#;" />--%>
                &nbsp;                
            </td>
        </tr>      
    </table>
    </div>
    </form>
</body>
</html>