<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_AddFloBasprice, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>编辑花材</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel='stylesheet' type='text/css' href='/App_Themes/AdminDefaultTheme/doutime.css'>
</head>
<body>
 <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span><a href="FlowaPriManage.aspx">花材基价管理</a></span> &gt;&gt;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td colspan="3" class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hfid" runat="server" />
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft" width="20%"><strong>花材名称：</strong></td>
            <td>
                <asp:TextBox ID="txtName" runat="server" class="l_input" Height="19px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="txtName" ErrorMessage="花材名称不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>花材分类：</strong></td>
            <td>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="ddClass" runat="server"></asp:DropDownList>
                        <asp:TextBox ID="txtClass" runat="server" class="l_input" Visible="false"  Height="19px"></asp:TextBox>
                        <asp:Button ID="btnClass" runat="server" Text="添加分类" class="C_input" CausesValidation="false" onclick="btnClass_Click" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft" width="20%"><strong>花材单位：</strong></td>
            <td>
                <asp:TextBox ID="txtunit" runat="server" class="l_input" Height="19px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="txtunit" ErrorMessage="花材单位不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>花材类型:</strong></td>
            <td><asp:DropDownList ID="ddlType" runat="server">
                    <asp:ListItem Value="0">主花材</asp:ListItem>
                    <asp:ListItem Value="1">配花材</asp:ListItem>
                    <asp:ListItem Value="2">包装</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>花材价格:</strong></td>
            <td> <asp:TextBox ID="txtPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator8"  runat="server" ControlToValidate="txtPrice" ErrorMessage="花材价格格式不正确!"
                  ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>会员价:</strong></td>
            <td><asp:RadioButtonList ID="rdoUserPrice" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="rdoUserPrice_SelectedIndexChanged">
                <asp:ListItem Value="0" Selected="True">会员价</asp:ListItem>
                <asp:ListItem Value="1">会员组</asp:ListItem>
                </asp:RadioButtonList >
             <div id="userP" runat="server">会员价：<asp:TextBox id="userPrice" runat='server'  class="l_input" Width="35px"></asp:TextBox>元</div>
              <div id="divGroup" runat="server" visible="false">
              <asp:Repeater ID="repGroup" runat="server">
                <ItemTemplate>
                <asp:HiddenField ID="groupID" runat="server" Value='<%#Eval("GroupID") %>' />
                    <%#Eval("GroupName")%>：<asp:TextBox ID="GroupPrice" runat='server' class="l_input" Width="30px"></asp:TextBox>元
                </ItemTemplate>
              </asp:Repeater>
            </div></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>节日价格:</strong></td>
            <td> <asp:TextBox ID="txtDayPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="txtDayPrice" ErrorMessage="节日价格格式不正确!"
                  ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>节日时间:</strong></td>
            <td><div id='hotelDiv'><asp:TextBox id='CheckInDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox>至 
            <asp:TextBox id='CheckOutDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox></div>
            <input id='IntervallCheckInAndChekOut' value='1' type='hidden' />
            <input id='CheckOut' type='hidden' runat="server" />
            <script type='text/javascript' src='/JS/systemall.js'></script><script type='text/javascript' src='/JS/homecn.js'></script>
            <div id='serverdate' value='2010-8-30' runat="server"></div><div id='m_contentend'></div>
             </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>预订价格:</strong></td>
            <td> <asp:TextBox ID="txtBookPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="txtBookPrice" ErrorMessage="预订价格格式不正确!"
                  ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>预订时间:</strong></td>
            <td> <asp:TextBox ID="txtBookDay" runat="server"  class="l_input"  Height="19px"></asp:TextBox> <font color="red">节日时间提前N天为预订价</font>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="txtBookDay" ErrorMessage="预订时间格式不正确!"
                  ValidationExpression="\d+" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>花材图片:</strong></td>
            <td>  <asp:TextBox ID="txt_logos" runat="server" Width="300px"  class="l_input"  Height="19px"></asp:TextBox>
                  <iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=txt_logos" marginheight="0"
                           marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>花材简介:</strong></td>
            <td><asp:TextBox ID="txtRemark" runat="server" class="l_input" TextMode="MultiLine" 
                    Height="108px" Width="323px"></asp:TextBox></td>
        </tr>
    <tr class="tdbgbottom">
        <td colspan="2">
           &nbsp;<asp:Button ID="EBtnSubmit" class="C_input" Text="编辑花材" runat="server" onclick="EBtnSubmit_Click" />
           &nbsp;<input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='FlowaPriManage.aspx'" id="Button2" />
        </td>
    </tr>
    </table>
    </form>
</body>
</html>
