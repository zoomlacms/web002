<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Nsearch_alexaRank, App_Web_rjhyr2ue" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>Alexa排名查询</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
<!-- body
{
font-size: 12px;
font-family: 宋体;
color: #333333;
background-color: #ffffff;
}
.title3
{
width: 203px;
height: 20px;
background: url('../images/titlebg3.gif');
line-height: 120%;    
padding-top: 8px;
cursor: hand;
font-size: 13;
}
.title4
{
width: 203px;
height: 20px;
background: url('../images/titlebg4.gif');
color: #ffffff;
font-weight: normal;
padding-top: 8px;
cursor: hand;
font-weight: bold;
font-size: 13;
}
.title5
{
width: 80px;
background: url('../images/titlebg2.gif');
line-height: 120%;
padding-top: 2px;
cursor: hand;
font-size: 13;
}
.title6
{
width: 80px;
background: url('../images/titlebg1.gif');
color: #ffffff;
font-weight: normal;
padding-top: 2px;
cursor: hand;
font-weight: bold;
font-size: 13;
}
.tdbg5
{
font-size: 12px;
color: #555555;
line-height: 20px;
font-family: Verdana, Arial, Helvetica, sans-serif;
background-color: #f2f2f2;
text-align: center;
border: #8897c5 1px solid;
margin: auto auto 4px;
width: 666px;
}
.titletable
{
border-top: #8897c5 1px solid;
border-left: #8897c5 1px solid;
border-right: #8897c5 1px solid;
background-color: #D8E4F4;
width: 680px;
}
-->
</style>

<script language='javascript'>
var SmalltID = 0;
function ShowSmallTabs(SmallID) {
if (SmallID != SmalltID) {
SmallTabTitle[SmalltID].className = 'title5';
SmallTabTitle[SmallID].className = 'title6';
SmallTabs[SmalltID].style.display = 'none';
SmallTabs[SmallID].style.display = '';
SmalltID = SmallID;
}
}
</script>

<script language='javascript'>
var tID = 0;
function ShowTabs(ID) {
if (ID != tID) {
if (ID == 0) { ShowSmallTabs(0); }
if (ID == 1) { ShowSmallTabs(5); }
if (ID == 2) { ShowSmallTabs(10); }
TabTitle[tID].className = 'title3';
TabTitle[ID].className = 'title4';
SecondTabs[tID].style.display = 'none';
SecondTabs[ID].style.display = '';
tID = ID;
}
}
</script>

</head>
<body>
<div class="column">
<div class="columntitle">
当前位置：功能导航 >><a href="alexaRank.aspx">Alexa排名查询</a></div>
<div class="columncontent" style="height: 25px;">
<form id="form1" runat="server">
&nbsp; 网站地址：<asp:TextBox ID="SiteUrl" class="colorblur" onfocus="this.className='colorfocus';" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="查 询" class="button" style="margin-bottom: 0px;" onclick="Button1_Click"/>
</form>
</div>
</div>
<br>
<div id="DetailControl">
<div  id="showResult" visible="false" class="column" runat="server">
<div class="columntitle">
Alexa排名查询 结果（<a href="http://www.alexa.com/data/details/traffic_details?q=&amp;url=<%=site %>"
target="_blank">Alexa官方数据</a>）</div>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<tbody>
<td style="padding-right: 5px; padding-left: 10px; padding-bottom: 5px; padding-top: 5px"
    align="middle">
    <div class="rankimg">
<table align='center' cellpadding='0' cellspacing='0' class="titletable">
<tr align='center'>                            
<td id='TabTitle' class='title4' onclick='ShowTabs(0)'>
全球排名
</td>
<td id='TabTitle' class='title3' onclick='ShowTabs(1)'>
每百万人中平均访问人数
</td>
<td id='TabTitle' class='title3' onclick='ShowTabs(2)'>
人均页面浏览量(PV)
</td>
<td>
&nbsp;
</td>
</tr>
</table>
<table align='center' cellpadding='5' cellspacing='1' class='tdbg5'>
<tr class='tdbg'>
<td height='100' valign='top'>
<table align='center' cellpadding='0' cellspacing='0'>
<tbody id='SecondTabs' style='display: '>
    <tr align='center'>
        <td id='SmallTabTitle' class='title6' onclick='ShowSmallTabs(0)'>
            3月曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(1)'>
            6月曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(2)'>
            1年曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(3)'>
            2年曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(4)'>
            总曲线
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
</tbody>
<tbody id='SecondTabs' style='display: none'>
    <tr align='center'>
        <td id='SmallTabTitle' class='title6' onclick='ShowSmallTabs(5)'>
            3月曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(6)'>
            6月曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(7)'>
            1年曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(8)'>
            2年曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(9)'>
            总曲线
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
</tbody>
<tbody id='SecondTabs' style='display: none'>
    <tr align='center'>
        <td id='SmallTabTitle' class='title6' onclick='ShowSmallTabs(10)'>
            3月曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(11)'>
            6月曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(12)'>
            1年曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(13)'>
            2年曲线
        </td>
        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(14)'>
            总曲线
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
</tbody>
</table>
<table width='100%' border='0' align='center' cellpadding='5' cellspacing='1' class='tdbg5'>
<tr class='tdbg'>
    <td height='100' valign='top'>
        <table width='95%' align='center' cellpadding='2' cellspacing='1' bgcolor='#FFFFFF'>
            <tbody id='SmallTabs' style='display: '>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=3m&z=&y=t&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=6m&z=&y=t&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=1y&z=&y=t&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=2y&z=&y=t&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=max&z=&y=t&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=3m&z=&y=r&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=6m&z=&y=r&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=1y&z=&y=r&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=2y&z=&y=r&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=max&z=&y=r&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=3m&z=&y=p&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=6m&z=&y=p&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=1y&z=&y=p&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=2y&z=&y=p&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
            <tbody id='SmallTabs' style='display: none'>
                <tr class='tdbg'>
                    <td class='tdbg5' align='right'>
                        <img border="0" src="http://traffic.alexa.com/graph?w=643&h=368&r=max&z=&y=p&u=<%=site %>">
                    </td>
                </tr>
            </tbody>
        </table>
    </td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</td>
</tr></tbody></table>
</div>
</div>
</body>
</html>
