<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Common_Contribute, App_Web_1vl4rnat" contenttype="text/html" responseencoding="gb2312" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投稿所选内容</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript">
    function onChanged() {     
            document.getElementById("span_1").style.display="block";  
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> <a href="Contribute.aspx">投稿所选内容</a></div>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td style="width:30%" align="right">
                    <strong> 选择站点：</strong>
                </td>
                <td align="left">
                <div style="float:left; width:26%">
                
                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                    </asp:DropDownList>
                      
                 </div>
                 <div style="float:left; width:35%">
                 <span id="span_1" style="display:none;text-align: left;color:Red">*此频道无匹配的栏目</span>
                 </div>
                </td>

            </tr>
            <tr>
                <td align="right">
                   <strong> 投稿到：</strong>
                </td>
                <td align="left">
                    <asp:ListBox ID="ListBox1" runat="server" Width="250px" Height="300px" 
                        SelectionMode="Multiple"  DataTextField="NodeName" DataValueField ="NodeID"
                        onselectedindexchanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height:40px">
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="确定" 
                        onclick="Button1_Click" />&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="button" Text="取消" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
