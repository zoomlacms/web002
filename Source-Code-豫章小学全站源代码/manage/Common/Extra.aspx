<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_Extra, App_Web_krvwsitc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title></title>

        <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function onch() {
        if (parseInt(document.getElementById("TextBox2").value) >= 0) {
            document.getElementById("Label8").innerText = document.getElementById("TextBox2").value;
        } else {
        document.getElementById("Label8").innerText = "("+document.getElementById("TextBox2").value+")";
        }
        if (parseInt(document.getElementById("TextBox1").value) >= 0) {
            document.getElementById("Label9").innerText = document.getElementById("TextBox1").value;
        } else {
            document.getElementById("Label9").innerText = "(" + document.getElementById("TextBox1").value + ")";
        }
        document.getElementById("Label5").innerText = document.getElementById("Label3").value;
        document.getElementById("Label6").innerText = (Number(document.getElementById("TextBox2").value) +
                                                                        Number(document.getElementById("TextBox1").value) +
                                                                         Number(document.getElementById("Label5").innerText)).toFixed(2); 
                                                                     //    Number(document.getElementById("Label4").innerText)

        document.getElementById("txtExtra").value = Number(document.getElementById("Label6").innerText);  //- Number(document.getElementById("Label2").innerText);
    }
</script>
    <style type="text/css">
        .style1
        {
            width: 445px;
        }
        .style2
        {
            width: 830px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tr class="title">
    <td colspan="2" align="center"  >
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg">
    <td class="style1">&nbsp;&nbsp;项目名称</td>
    <td class="style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 费用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注</td>
    </tr>
    <tr class="tdbg" style="display:none">
    <td class="style1"><strong >商品合计：</strong ></td>
    <td class="style2">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品总金额</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="style1"><strong >商品差额：</strong ></td>
    <td class="style2"><asp:TextBox ID="TextBox2" class="l_input" runat="server"  Text="0" onkeyup=" value=value.replace(/[^-|+|.|0-9]/g,'')" onblur="onch()"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" class="l_input" runat="server" Width="176px" Text="货物：2799加国内运费20元"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="style1"><strong >代购服务费：</strong ></td>
    <td class="style2"><asp:TextBox ID="TextBox1" class="l_input" runat="server"  Text="0" onkeyup="if(isNaN(value))execCommand('undo')" onblur="onch()"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="style1"><strong >国际运费：</strong ></td>
    <td class="style2"><asp:TextBox ID="Label3" class="l_input" runat="server" onkeyup="if(isNaN(value))execCommand('undo')" onblur="onch()"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" class="l_input" runat="server"  Width="170px" Text="XX重量加XX费用"></asp:TextBox>
           
&nbsp;</td>
    </tr>
    <tr class="tdbg" style="display:none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="style1"><strong >合计应支付金额：</strong ></td>
    <td class="style2"><asp:Label ID="Label4" runat="server" Text=""></asp:Label> + <asp:Label ID="Label5" runat="server" Text=""></asp:Label> +<asp:Label ID="Label8" runat="server" Text=""></asp:Label>+<asp:Label ID="Label9" runat="server" Text=""></asp:Label>= <asp:Label ID="Label6" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 实际应支付</td>
    </tr>
    <tr class="tdbg" style="display:none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="style1"><strong >已支付金额：</strong ></td>
    <td class="style2"><asp:Label ID="Label7" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        已支付</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="style1"><strong >应补金额：</strong></td>
    <td class="style2">
        <asp:TextBox ID="txtExtra" runat="server"  Text="0" onkeyup="if(isNaN(value))execCommand('undo')"  class="l_input"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：人民币价格</td>
    </tr>
    
    <tr class="tdbg">
    <td colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" Text="提 交" class="C_input" onclick="Button1_Click" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
