<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OtherOrder_Update_TravelMoney, App_Web_gsb2bvz2" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>修改旅游费用</title>
    <link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="border" align="center"> 
        <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" align="center">
               <tr class="tdbg">
                <td colspan="2" style="width: 13%; height: 23px" align="center">
                   修改费用
                </td>
            </tr>
            <tr class="tdbg">
                <td style="width: 13%; height: 23px" align="center">
                    旅游线:
                </td>
                <td align="center" style="width: 13%; height: 23px">
                    <asp:Label ID="hlNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 13%; height: 23px" align="center">
                    成人价格:
                </td>
                <td align="center" style="width: 13%; height: 23px">
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 13%; height: 23px" align="center">
                    儿童数量:
                </td>
                <td width="20%" align="center" style="height: 23px">
                    <asp:Label ID="lblInfo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 13%; height: 23px" align="center">
                    成人数量:
                </td>
                <td width="20%" align="center" style="height: 23px">
                    <asp:Label ID="lblStock" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td style="width: 13%; height: 23px" align="center">
                   总价:
                </td>
                <td width="20%" align="center" style="height: 23px">
                    <asp:TextBox ID="txtPrice" runat="server" ></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td colspan="2" style="width: 13%; height: 23px" align="center">
                   <asp:Button ID="update" runat="server" class="C_input" Text="修改" 
                        onclick="update_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
