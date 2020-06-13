<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_Default, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>分站后台-用户中心</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
    function Load(r1) {
        document.getElementById("main_right").src = r1;
        main_right.document.referrer;
    }
</script>
</head>
<body>
<div id="bodymain">
  <div id="top">
    <h1><a href="/"><img src="/images/logo.gif" border="0"  /></a></h1>
    <form method="post" action="/user/chklogin.asp" name="form" target="Box"><div id="top_login">Hi!^_^&nbsp;<strong>13277949430</strong> | 推广ID：<strong>257661</strong> | <a href='/user/'>分站后台</a> | <a href="/user/logout.asp">退出</a>
    </div></form>
  </div>
  <div class="clearfloat"></div>
  <div id="nav">
    <div id="nav_l"></div>
    <ul>
      <li><a href="/">首页</a></li>
      <li><a href="/">联盟公告</a></li>
      <li><a href="/">经验心得</a></li>
      <li><a href="/">优秀伙伴</a></li>
      <li><a href="/">分成政策</a></li>
      <li><a href="/">常见问题</a></li>
      <li><a href="/">疑难问题</a></li>
      <li><a href="/">推广技巧</a></li>
      <li><a href="/">推广案例</a></li>
      <li><a href="/">分站后台</a></li>
    </ul>
    <div id="nav_r"></div>
  </div>
  <div class="clearfloat"></div>
<script language="javascript" type="text/javascript">
var obj=null;
var As=document.getElementById('nav').getElementsByTagName('a');
obj = As[0];
for(i=1;i<As.length;i++){if(window.location.href.indexOf(As[i].href)>=0)
obj=As[i];}
obj.id='nav_current'
</script><!-- -->
  <div id="user_content">
  <div id="main_user">
      <div class="main_user_bg"></div>
      <div class="user_con">
     <iframe src="forms.aspx" height="700px" frameborder="0" marginwidth="0" marginheight="0" scrolling="auto" width="100%" allowtransparency="true" id="main_right" name="main_right" style="padding-left: 4px; overflow-x: hidden; overflow-y: auto;" ></iframe>
     </div>
      <div class="main_user_bg1"></div>
    </div>
    <div id="side_user">
        <h2>我的业绩</h2>
        <ul>
          <li><a href="javascript:void(0)" onclick="Load('forms.aspx')">业绩概况</a></li>
          <li><a href="javascript:void(0)" onclick="Load('formlist.aspx?T=1')">业绩详情</a></li>
        </ul>
        <h2>佣金管理</h2>
        <ul>
          <li><a href="javascript:void(0)" onclick="Load('cash.aspx')">佣金提现</a></li>
           <li><a href="javascript:void(0)" onclick="Load('cashDetail.aspx')">提现记录</a></li>
          <li><a href="javascript:void(0)" onclick="Load('moneydetails.aspx')">佣金明细</a></li>
        </ul>
        <h2>分销代码</h2>
        <ul>
          <li><a href="javascript:void(0)" onclick="Load('codepic.aspx')">普通图片广告</a></li>
          <li><a href="javascript:void(0)" onclick="Load('codetext.aspx')">文字广告</a></li>
          <li><a href="javascript:void(0)" onclick="Load('shoplist.aspx')">博客内容推广</a></li>
          <li><a href="javascript:void(0)" onclick="Load('codesearch.aspx')">自定义搜索框</a></li>
          <li><a href="javascript:void(0)" onclick="Load('codemodule.aspx')">API接口定义</a></li>
        </ul>
        <h2>分站内容设置</h2>
        <ul>
          <li><a href="javascript:void(0)" onclick="Load('/User/Pages/RegProUser.aspx?menu=modifile')">注册分站信息</a></li>
          <li><a href="javascript:void(0)" onclick="Load('/User/Pages/ChangeSkins.aspx')">设置风格</a></li>
          <li><a href="javascript:void(0)" onclick="Load('/User/Pages/ClassManage.aspx')">栏目管理</a></li>
          <li><a href="javascript:void(0)" onclick="Load('SitePageContent.aspx')">全站设置</a></li>
        </ul>
        <h2>账户管理</h2>
        <ul>
          <li><a href="javascript:void(0)" onclick="Load('xiaxian.aspx')">我的下线会员</a></li>
          <li><a href="javascript:void(0)" onclick="Load('userinfo.aspx')">修改我的资料</a></li>
          <li><asp:HyperLink ID="hfurl" runat="server">退出系统</asp:HyperLink></li>
        </ul>
    </div>
<script language="javascript" type="text/javascript">
var obj=null;
var As=document.getElementById('side_user').getElementsByTagName('a');
obj = As[0];
for(i=1;i<As.length;i++){if(window.location.href.indexOf(As[i].href)>=0)
obj=As[i];}
obj.id='user_current'
</script>
  </div>
</div>
</body>
</html>
