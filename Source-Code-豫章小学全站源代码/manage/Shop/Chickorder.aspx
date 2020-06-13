<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Chickorder, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>客户签收单</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../../js/Dialog.js"></script>
<style>
    table
    {
    	 border-bottom:Black 1px solid;
    	 border-left:Black 1px solid;
    	 border-right:Black 1px solid;    	
    	 border-top:Black 1px solid;
    	 
    }  
</style>
<script language="javascript"> 
    function preview()
    {
    location.href="Chickorder.aspx?id="+<%=Request.QueryString["id"] %>+"&menu=print";   
    pageload();    
    }
   
function pageload()
{
<%
if(Request.QueryString["menu"]=="print") 
{
%>
bdhtml=window.document.body.innerHTML;
sprnstr="<!--startprint-->";
eprnstr="<!--endprint-->";
prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17);
prnhtml=prnhtml.substring(0);
window.document.body.innerHTML=prnhtml;
window.print();
<%
} 
%>
}
function show(){
var fahuo = document.getElementById("fahuo").style;
if(fahuo.display==""){
fahuo.display ="none";
}else{
fahuo.display="";
}
}          
function opentitle(url, title) {
var diag = new Dialog();
diag.Width = 600;
diag.Height = 400;
diag.Title = title;
diag.URL = url;
diag.show();
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="UserOrderinfo.aspx">店铺订单</a>
        &gt;&gt; <span>订单详情</span>
    </div>
    <div class="clearbox">
    </div>
    <br />
    
    <!--startprint-->
 <table width="100%" cellspacing="1" cellpadding="2"  style="background-color: white;">
    <tbody id="Tbody1">
        <tr class="tdbg">
            <td colspan="6" align="center" class="title"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
            <td align="center" class="style15">订单号：</td><td align="left" class="style1"><asp:Label ID="dingdanID" runat="server" Text=""></asp:Label></td>
            <td align="center" class="style2">收货人姓名:</td>
            <td width="20%" align="center" style="height: 23px"><asp:Label ID="Reuser" runat="server" Text=""></asp:Label>&nbsp;</td>
           <td align="center" class="style3">要求配送日期:</td>
            <td align="left" style="width: 13%; height: 23px"><asp:Label ID="addtime" runat="server"></asp:Label></td>              
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
            <td align="center" class="style15">收货人电话:</td>
            <td align="left" class="style1">                                
            <asp:Label ID="Phone" runat="server" Text=""></asp:Label></td>
                <td align="center" class="style2">收货人手机:</td>
                <td width="20%" align="center" style="height: 23px"><asp:Label ID="Mobile" runat="server" Text=""></asp:Label></td>
                <td align="center" class="style3">
                    送货时段:</td>
            <td align="left" style="width: 13%; height: 23px">
                <asp:Label ID="Deliverytime" runat="server" Text=""></asp:Label>
            </td>              
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style16">
                收货人地址:
            </td>               
            <td colspan="5">
                <asp:Label ID="Jiedao" runat="server" Text=""></asp:Label></td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style16">
                配送商品:</td>               
            <td colspan="5">
                <br />
                <br />
                <br />
            </td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style16">
                其它要求:</td>               
            <td colspan="5">
                <br />
                <br />
                <br />
            </td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style16">
                <br />
                留言:<br />
                <br />
                </td>               
            <td colspan="5"><asp:Label ID="Ordermessage" runat="server" Text=""></asp:Label></td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style16">署名:</td>               
            <td colspan="5"><asp:Label ID="Reusers" runat="server" Text=""></asp:Label></td>               
        </tr>
    </tbody>
</table>

<br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
………………请配送员沿此线剪下，此线以上部分交给客户，以下部分留存。………………
<br /><br />


<table width="100%" cellspacing="1" cellpadding="2"  style="background-color: white;">
    <tbody id="Tbody2">
        <tr class="tdbg">
            <td colspan="2" align="center" class="title"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
            <td align="center" class="style13">收货人对货品反馈意见：</td><td align="left" class="style1">
            <asp:CheckBox ID="CheckBox1" runat="server"  Text="很满意"/>
            <asp:CheckBox ID="CheckBox2" runat="server"  Text="满意" />
            <asp:CheckBox ID="CheckBox3" runat="server"  Text="不满意" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style14">
                <span>收货人签名:</span></td>               
            <td>
                <br />
                <br />
                <br />
            </td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style14">
                <span>签收日期</span>:</td>               
            <td>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;<span lang="EN-US">______</span><span>年</span><span lang="EN-US">___ </span>
                <span>月</span><span lang="EN-US">____</span><span>日</span>&nbsp;<br />
            </td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style11">
                <span>请留下您的宝贵意见</span>:</td>               
            <td class="style12">
                <br />
                <br />
                <br />
                <br />
            </td>               
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td  align="center" class="style14" colspan="2">
                <asp:Button ID="Button1" class="C_input"  style="width:100px;" runat="server" Text="打印签收单" Width="100px" OnClientClick="preview();return false;" /></td>               
        </tr>
    </tbody>
</table>
<div style="width:100%;">
    <br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>服务电话：0722-3812976                    手机：13597832028
    请各分店、配送店注意如下内容：<br />
    1、认真看清订单详情，严格按订单要求去做；<br />
    2、一定要选用新鲜花材进行包装，花材不得有黑边及打蔫的现象,若因花材原因导致客户投诉，所造成的损失由配送店承担。<br />
    3、免费贺卡及祝福不要忘记！切记！！！配送人员礼仪着装、礼貌待人，找不到地方时可以电话联系收花人，尽量不要让收花人出来签收，注意服务质量!<br />
    4、有条件的可以将包好的花束拍照，以防客户投诉，花送到后一定要让收花人签字，并保留客户签名的签收单至少15天；<br />
    5、路程远的订单，配送店必须派店员亲自送，不得请人代送，更不得请客车司机代送。<br />
    6、如有对订单的任何疑问或订单执行时遇到任何问题，一定要跟及时我们取得联系，送到后请第一时间发短信通知：13597832028（订单号+本人签收或别人代收+送到时间）。<br />
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>期待着与您建立长期、稳定的合作关系，祝我们合作愉快!<br />
    <br />
</div>  
</form>
</body>
</html>
