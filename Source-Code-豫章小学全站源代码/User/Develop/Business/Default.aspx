﻿<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Business_Default, App_Web_ldfwx3fz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商务平台</title>
<link type="text/css" rel="stylesheet" href="/User/Develop/Css/global.css" />
<link type="text/css" rel="stylesheet" href="/User/Develop/Css/css.css" />
<link type="text/css" rel="stylesheet" href="/User/Develop/Css/temp.css" />
<link type="text/css" rel="stylesheet" href="/User/Develop/Css/popbox.css" />
</head>
<body>
<div style="overflow: auto; position: relative; margin: auto; width: 980px;" id="siteadmin_content">
    <div style="margin: 0 10px 10px;">
        <div style="width: 960px; margin: auto; background: #FFF;">
            <div class="VISubContentTitleList" style="margin-top: 26px; width: 100%;">
                <ul><li class="VISubContentTitleItemSelected VIExplainText" style="height: 18px;">首页</li></ul>
            </div>
            <div class="VISubContentDiv" style="clear: both; width: 100%;">
                <div style="width: 940px; border: 0px solid #eee; margin: 20px auto 0;">
                    <div style="text-align: left; float: left; width: 185px; height: 350px; border: 0px solid #eee;">
                        <div style="text-align: left; float: left; border: 1px solid #c5c5c5; width: 185px;">
                            <div class="STYLE12 STYLE13" style="width: 176px; height: 20px; padding-left: 9px; padding-top: 7px; border-bottom-style: solid; border-width: 1px; border-color: #c5c5c5; background-color: #EDECEC">统计信息</div>
                            <table id="ctl00_ContentPlaceHolderCenter_table_InfoSumary" style="width: 175px; height: 200px; font-size: 12px; margin-left: 6px; margin-top: 4px">
                                <tr><td style="width: 110px;"><span class="STYLE13">上架商品</span></td>
                                    <td align="right" class="STYLE14">0件</td>
                                </tr>
                                <tr><td><span class="STYLE13">已下架商品</span></td>
                                    <td align="right" class="STYLE14">0件</td></tr>
                                <tr><td><span class="STYLE13">已发布文章</span></td>
                                    <td align="right" class="STYLE14">14篇</td></tr>
                                <tr><td><span class="STYLE13">已发布图片</span></td>
                                    <td align="right" class="STYLE14">61张</td></tr>
                                <tr id="ctl00_ContentPlaceHolderCenter_span_FormsCount">
                                    <td><span class="STYLE13">表单总数</span></td>
                                    <td align="right" class="STYLE14">0份</td></tr>
                                <tr id="ctl00_ContentPlaceHolderCenter_span_FormsPaper">
                                    <td><span class="STYLE13">表单答卷</span></td>
                                    <td align="right" class="STYLE14">0份</td></tr>
                                <tr id="ctl00_ContentPlaceHolderCenter_span_BBSArticleText">
                                    <td><span class="STYLE13">论坛主题帖</span></td>
                                    <td align="right" class="STYLE14">0条</td></tr>
                                <tr id="ctl00_ContentPlaceHolderCenter_span_MemberCountText">
                                    <td><span class="STYLE13">会员总数</span></td>
                                    <td align="right" class="STYLE14">1名</td></tr>
                            </table>
                        </div>
                    </div>
                    <div style="width: 720px; height: 430px; float: left; border: 0px solid #eee; margin-left: 20px;">
                        <div style="text-align: left; float: left; width: 720px; height: 400px;">
                            <div class="panelItem2">
                                <table style="width: 320px; height: 170px; margin-left: 17px">
                                    <tr style="height: 40px;"><td colspan="3" style="font-size:14px; color:#255192; font-weight:bold">内容发布</td></tr>
                                    <tr style="height: 40px; font-size: 12px; line-height: 18px;"><td colspan="3"><span class="STYLE6">通过添加文章，商品和相册使您的网站成为有血有肉的站点，用独特的内容来吸引访问者。</span></td></tr>
                                    <tr style="height: 110px; font-size: 12px" align="center">
                                        <td><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=2"><div style="width: 48px; height: 48px" class="operation addarticle"></div></a>
                                            <div><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=2" style="line-height: 40px">添加文章</a></div></td>
                                        <td><div id="ctl00_ContentPlaceHolderCenter_div_addProduct"><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=6"><div style="width: 48px; height: 48px" class="operation addproduct"></div></a><div>
                                                    <a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=6" style="line-height: 40px">添加商品</a></div>
                                            </div>
                                        </td>
                                        <td><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=3"><div style="width: 48px; height: 48px" class="operation addphoto"></div></a>
                                            <div><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=3" style="line-height: 40px">添加相册</a></div></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="panelItem">
                                <table style="width: 320px; height: 170px; margin-left: 17px">
                                    <tr style="height: 40px; padding-top: 8px"><td colspan="3" style="font-size:14px; color:#255192; font-weight:bold">业务处理</td></tr>
                                    <tr style="height: 40px; font-size: 12px; line-height: 18px;"><td colspan="4"><span class="STYLE6">及时地处理访问者信息，与访问者互动使网站变得更具有生命力，增强对访问者的黏着度。</span></td></tr>
                                    <tr style="height: 110px; font-size: 12px" align="center">
                                        <td id="ctl00_ContentPlaceHolderCenter_span_CreateForms">
                                            <a href="Business/Question.aspx"><div style="width: 48px; height: 48px" class="operation addQuestionnaire"></div></a>
                                            <div><a href="Business/Question.aspx" style="line-height: 40px">创建表单</a></div>
                                        </td>
                                        <td>
                                            <div id="ctl00_ContentPlaceHolderCenter_div_OperationEditorder">
                                                <a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=97"><div style="width: 48px; height: 48px" class="operation editorder"></div></a>
                                                <div><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=97" style="line-height: 40px">处理订单 </a></div>
                                            </div>
                                        </td>
                                        <td>
                                            <a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=95"><div style="width: 48px; height: 48px" class="operation messagemanage"></div></a>
                                            <div><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=95" style="line-height: 40px">留言管理</a></div>
                                        </td>
                                        <td>
                                            <div id="ctl00_ContentPlaceHolderCenter_div_OperationBBSManage">
                                                <a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=96"><div style="width: 48px; height: 48px" class="operation bbsmanage"></div></a>
                                                <div><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=96" style="line-height: 40px">论坛管理</a></div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="ctl00_ContentPlaceHolderCenter_div_MarketingSetting" class="panelItem2">
                                <table style="width: 320px; height: 170px; margin-left: 17px">
                                    <tr style="height: 40px; padding-top: 8px"><td colspan="3" style="font-size:14px; color:#255192; font-weight:bold">营销设置</td></tr>
                                    <tr style="height: 40px; font-size: 12px; line-height: 18px;"><td colspan="3"><span class="STYLE6">让你的网站快速成为一个电子商务站点，在线销售产品，完成支付。</span></td></tr>
                                    <tr style="height: 110px; font-size: 12px" align="center">
                                        <td>
                                            <a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=98"><div style="width: 48px; height: 48px" class="operation shopping"></div></a>
                                            <div><a href="/User/Develop/Business/ArticleManage.aspx?NodeListType=98" style="line-height: 40px">购物设置</a></div>
                                        </td>
                                        <td>
                                            <a href="/plugin/purchase/AdminPayment.aspx"><div style="width: 48px; height: 48px" class="operation payoption"></div></a>
                                            <div><a href="/plugin/purchase/AdminPayment.aspx" style="line-height: 40px">支付设置</a></div>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="ctl00_ContentPlaceHolderCenter_div_UserManage" class="panelItem">
                                <table style="width: 320px; height: 170px; margin-left: 17px">
                                    <tr style="height: 40px; padding-top: 23px"><td colspan="3" style="font-size:14px; color:#255192; font-weight:bold">会员管理</td></tr>
                                    <tr style="height: 40px; font-size: 12px; line-height: 18px;"><td colspan="3"><span class="STYLE6">对所有网站会员分组管理，更能细分您网站的用户群体，最大挖掘客户价值。</span></td></tr>
                                    <tr style="height: 110px; font-size: 12px" align="center">
                                        <td>
                                            <a href="/User/Develop/SiteAdmin/Member.aspx"><div style="width: 48px; height: 48px" class="operation membermanage"></div></a>
                                            <div><a href="/User/Develop/SiteAdmin/Member.aspx" style="line-height: 40px">会员管理</a></div>
                                        </td>
                                        <td>
                                            <div id="ctl00_ContentPlaceHolderCenter_div_blackList">
                                                <a href="/plugin/SiteMember/SiteMemberMgr.aspx?cid=-1"><div style="width: 48px; height: 48px" class="operation blacklist"></div></a>
                                                <div>&nbsp;&nbsp;<a href="/plugin/SiteMember/SiteMemberMgr.aspx?cid=-1" style="line-height: 40px">黑名单</a></div>
                                            </div>
                                        </td>
                                        <td>
                                            <a href="siteAdmin/SiteRightSetting.aspx"><div style="width: 48px; height: 48px" class="operation rightsetting"></div></a>
                                            <div><a href="siteAdmin/SiteRightSetting.aspx" style="line-height: 40px">权限设置</a></div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>