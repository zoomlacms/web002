<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_SiteGet, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

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
        
        <span>后台管理</span> &gt;&gt; 方案<span>管理</span> </div>
    <div class="clearbox">
    </div>
  <div class="r_navigation">
    &nbsp;&nbsp;&nbsp;   
    
    <b>选择信息:</b>&nbsp;&nbsp;<a href=?type=2 target=main_right>节点</a>&nbsp;&nbsp;<a href=?type=2 target=main_right>文章</a>&nbsp;&nbsp;<a href=?type=2 target=main_right>标签</a>&nbsp;&nbsp;<a href=?type=2 target=main_right>模型</a>
    </div>

    <div class="clearbox">

    
    </div>
    <div>
    </div>
    <div style="text-align:center">
      
    </div>
     <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border" style="margin: 0 auto;">
     <tr>
     <td width="30%" style="overflow:auto;" valign="top" height="650">
      <asp:TreeView ID="tvNav" runat="server" ShowLines="True" NodeIndent="10" 
             ontreenodecheckchanged="tvNav_TreeNodeCheckChanged" 
             onselectednodechanged="tvNav_SelectedNodeChanged" 
             >
                        <NodeStyle BorderStyle="None" ImageUrl="~/Images/TreeLineImages/plus.gif" />
                        <ParentNodeStyle ImageUrl="~/Images/TreeLineImages/plus.gif" />
                        <SelectedNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                        <RootNodeStyle ImageUrl="~/Images/TreeLineImages/dashminus.gif" />
                    </asp:TreeView>
     
     
     </td>
      <td valign="top">
      
      
          <asp:Panel ID="Panel1" runat="server">
           <div id="cco" class="border" runat="server">
               <asp:Button ID="LinkNode" runat="server" Text="ok" class="C_input" onclick="LinkNode_Click"/>
           </div>
             <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto; margin-top:6px;">
      <tr align="center">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="25%" class="title">
           标题 </td>
     
   
        <td width="20%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server" onitemcommand="gvCard_ItemCommand">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("MainID")%>'/></td>
        <td height="22" align="center"><%# Eval("MainID")%></td>
        <td  align="left"><%#Eval("name") %></td>
        <td height="22" align="center">
             <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="ution" CommandArgument='<%# Eval("MainID") %>'>同步</asp:LinkButton>
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
             <asp:HiddenField ID="HiddenNodeInfo" runat="server"  />
              <asp:HiddenField ID="HiddenIsMain" runat="server"  Value="0"/>
              <asp:HiddenField ID="Hiddenlist" runat="server"  />
                <asp:HiddenField ID="HiddenisbackMolel" runat="server"  />
                 <asp:HiddenField ID="HiddenModelOk" runat="server"  />
                   <asp:HiddenField ID="HiddenNodeOK" runat="server"  />
                     <asp:HiddenField ID="HiddenM" runat="server"  />
                       <asp:HiddenField ID="HiddenC" runat="server"  />
                        <asp:HiddenField ID="HiddenNewModel" runat="server"  />
                       
              </td>
      </tr>
    </table>
             &nbsp; &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
              </asp:DropDownList>
             &nbsp; <asp:Button ID="Button1" runat="server" Text="同步信息" onclick="Button1_Click" class="C_input"  OnClientClick="if(!IsSelectedId()){alert('请选择提交项');return false;}else{return confirm('你确定要提交选中内容吗？')}"/>
    
          </asp:Panel>
      
     
      
      
      
      
      
      
      
      
      
      
      
      
      </td>
     </tr>
     </table>
  
    <div>
                 &nbsp;  &nbsp; &nbsp;      
                                                
                            &nbsp;  &nbsp; &nbsp;      
                                                
                        </div>
    </form>
</body>
</html>