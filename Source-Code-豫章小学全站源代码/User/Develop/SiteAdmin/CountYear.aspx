<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_CountYear, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>月访问统计</title>
<link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Counter.js" type="text/javascript"></script>
<script src="/JS/jquery.js" type="text/javascript"></script>
<style type="text/css">
*{margin:0px;padding:0px; font-size:12px}
body{height:auto}
.clear{ clear:both;}
#webBorder{ width:980px; margin:auto;clear:both; margin-top:25px;}
#title_L{ float:left;width:150px; height:20px; line-height:20px; text-align:center; border:1px #000 solid; border-bottom:none;}
#title_R{ float:left;width:828px; height:20px;border-bottom:1px #000 solid;}
#main{height:500px;border:1px #000 solid; border-top:none; padding-top:10px;}
</style>
</head>
<body>
<div id="webBorder">
<div id="title_L">访问统计</div><div id="title_R"></div>
<div class="clear"></div>
<div id="main">
<table cellspacing="1" cellpadding="2" width="100%" align="center" border="0">
    <tr align="center" bgcolor="#eeeeee">
        <td width="20%">月份</td>
        <td width="20%">访问量</td>
        <td>比例</td>
    </tr>
    <%
        for (int i = 1; i <= 12; i++)
        {		
    %>
    <tr bgcolor="#ffffff">
        <td align="center"><% = i %>&nbsp;</td>
        <td align="center"><%= Count(i) %>&nbsp;</td>
        <td class="divCall" id="tdPx<%=i %>" onmouseover="this.firstChild.style.backgroundColor='#0953C4';" onmouseout="this.firstChild.style.backgroundColor='#4197E2';" title="访问量：<%=Count(i) %>" style="text-align: left;">
            <div onmouseover="this.style.backgroundColor='#0953C4';" onmouseout="this.style.backgroundColor='#4197E2';" id="divPx<%=i %>" style='height: 10px; background-color: #4197E2; display: none;'></div>
            <script type="text/javascript">
                <%
                    if (MaxCount == 0)
                    {
                        Response.Write("var leftPx" + i + "=0;");
                    }
                    else
                    {
                        LeftPx = Count(i) / 1000;
                        Response.Write("var leftPx" + i + "="+"document.getElementById('tdPx"+i+"').offsetWidth*"+Count(i)+"/"+1000+";");
                        Response.Write("document.getElementById('divPx"+i+"').setAttribute('rel1',"+Count(i)+");");
                        Response.Write("document.getElementById('divPx"+i+"').setAttribute('rel2',"+1000+");");
                    }
                %>
                    document.getElementById("divPx<%=i %>").style.width=leftPx<%=i%>+1;
            </script>
        </td>
    </tr>
    <%}%>
</table>
</div>
</div>
</body>
</html>