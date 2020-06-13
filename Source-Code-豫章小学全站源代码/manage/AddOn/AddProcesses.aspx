<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AdvProcesses, App_Web_pq3hbfoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>添加项目流程</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" src="../../JS/calendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
            <span>后台管理</span> &gt;&gt; <span>CRM应用</span> &gt;&gt; <a href="Projects.aspx">项目管理</a> &gt;&gt; <span>新建项目流程</span>
        </div>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tbody id="Tabs0">
            <tr  class="spacingtitle" style="height:"30px;">
			    <td align="center" colspan="2" ><asp:Label ID="lblText" runat="server"></asp:Label></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>名称：</strong><br />所属项目名称（不可修改）</td>
                <td>
                    <asp:TextBox ID="TxtProName" class="l_input" runat="server" Width="222px" 
                        Enabled="False" ReadOnly="True" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>流程名称：</strong></td>
                <td>
                    <asp:TextBox ID="TxtProcessesName" class="l_input" runat="server" Width="222px" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft">
                    <strong>简介：</strong><br />
                    该流程的相关信息和介绍
                </td>
                <td>
                    <asp:TextBox ID="TxtProcessesInfo" class="l_input" runat="server" Height="82px" 
                        TextMode="MultiLine" Width="381px" />
                </td>        
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>当前进度：</strong><br />
                    请输入0-100间的数字
                </td>
                <td>
                    <asp:TextBox ID="TxtProgress" class="l_input" runat="server" Width="55px" 
                        Height="17px" />%<font color="red">&nbsp;&nbsp;&nbsp;还剩下<asp:Label 
                        ID="Lbl" runat="server" Text=""></asp:Label>%</font><asp:RangeValidator ID="RV" runat="server" ControlToValidate="TxtProgress" Display="Dynamic" MinimumValue="0" Type="Integer">,总进度不可超过100%</asp:RangeValidator></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>完成时间：</strong><br />
                    请选择该流程完成时间
                </td>
                <td>
                    <asp:TextBox ID="TxtTime" class="l_input" runat="server" Width="222px" onfocus="calendar()"/>
                    (请选择时间)</td>
            </tr>
        </table>
        <div class="clearbox"></div>
        <div style=" text-align:center; width:792px"><asp:Button ID="BtnCommit" runat="server" Text="提交"  class="C_input" onclick="Button1_Click"/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnBack" runat="server" Text="返回" class="C_input" 
                onclick="Button2_Click" CausesValidation="False" />
        </div>
    </form>
</body>
</html>
