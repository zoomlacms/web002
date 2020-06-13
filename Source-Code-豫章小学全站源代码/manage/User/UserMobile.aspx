<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserMobile, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>选择会员手机号</title>
<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<% m_UserInput = Request.QueryString["OpenerText"];%>
<body>
<form id="form1" runat="server">
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border">
      <tr class="title" style="height: 22">
        <td align="left"><b>已经选定的用户：</b></td>
        <td align="right"><a href="javascript:window.close();">返回&gt;&gt;</a></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="left"><input type="text" id="UserNameList" class="l_input" size="60" maxlength="200" readonly="readonly" class="inputtext" />
          <input type="hidden" name="HdnUserName" id="HdnUserName" value="" /></td>
        <td align="center"><input type="button"  name="del1" onclick="del(1)" value="删除最后" class="C_input" />
          <input type="button"  name="del2" onclick="del(0)" value="删除全部" class="C_input" /></td>
      </tr>
    </table>
    <br />
    <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border">
    <tr class="title">
      <td align="left"><b>会员列表：</b></td>
      <td align="right"></td>
    </tr>
    <tr>
    <td valign="top" colspan="2"><div id="DivUserName" runat="server" visible="false"> 未找到任何用户！</div>
    <asp:Repeater ID="RepUser" runat="server" OnItemDataBound="RepUser_ItemDataBound">
      <HeaderTemplate>
        <table width="100%" border="0" cellspacing="1" cellpadding="1" class="border">
        <tr>
      </HeaderTemplate>
      <ItemTemplate>
        <td align="center"><a href="#" onclick="add('<%# Eval("Mobile") %>')"> <%# Eval("UserName") %> </a></td>
        <% 
                  i++; %>
        <% if (i % 8 == 0 && i > 1)
                  {%>
        </tr>
        <tr>
        <%} %>
      </ItemTemplate>
      <FooterTemplate>
        </tr>
        </table>
      </FooterTemplate>
    </asp:Repeater>
    </td>
    </tr>
    <tr class="tdbg">
      <td align="center" colspan="2"><div id="DivAdd" runat="server"> </div></td>
    </tr>
    </table>
    <table border="0" align="center" cellpadding="2" cellspacing="0">
      <tr>
        <td align="center"></td>
      </tr>
    </table>
    <div id="pager1" runat="server"></div>
  </div>
  <script language="javascript" type="text/javascript">
    document.getElementById('UserNameList').value = opener.document.getElementById('<%= m_UserInput %>').value;
    function add(obj)
    {
        if(obj==""){return false;}
        if(opener.document.getElementById('<%= m_UserInput %>').value=="")
        {
            opener.document.getElementById('<%= m_UserInput %>').value=obj;
            document.getElementById('UserNameList').value = opener.document.getElementById('<%= m_UserInput %>').value;
            return false;
        }
        var singleUserName=obj.split(",");
        var ignoreUserName="";
        for(i=0;i<singleUserName.length;i++)
        {
            if(checkUserName(opener.document.getElementById('<%= m_UserInput %>').value,singleUserName[i]))
            {
                ignoreUserName=ignoreUserName+singleUserName[i]+" ";
            }
            else
            {
                opener.document.getElementById('<%= m_UserInput %>').value = opener.document.getElementById('<%= m_UserInput %>').value + "," + singleUserName[i];
                document.getElementById('UserNameList').value = opener.document.getElementById('<%= m_UserInput %>').value;
            }
        }
        if(ignoreUserName!="")
        {
            alert(ignoreUserName+"用户已经存在，此操作已经忽略！");
        }
    }
    function del(num)
    {
        if (num==0 || opener.document.getElementById('<%= m_UserInput %>').value=="" || opener.document.getElementById('<%= m_UserInput %>').value==",")
        {
            opener.document.getElementById('<%= m_UserInput %>').value="";
            document.getElementById('UserNameList').value="";
            return false;
        }
    
        var strDel=opener.document.getElementById('<%= m_UserInput %>').value;
        var s=strDel.split(",");
        opener.document.getElementById('<%= m_UserInput %>').value = strDel.substring(0,strDel.length-s[s.length-1].length-1);
        document.getElementById('UserNameList').value = opener.document.getElementById('<%= m_UserInput %>').value;
    }
    
    function checkUserName(UserNamelist,thisUserName)
    {
      if (UserNamelist==thisUserName){
            return true;
      }
      else{
        var s=UserNamelist.split(",");
        for (j=0;j<s.length;j++){
            if(s[j]==thisUserName)
                return true;
        }
        return false;
      }
    }
        </script>
</form>
</body>
</html>