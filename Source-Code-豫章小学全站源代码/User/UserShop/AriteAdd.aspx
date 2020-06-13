<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_AriteAdd, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/JavaScript">
        var tID=0;
        var arrTabTitle = new Array("TabTitle0","TabTitle1","TabTitle2","TabTitle3","TabTitle4","TabTitle5","TabTitle6","TabTitle7");
        var arrTabs = new Array("Tabs0","Tabs1","Tabs2","Tabs3","Tabs4","Tabs5","Tabs6","Tabs7");
        function ShowTabs(ID)
        {
            if(ID!=tID)
            {
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
                document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
                document.getElementById(arrTabs[ID].toString()).style.display = "";
                tID=ID;
            }
        }
        function SelectProducer()
        {
            window.open('Producerlist.aspx','','width=600,height=450,resizable=0,scrollbars=yes');
        }
        
        function SelectBrand()
        {
            window.open('Brandlist.aspx?producer='+ document.getElementById('Producer').value +'','','width=600,height=450,resizable=0,scrollbars=yes');
        }
    </script>

    <script type="text/javascript">        
function SetDisabled(checked)      
{
        document.getElementById('ProCode').disabled =checked;      
}

function Setsmallimgs(checked)      
{
        //if (checked==true){
        //document.getElementById('addsmallimg').style.display = "none";
        //}else{
        //document.getElementById('addsmallimg').style.display = "";
        //}
} 
function show(checked)
{

if (checked.value==1){
document.getElementById("pifaji").style.display="";
}else
{
document.getElementById("pifaji").style.display="none";
}
}

function showpf()
{
    if(document.getElementById("Wholesales_0").checked==true)
    {
    document.getElementById("pifaji").style.display="";
    }else{
    document.getElementById("pifaji").style.display="none";
    }
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="s_bright">
            <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
            <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
            <div class="us_topinfo" style="margin-top: 10px;">
               <a href="ProductList.aspx">商品管理</a> | <a href="ProductAdd.aspx">添加商品</a>|<a href="AriteAdd.aspx">添加文章</a> 
               </div>
            
            <asp:Panel ID="Panel1" runat="server" Width="100%" class="us_topinfo" style="margin-top: 10px;">
            <table width="100%" cellpadding="2" cellspacing="1" border="0" style="margin-top: 10px;">
                <tr>
                     <td height="24" align="center" style="width: 33%">
                        <asp:ListBox ID="class0" runat="server" Height="280px" Width="180px" AutoPostBack="True">
                        </asp:ListBox></td>
                        
                    <td height="24" align="center" style="width: 33%">
                        <asp:ListBox ID="class1" runat="server" Height="280px" Width="180px" AutoPostBack="True">
                        </asp:ListBox></td>
                    <td height="24" align="center" width="33%">
                        <asp:ListBox ID="class2" runat="server" Height="280px" Width="180px" AutoPostBack="True">
                        </asp:ListBox></td>
                    <td height="24" align="center" width="33%">
                        <asp:ListBox ID="class3" runat="server" Height="280px" Width="180px" AutoPostBack="True">
                        </asp:ListBox></td>
                </tr>
                <tr>
                    <td height="24" colspan="4" align="center">
                        <asp:Label ID="Label3" runat="server" ></asp:Label></td>
                </tr>
</table>

            </asp:Panel>
            </div>
    </form>
</body>
</html>