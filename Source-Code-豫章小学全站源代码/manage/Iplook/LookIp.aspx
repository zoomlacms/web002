<%@ page language="C#" autoeventwireup="true" inherits="manage_Iplook_LookIp, App_Web_2kq0iiy1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<html>
<head id="Head1" runat="server">
    <title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="myform" runat="server">
    <div class="r_navigation">
        
        <span>后台管理 </span>&gt;&gt;<span> 扩展功能</span> &gt;&gt;<span> 其他功能</span> &gt;&gt; 
        IP地址管理
    </div>
    <div class="clearbox">
    </div>
    <div>
    
<div>       
        </div>
        
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <thead class="spacingtitle">
                <tr style="height:30px">
                    <td colspan="7" align="center" >
                        IP信息
                    </td>
                </tr>
            </thead>
            <tbody class="tdbg">
                <tr style="height:26px" class="tdbgleft">
                     <td align="center" style="width:10%">IP_ID</td>
                     <td align="center" style="width:10%">分类ID</td>
                     <td align="center" style="width:16%">省级名称</td>
                     <td align="center" style="width:16%">市级名称</td>
                     <td align="center" style="width:15%">开始IP</td>
                     <td align="center" style="width:15%">结束IP</td>
                     <td align="center" style="width:25%">操作</td>
                </tr>
                <%= page_table()%>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
    