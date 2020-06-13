<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_Year, App_Web_jul0migs" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>月统计报表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/App_Themes/AdminDefaultTheme/Counter.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Counter.js" type="text/javascript"></script>
<style>
.border td{ border:1px solid #fff; width:auto; text-align:center; background:#e8f5ff}
</style>
</head>
<body onload="OnWindowsLoad()" onresize="OnWindowsReSize()">
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="Counter.aspx">访问统计</a>&gt;&gt; 月统计报表</div>
<table class="tables" bordercolor="#6595d6" cellspacing="0" cellpadding="2" align="center" border="1">
            <tr class="title_link">
                <td class="title" style="height: 22px" colspan="2" align="center">
                 <a style="float:right;" href="counter.aspx">[返回]</a>
                    统计年份：<%=Cyear%>
                        本年累计：<%=SumCount%>
                   [<a href="year.aspx">当前年</a>] [<a href="year.aspx?step=1">前一年</a>] [<a href="year.aspx?step=2">前两年</a>]
                   
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;height:100%;" width="100%">
                    <div align="center">
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
                            <tr>
                                <td style="vertical-align: top;height:100%;" align="center" bgcolor="#ffffff" height="100%">
                                    <% 
                                        if (pmonth == 0)
                                        {%>
                                    <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" style="background-color: transparent"
                                      bordercolor="#6595d6">
                                        <tr>
                                            <td>
                                                <div align="center">
                                                    没有任何数据</div>
                                            </td>
                                        </tr>
                                    </table>
                                    <%			}
                                        else
                                        {
                                    %><div class="user_t">
                                    <table  cellspacing="1" cellpadding="2" width="100%" class="border" align="center"
                                       border="0">
                                        <tr align="center" bgcolor="#e2e9ff">
                                            <td width="20%">
                                                月份
                                            </td>
                                            <td width="20%">
                                                访问量
                                            </td>
                                            <td >
                                                比例
                                            </td>
                                        </tr>
                                        <%
                                            for (int i = 1; i <= 12; i++)
                                            {		
                                        %>
                                        <tr  bgcolor="#ffffff">
                                            <td align="center">
                                                <% = i %>
                                                &nbsp;
                                            </td>
                                            <td align="center">
                                                <%=dsadmin.Tables[0].Rows[0][i].ToString()%>&nbsp;
                                            </td>
                                            <td class="divCall" id="tdPx<%=i %>" onmouseover="this.firstChild.style.backgroundColor='#0953C4';"
                                                onmouseout="this.firstChild.style.backgroundColor='#4197E2';" title="访问量：<%=dsadmin.Tables[0].Rows[0][i].ToString() %>"
                                                style="text-align: left;">
                                                <div onmouseover="this.style.backgroundColor='#0953C4';" onmouseout="this.style.backgroundColor='#4197E2';"
                                                    id="divPx<%=i %>" style='height: 10px; background-color: #4197E2;display:none;'>
                                                </div>
                                                <script type="text/javascript">
                                                <%
                                                    if (MaxCount == 0)
                                                    {
                                                        Response.Write("var leftPx" + i + "=0;");
                                                    }
                                                    else
                                                    {
                                                        LeftPx = Convert.ToInt32(250 * Convert.ToInt32(dsadmin.Tables[0].Rows[0][i].ToString()) / MaxCount);
                                                        Response.Write("var leftPx" + i + "="+"document.getElementById('tdPx"+i+"').offsetWidth*"+Convert.ToInt32(dsadmin.Tables[0].Rows[0][i].ToString())+"/"+MaxCount+";");
                                                        Response.Write("document.getElementById('divPx"+i+"').setAttribute('rel1',"+Convert.ToInt32(dsadmin.Tables[0].Rows[0][i].ToString())+");");
                                                        Response.Write("document.getElementById('divPx"+i+"').setAttribute('rel2',"+MaxCount+");");
                                                    }
                                                %>
                                                    document.getElementById("divPx<%=i %>").style.width=leftPx<%=i%>+1;
                                                    
                                                </script>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </table></div>
                                    <%}%>
                                </td>
                            </tr>
                        </table>
                        <br>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <script>
        
    </script>
    </form>
</body>
</html>
