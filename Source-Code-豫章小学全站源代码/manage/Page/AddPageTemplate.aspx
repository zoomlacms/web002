<%@ page language="C#" autoeventwireup="true" inherits="manage.Page.AddPageTemplate, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加栏目</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js"></script>
<script type="text/javascript" language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6", "Tabs7");
    function ShowTabss(SID) {
        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "";
            tID = SID;
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span></span> 企业黄页 &gt;&gt; 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><span><asp:Label ID="Label2"
            runat="server" Text="Label"></asp:Label></span></div>
    <div class="clearbox"></div>    
          <script type="text/javascript">
            function GetPYDir()
                {
                    var NodeName = document.getElementById("<%= templateName.ClientID %>");
                    var checkUserNameMessage = document.getElementById("CheckUserNameMessage");                        
                    if(NodeName.value!="")
                    {
                        CallTheServer(NodeName.value,"");
                    }                        
                }
            function CallTheServer(arg,context)
            {
                <%= CallBackReference %>
            }
                    
            function ReceiveServerData(result)
            {
                var NodeDir = document.getElementById("<%= identifiers.ClientID %>");
                NodeDir.value=result;
            }
            </script>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr align="center">
                <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)">
                    基本信息
                </td>
                <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)">
                    栏目选项
                </td>
                <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)">
                    模板选项
                </td>
            </tr>
        </table>
        </div>
          <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
          <tr><td>
      <tbody id="Tbody1">
        <tbody id="Tabs0">
        <tr class="tdbg">
            <td colspan="2" align="center" class="title">
                <span>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span></td>
        </tr>
        <tr class="tdbg" id="10" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td width="30%" height="24" align="left" class="tdbgleft"><strong>
              栏目名称：</strong></td>
          <td width="70%" align="left">
              <asp:TextBox ID="templateName" class="l_input" runat="server" Width="259px" onblur="GetPYDir()"></asp:TextBox>
              <font color="red">*
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="templateName"
                      ErrorMessage="栏目名称不能为空!"></asp:RequiredFieldValidator></font></td>
        </tr>
        <tr class="tdbg" id="11" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>栏目类型</strong></td>
          <td align="left">
              <asp:RadioButtonList ID="templateType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                  <asp:ListItem Value="1">单页型栏目</asp:ListItem>
                  <asp:ListItem Value="2">栏目型栏目</asp:ListItem>
                  <asp:ListItem Value="3">Url转发型栏目</asp:ListItem>
                  <asp:ListItem Value="4">功能型栏目</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" id="Tr14" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>打开方式：</strong>
</td>
          <td align="left"><asp:RadioButtonList ID="OpenType" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Value="_blank">新窗口打开</asp:ListItem>
              <asp:ListItem Value="_self">原窗口打开</asp:ListItem>
              <asp:ListItem Value="_top">父页面打开</asp:ListItem>
          </asp:RadioButtonList></td>
        </tr> 
                <tr class="tdbg" id="Tr12">
          <td height="24" align="left" class="tdbgleft"><strong>所属栏目：</strong>
</td>
          <td align="left">
              <asp:Label ID="ParentID" runat="server"></asp:Label></td>
        </tr> 
         </tr>
        
          <asp:Panel ID="nodetype" runat="server">
                <tr class="tdbg" id="Tr6" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>栏目图片地址</strong></td>
          <td align="left">
              <asp:TextBox ID="Nodeimgurl"  class="l_input" runat="server" Width="246px"></asp:TextBox></td>
        </tr>
                <tr class="tdbg" id="Tr7" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>栏目提示</strong></td>
          <td align="left">
              <asp:TextBox ID="Nodeimgtext"  class="l_input" runat="server" Height="44px" TextMode="MultiLine" Width="433px"></asp:TextBox></td>
        </tr>
                <tr class="tdbg" id="Tr8" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>说明：</strong><br />用于在单页页详细介绍单页信息，支持HTML</td>
          <td align="left">
              <asp:TextBox ID="Pagecontent"  class="l_input" runat="server" Height="79px" TextMode="MultiLine" Width="433px"></asp:TextBox></td>
        </tr>
        </tbody>
        
        <tbody id="Tabs1" style=" display:none">
        <tr class="tdbg" id="1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>启用状态</strong></td>
          <td align="left">
              <asp:RadioButtonList ID="isTrue" runat="server" RepeatDirection="Horizontal" Width="109px">
                  <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
                  <asp:ListItem Value="0">停用</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
          <tr class="tdbg" id="Tr3" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft">
              <strong>标识符<br />
              </strong>用于前台调用时可以直接用标签取代ID的标识</td>
          <td align="left"><asp:TextBox ID="identifiers" class="l_input"  runat="server" Width="247px"></asp:TextBox>
              </td>
        </tr>
                  <tr class="tdbg" id="Tr11" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft">
              <strong>排列顺序<br />
              </strong>用于前台显示栏目顺序,越大越靠前</td>
          <td align="left"><asp:TextBox ID="OrderID" class="l_input" runat="server" Width="247px"></asp:TextBox>
              </td>
        </tr>
      <asp:Panel ID="typetxt" runat="server">
                <tr class="tdbg" id="Tr4">
          <td height="24" align="left" class="tdbgleft"><strong>栏目扩展名</strong><br />例如：html、htm、shtml、aspx</td>
          <td align="left">
              <asp:RadioButtonList ID="NodeFileEx" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Selected="True">html</asp:ListItem>
                  <asp:ListItem>htm</asp:ListItem>
                  <asp:ListItem>shtml</asp:ListItem>
                  <asp:ListItem>aspx</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
         </asp:Panel>
          <asp:Panel ID="typenode" runat="server">
        <tr class="tdbg" id="Tr1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>内容页扩展名</strong><br />例如：html、htm、shtml、aspx</td>
          <td align="left">
              <asp:RadioButtonList ID="ContentFileEx" runat="server" RepeatDirection="Horizontal">
                  <asp:ListItem Selected="True">html</asp:ListItem>
                  <asp:ListItem>htm</asp:ListItem>
                  <asp:ListItem>shtml</asp:ListItem>
                  <asp:ListItem>aspx</asp:ListItem>
              </asp:RadioButtonList></td>
        </tr>
        
          </asp:Panel>
                          <tr class="tdbg" id="Tr2">
          <td height="24" align="left" class="tdbgleft"><strong>添加时间</strong></td>
          <td align="left">
              <asp:TextBox ID="addtime" class="l_input"  runat="server" Width="165px" onclick="calendar();"></asp:TextBox></td>
        <tr class="tdbg" id="Tr9" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>META关键词：</strong><br />针对搜索引擎设置的关键词
