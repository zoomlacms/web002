<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Nsearch_Search, App_Web_rjhyr2ue" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>搜索引擎收录查询</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  <div class="column">    
    <div class="columntitle">当前位置：功能导航 >><a href="Search.aspx">搜索引擎收录查询</a></div>
    <div class="columncontent" style="height:25px;">网站地址：
        <asp:TextBox ID="txtSiteUrl" runat="server">/</asp:TextBox>&nbsp;
        <asp:Button ID="submit" class="button" runat="server" Text="查询" 
            onclick="submit_Click" /> 
    </div>
    <div style="height:25px"></div>
    <div id="showResult" visible="false" runat="server" >
    <div class="columntitle">收录详情</div>
    <div class="columncontent"><%=siteurl %>的收录结果</div>
    <div >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td valign="top">
                <table width="100%"  border="0" cellspacing="1" cellpadding="2">
            	
                <tr align="center" bgcolor="#DBE6F5">
                  <td bgcolor="#DBE6F5">搜索引擎</td>
             
                  <td><a href="http://www.baidu.com/" rel="nofollow" target="_blank"><img src="http://images.webmasterhome.cn/images/icon_baidu.gif" alt="baidu 百度搜索" width="16" height="16" border="0" />baidu</a></td>
             
                  <td><a href="http://www.google.cn/" rel="nofollow" target="_blank"><img src="http://images.webmasterhome.cn/images/icon_google.gif" alt="Google 搜索" width="16" height="16" border="0"/>Google</a></td>
             
                  <td><a href="http://www.yahoo.cn/" rel="nofollow" target="_blank"><img src="http://images.webmasterhome.cn/images/icon_yahoo.gif" alt="Yahoo 搜索" width="16" height="16" border="0"/>Yahoo</a></td>
             
                  <td><a href="http://www.sogou.com/" rel="nofollow" target="_blank"><img src="http://images.webmasterhome.cn/images/icon_sohu.gif" alt="sogou 搜狗搜索" width="16" height="16" border="0" />sogou</a></td>
                  <td><a href="http://www.Live.com/" rel="nofollow" target="_blank"><img src="http://images.webmasterhome.cn/images/icon_Live.gif" alt="Live 搜索" width="16" height="16" border="0" />Live</a></td>
                  
               </tr>
            	
                <tr align="center" bgcolor="#EEF2F4">
                  <td width="8%" bgcolor="#DBE6F5" title="搜寻引擎收录情况">收录情况</td>
             
                  <td width="7%"><a href='http://www.baidu.com/s?cl=3&wd=site%3A<%=siteurl %>' target="_blank" title='5' rel="nofollow" ><%=GetNum(1,"http://www.baidu.com/s?cl=3&wd=site%3A", siteurl)%></a></td>
             
                  <td width="7%"><a href='http://www.google.cn/search?hl=zh-CN&q=site%3A<%=siteurl%>' target="_blank" title='50' rel="nofollow" ><%=GetNum(2,"http://www.google.cn/search?hl=zh-CN&q=site%3A",siteurl)%></a></td>
             
                  <td width="8%"><a href='http://sitemap.cn.yahoo.com/search?bwm=p&p=<%=siteurl%>' target="_blank" title='117' rel="nofollow" ><%=GetNum(3,"http://sitemap.cn.yahoo.com/search?bwm=p&p=",siteurl)%></a></td>
             
                  <td width="7%"><a href='http://www.sogou.com/web?query=site%3A<%=siteurl%>' target="_blank" title='0' rel="nofollow" ><%=GetNum(4, "http://www.sogou.com/web?query=site%3A", siteurl)%></a></td>
                
                  <td width="7%"><a href='http://cn.bing.com/search?q=site%3a<%=siteurl%>' target="_blank" title='0' rel="nofollow" ><%=GetNum(5, "http://cn.bing.com/search?q=site%3a", siteurl)%></a></td>
                
                </tr>
                <tr align="center" bgcolor="#EEF2F4">
                  <td bgcolor="#DBE6F5" title="外部网站链接到你的网站">反向链接</td>
             
                  <td><a href='http://www.baidu.com/s?cl=3&wd=domain%3A<%=siteurl %>' target="_blank" title='5' rel="nofollow" ><%=GetNum(1,"http://www.baidu.com/s?cl=3&wd=domain%3A",siteurl)%></a></td>
             
                  <td><a href='http://www.google.cn/search?hl=zh-CN&q=link%3A<%=siteurl %>' target="_blank" title='0' rel="nofollow" ><%=GetNum(2,"http://www.google.cn/search?hl=zh-CN&q=link%3A",siteurl)%></a></td>
             
                  <td><a href='http://sitemap.cn.yahoo.com/search?bwm=i&p=<%=siteurl %>' target="_blank" title='111' rel="nofollow" ><%=GetNum(3,"http://sitemap.cn.yahoo.com/search?bwm=i&p=",siteurl)%></a></td>
             
                  <td><a href='http://www.sogou.com/web?num=10&query=link%3A<%=siteurl %>' target="_blank" title='0' rel="nofollow" ><%=GetNum(4,"http://www.sogou.com/web?num=10&query=link%3A",siteurl)%></a></td>
                  
                  <td><a href='http://cn.bing.com/search?q=link%3a/<%=siteurl %>' target="_blank" title='0' rel="nofollow" ><%=GetNum(5, "http://cn.bing.com/search?q=link%3a/", siteurl)%></a></td>
             
                  </tr>
                 </table>
               </td>
            </tr>
         </table>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
