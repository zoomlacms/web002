<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_config, App_Web_j5qlofg5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>基本设置</title>
<link type="text/css" rel="stylesheet" href="../../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../../App_Themes/AdminDefaultTheme/main.css" />
<style type="text/css">
.style1{ width: 149px;}
.style3{ width: 100px;}
.style4{ width: 111px;}
.style5{ width: 98px;}
.style6{ width: 121px;}
.style8{ width: 117px;}
.style9{ width: 103px;}
.style10{ width: 115px;}
</style>
</head>
<body>
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>基本设置</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
<form runat="server" action="config.aspx" method="get">
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
<tr align="center">
    <td class="spacingtitle" colspan="2"> 佣金       </td>
</tr> 
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td colspan="2" class="tdbgleft">
     <input runat="server" type="checkbox" name="IsCPM" id="IsCPM" />&nbsp;&nbsp;按CPM(广告千次展示)方式付佣 
</td>
</tr>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td colspan="2" class="tdbgleft">
      <input runat="server" type="checkbox" name="IsClick" id="IsClick" />&nbsp;&nbsp;按点击付佣  </td>
</tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td>&nbsp;</td><td><table border="0" cellpadding="1" cellspacing="5"  >
                        <tr class="tdbg">
                            <td valign="top" class="style1">
                                佣金 <input runat="server" size="3" type="text" name="CLayer_1" id="CLayer_1" /> 元
                            </td>
                            <td colspan="3" valign="top">
                                指定多层次下线的佣金(可留空),有效层 <input runat="server" name="CLayerNum" id="CLayerNum" size="3" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td rowspan="3" valign="top" class="style1">
                            </td>
                            <td valign="top" class="style4">
                                2-层 <input runat="server" size="3" type="text" name="CLayer_2" id="CLayer_2" /> 元
                            </td>
                            <td valign="top" class="style3">
                                3-层 <input runat="server" size="3" type="text" name="CLayer_3" id="CLayer_3" /> 元
                            </td>
                            <td valign="top" class="style5">
                                4-层 <input runat="server" size="3" type="text" name="CLayer_4" id="CLayer_4" /> 元
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td valign="top" class="style4">
                                5-层 <input runat="server" size="3" type="text" name="CLayer_5" id="CLayer_5" /> 元
                            </td>
                            <td valign="top" class="style3">
                                6-层 <input runat="server" size="3" type="text" name="CLayer_6" id="CLayer_6" /> 元
                            </td>
                            <td valign="top" class="style5">
                                7-层 <input runat="server" size="3" type="text" name="CLayer_7" id="CLayer_7" /> 元
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td valign="top" class="style4">
                                8-层 <input runat="server" size="3" type="text" name="CLayer_8" id="CLayer_8" /> 元
                            </td>
                            <td valign="top" class="style3">
                                9-层 <input runat="server" size="3" type="text" name="CLayer_9" id="CLayer_9" /> 元
                            </td>
                            <td valign="top" class="style5">
                                10-层 <input runat="server" size="3" type="text" name="CLayer_10" id="CLayer_10" /> 元
                            </td>
                        </tr>
                    </table>
       </td>
</tr> 
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
<td  colspan="2" class="tdbgleft">
  <input runat="server" type="checkbox" name="IsSale" id="IsSale" />&nbsp;&nbsp;按销售方式付佣 
</td>
</tr> 
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
<td>&nbsp;</td><td>
 <table border="0" cellpadding="1" cellspacing="5">
                        <tr class="tdbg">
                            <td valign="top" class="style6">
                                佣金 <input runat="server" size="3" type="text" name="SLayer_1" id="SLayer_1" />
                                <select runat="server" name="SaleMethod" id="SaleMethod">
                                    <option>元</option>
                                    <option>%</option>
                                </select>
                            </td>
                            <td colspan="3" valign="top">
                                指定多层次下线的佣金(可留空)
                                <select runat="server" name="SaleMethod2" id="SaleMethod2">
                                    <option>元</option>
                                    <option>%</option>
                                </select>
                                ,有效层 <input runat="server" name="SLayerNum" id="SLayerNum" size="3" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td rowspan="3" valign="top" class="style6">
                            </td>
                            <td valign="top" class="style8">
                                2-层 <input runat="server" size="3" type="text" name="SLayer_2" id="SLayer_2" />
                            </td>
                            <td valign="top" class="style9">
                                3-层 <input runat="server" size="3" type="text" name="SLayer_3" id="SLayer_3" />
                            </td>
                            <td valign="top" class="style10">
                                4-层 <input runat="server" size="3" type="text" name="SLayer_4" id="SLayer_4" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td valign="top" class="style8">
                                5-层 <input runat="server" size="3" type="text" name="SLayer_5" id="SLayer_5" />
                            </td>
                            <td valign="top" class="style9">
                                6-层 <input runat="server" size="3" type="text" name="SLayer_6" id="SLayer_6" />
                            </td>
                            <td valign="top" class="style10">
                                7-层 <input runat="server" size="3" type="text" name="SLayer_7" id="SLayer_7" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td valign="top" class="style8">
                                8-层 <input runat="server" size="3" type="text" name="SLayer_8" id="SLayer_8" />
                            </td>
                            <td valign="top" class="style9">
                                9-层 <input runat="server" size="3" type="text" name="SLayer_9" id="SLayer_9" />
                            </td>
                            <td valign="top" class="style10">
                                10-层 <input runat="server" size="3" type="text" name="SLayer_10" id="SLayer_10" />
                            </td>
                        </tr>
                    </table>
   </td>
</tr>  
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
<td colspan="2"class="tdbgleft"><input runat="server" type="checkbox" name="IsGuide" id="IsGuide" />&nbsp;&nbsp;按引导方式付佣<input runat="server" type="text" size="3" name="GuideMoney" id="GuideMoney"/>元 
</td>
</tr> 
 <tr align="center">
    <td class="spacingtitle" colspan="2"> 任务设置   </td>
</tr>  
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
 <td class="tdbgleft">Cookie 期限 </td>
 <td >   <input runat="server" type="text" name="CookieDeadline" id="CookieDeadline" />* 天 （如果希望cookie永远有效就填 0）</td>
<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
 <td colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" text="保存" onclick="Button1_Click"  class="C_input" />
 </td></tr>
</table>
        </form>
    </div>
</body>
</html>