</td>
          <td align="left">
              <asp:TextBox ID="PageMetakeyword"  class="l_input" runat="server" Height="79px" TextMode="MultiLine" Width="433px"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" id="Tr10" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>META网页描述：</strong><br />针对搜索引擎设置的网页描述
</td>
          <td align="left">
              <asp:TextBox ID="PageMetakeyinfo"  class="l_input" runat="server" Height="79px" TextMode="MultiLine" Width="433px"></asp:TextBox></td>
        </tr>     
          </asp:Panel>
          </tbody>
          
          <tbody id="Tabs2" style=" display:none">
          <asp:Panel ID="urltype" runat="server">
                <tr class="tdbg" id="Tr13">
          <td height="24" align="left" class="tdbgleft"><strong>外部链接地址：</strong>
</td>
          <td align="left">
              <asp:TextBox ID="linkurl"  class="l_input" runat="server" Width="246px"></asp:TextBox></td>
        </tr>  
 
          <tr class="tdbg" id="Tr15" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>外部链接图片地址：</strong>
</td>
          <td align="left">
              <asp:TextBox ID="linkimg"  class="l_input" runat="server" Width="246px"></asp:TextBox></td>
        </tr>  
                <tr class="tdbg" id="Tr16" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>外部链接提示：</strong></td>
          <td align="left">
              <asp:TextBox ID="linktxt"  class="l_input" runat="server" Height="79px" TextMode="MultiLine" Width="433px"></asp:TextBox></td>
        </tr>  
        </asp:Panel>
        <asp:Panel ID="tempurl" runat="server">
        <tr class="tdbg" id="Tr17" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="left" class="tdbgleft"><strong>栏目模板地址</strong></td>
          <td align="left">
              <asp:TextBox ID="templateUrl"  class="l_input" runat="server" Width="248px"></asp:TextBox>
               <input type="button" value="选择模板" class="C_input"   onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('templateUrl')+'&FilesDir=',650,480)" /></td>
        </tr>
        </asp:Panel>
          <asp:Panel ID="SelectModel" runat="server">
          <tr class="tdbg" id="Tr5">
          <td height="24" align="left" class="tdbgleft"><strong>选择模型</strong></td>
          <td align="left">
          <table width="95%" border="0" cellpadding="3" cellspacing="0" >
              <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr class="tdbg">
                                            <td class="tdbgleft">
                                                <%# GetChk(Eval("ModelID","{0}")) %>
                                                <%# Eval("ModelName") %>                                                
                                            </td>
                                            <td>
                                                <input type="text" name="TxtModelTemplate_<%# Eval("ModelID") %>" id="TxtModelTemplate_<%# Eval("ModelID") %>" value="<%# GetTemplate(Eval("ModelID","{0}")) %>" maxlength="255"  class="C_input" />                                                
                                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtModelTemplate_<%# Eval("ModelID") %>')+'&FilesDir=',650,480)" class="C_input"/>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
             </asp:Repeater>
             </table>
        </tr>
          </asp:Panel>
        </tbody>
        <tr class="tdbg" id="Tr18">
          <td height="24" colspan="2" align="center">
              <asp:HiddenField ID="lblmodelstr" runat="server" />
              <asp:HiddenField ID="TemplateID" runat="server" />
              <asp:HiddenField ID="UserGroup" runat="server" />
              <asp:HiddenField ID="Username" runat="server" />
              <asp:HiddenField ID="Userids" runat="server" />
              <asp:Button ID="Button1" runat="server" Text="添加栏目" class="C_input"  OnClick="Button1_Click" />
              <asp:Button ID="Button2" runat="server" Text="取消添加" class="C_input"  OnClick="Button2_Click" /></td>
        </tr>
      </tbody>
      </td></tr>
    </table>
    </ContentTemplate>
    </asp:UpdatePanel>
</form>
</body>
</html>