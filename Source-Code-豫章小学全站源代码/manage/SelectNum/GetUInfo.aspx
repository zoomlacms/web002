<%@ page language="C#" autoeventwireup="true" inherits="manage_SelectNum_GetUInfo, App_Web_el2p3ip1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <script src="/JS/Common.js" type="text/javascript"></script>
   <script src="/JS/calendar.js"></script> 
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 24%;
            height: 8px;
        }
        .style2
        {
            height: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span><a href="NumManage.aspx">号码管理</a></span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td colspan="2" class="spacingtitle">
                  用户信息
                </td>
            </tr>
           
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    姓名：
                </td>
                <td>
             
                   
                   <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                 </td>
            </tr>
        
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    身份证明名称：</td>
                <td>  
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 </td>
            </tr>
              
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   身份证明号码：
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                 </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                   车辆识别代号：
                </td>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   发票号：
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
              <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   开票日期：
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                  </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   居住暂住证号码：
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   固定电话：
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   移动电话：
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   住所地址：
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   邮寄地址：
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   邮政编码：
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                   </td>
            </tr>
                <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                   是否属于海关进口车辆：
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                    </td>
            </tr>
            
        </table>
    </div>
    </form>
</body>
</html>
