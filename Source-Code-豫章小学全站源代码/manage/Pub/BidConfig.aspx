<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_BidConfig, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>竞标管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>互动管理</span> &gt;&gt; <span><a href="BidConfig.aspx">竞标管理</a></span> &gt;&gt; <span><a href="BidConfig.aspx">竞标参数设置</a></span> </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 30%;">
               达标者分成：</td>
            <td>
                <asp:TextBox ID="Compliance" runat="server" Width="71px" class="l_input" />
            &nbsp;%</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                中标者分成：</td>
            <td>
                <asp:TextBox ID="Successful" runat="server" Width="71px" class="l_input" />
            &nbsp;%</td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 30%;" align="right">
                网站系统分成：</td>
            <td>
                <asp:TextBox ID="Website" runat="server" Width="71px" class="l_input" />
            &nbsp;%</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" onclick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="2" style="height: 30px;">
          <b>说明：</b>标签查询用表名：[ZL_Bid]<br />   “达标者分成”对应的字段名为：---->Compliance<br />   “中标者”对应的字段名为：-------->Successful<br />   “网站商分成”对应的字段名为：---->Website
            </td>
        </tr>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="2" style="height: 30px;">
          <b>文件调用说明：</b><br />
          设置为<b>达标者</b>的方法：SetBid.aspx?menu=Comp&Userid=达标者用户ID&ContentID=内容ID<br />
          设置为<b>中标者</b>的方法：SetBid.aspx?menu=Succ&Userid=中标者用户ID&ContentID=内容ID<br />
          <br />
          <b>取消</b>设置为<b>达标者</b>的方法：SetBid.aspx?menu=NoComp&Userid=达标者用户ID&ContentID=内容ID<br />
          <b>取消</b>设置为<b>中标者</b>的方法：SetBid.aspx?menu=NoSucc&Userid=中标者用户ID&ContentID=内容ID<br />
          <br />
          <b>结算</b>方法：SetBid.aspx?menu=Sett&ContentID=内容ID<br />
          
            </td>
        </tr>
    </table>
     <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="2" style="height: 30px;">
          <b>内容表字段调用说明：</b>表名[ZL_CommonModel]<br />
          IsBid------------------>是否为竞标类内容；[2--结算][1--是][0--否]<br />
          BidMoney--------------->中标价格<br />
          ComplianceUserList----->达标用户ID列表，用逗号隔开<br />
          SuccessfulUserID------->中标用户ID，此只有一个ID<br />
          
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
