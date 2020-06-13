<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_ChildPros, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>获取主站方案管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" src="/JS/Popmenu.js" type="text/JavaScript"></script>
   <script language="javascript">
       function CheckAll(spanChk)//CheckBox全选
       {
           var oItem = spanChk.children;
           var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
           xState = theBox.checked;
           elm = theBox.form.elements;
           for (i = 0; i < elm.length; i++)
               if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
               if (elm[i].checked != xState)
                   elm[i].click();
           }
       }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; 内容管理  &gt;&gt; 主站共享信息 &gt;&gt; <span>获取主站方案管理</span></div>


    <div class="clearbox">

    
    </div>
    <div>
    </div>
    <div style="text-align:center">
      
    </div>
 
      
      
          <asp:Panel ID="Panel1" runat="server">
             <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto; ">
      <tr align="center">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="25%" class="title">
        方案名 </td>
          
     
   
        <td width="20%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server" onitemcommand="gvCard_ItemCommand" >       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("MainID")%>'/></td>
        <td height="22" align="center"><%# Eval("MainID")%></td>
        <td  align="left"><%#Eval("name") %></td>
        <td height="22" align="center">
        <a href="TypeContent.aspx?Fid=<%# Eval("MainID")%>&Type=<%# Eval("Type")%>"> 查看</a>    <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="ution" CommandArgument='<%# Eval("MainID") %>'>同步</asp:LinkButton>
       </td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="4" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        页
               
            <asp:HiddenField ID="HiddenNodeID" runat="server"  Value="0"/>
             <asp:HiddenField ID="HiddenType" runat="server"  />
              </td>
      </tr>
    </table>
              <asp:Button ID="Button1" runat="server" Text="同步此方案信息" onclick="Button1_Click" class="C_input"  OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}"/>
    
          </asp:Panel>
      
     
      
      
      
      
      
      
      
      
      
      
      

    <div>
                 &nbsp;  &nbsp; &nbsp;      
                                                
                            &nbsp;  &nbsp; &nbsp;      
                                                
                        </div>
    </form>
</body>
</html>
