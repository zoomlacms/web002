<?xml version="1.0" encoding="utf-8"?>
<!--
    注意: 除了手动编辑此文件以外，您还可以使用 Web 管理工具来
    配置应用程序的设置。
    可以使用 Visual Studio 中的“网站”->“Asp.Net 配置”选项。
    设置和注释的完整列表在    machine.config.comments 中，
   该文件通常位于
    \Windows\Microsoft.Net\Framework\v2.x\Config 中
-->
<configuration>
    <appSettings/>
    <connectionStrings/>
  <BbsConfig>
    <ForumName>逐浪</ForumName>
    <ForumUrl>http://bbs.zoomla.cn</ForumUrl>
    <AdminEmail>web@zoomla.cn</AdminEmail>
    <CompanyName>江西逐浪软件科技有限公司</CompanyName>
    <CompanyUrl>http://www.zoomla.cn</CompanyUrl>
    <MetaDescription>META网页描述</MetaDescription>
    <MetaKeywords>META关键字</MetaKeywords>
    <UserOnlineTime>10</UserOnlineTime>
    <ScriptOverTime>1</ScriptOverTime>
    <ThemeSet></ThemeSet>
    <SiteCache>bbs</SiteCache>
    <CacheUpdate>3</CacheUpdate>
    <CookiesPath></CookiesPath>
    <CookiesDomain></CookiesDomain>
    <ForumState>True</ForumState>
    <BBSClosed>论坛维护中，暂时无法访问！</BBSClosed>
    <AddHttp></AddHttp>
  </BbsConfig>
  <HomeShow>
    <ShowTag>true</ShowTag>
    <ShowOnlineUser>true</ShowOnlineUser>
    <ShowInformation>true</ShowInformation>
    <ShowBirthdayToday>true</ShowBirthdayToday>
    <ShowLink>true</ShowLink>
    <ShowChildren>true</ShowChildren>
  </HomeShow>
  <Registered>
    <NewSettings>
      <AllowLogin>是</AllowLogin>
      <LoginDisabled>是</LoginDisabled>
      <registration>是</registration>
      <TrustLevel>是</TrustLevel>
      <UserMin></UserMin>
      <UserMax></UserMax>
      <AccountActivated>自动</AccountActivated>
      <Password>MD5</Password>
    </NewSettings>
  </Registered>
</configuration>