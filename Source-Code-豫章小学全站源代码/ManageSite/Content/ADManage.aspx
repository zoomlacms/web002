<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.ADManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Import Namespace="ZoomLa.BLL" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>广告管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />       
    <script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>  
    
</head>

<div id=dHTMLADPreview style='Z-INDEX: 1000; LEFT: 0px; VISIBILITY: hidden; WIDTH: 10px; POSITION: absolute; TOP: 0px; HEIGHT: 10px'></DIV>
<SCRIPT language = 'JavaScript'>
<!--
var tipTimer;

function locateObject(n, d)
{
   var p,i,x;

   if (!d) d=document;

   if ((p=n.indexOf('?')) > 0 && parent.frames.length)

   {d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}

   if (!(x=d[n])&&d.all) x=d.all[n]; 

   for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];

   for (i=0;!x&&d.layers&&i<d.layers.length;i++) x=locateObject(n,d.layers[i].document); return x;

}

function ShowADPreview(ADContent)

{
    showTooltip('dHTMLADPreview', event, ADContent, '#ffffff', '#000000', '#000000', '6000')
    parent.document.getElementById("main_right").height = document.body.offsetHeight + 300;
}

function showTooltip(object, e, tipContent, backcolor, bordercolor, textcolor, displaytime)

{

   window.clearTimeout(tipTimer)

   if (document.all) {

       locateObject(object).style.top=document.body.scrollTop+event.clientY+20

       locateObject(object).innerHTML='<table style="font-family:宋体; font-size: 9pt; border: '+bordercolor+'; border-style: solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; background-color: '+backcolor+'" width="10" border="0" cellspacing="0" cellpadding="0"><tr><td nowrap><font style="font-family:宋体; font-size: 9pt; color: '+textcolor+'">'+unescape(tipContent)+'</font></td></tr></table> '

       if ((e.x + locateObject(object).clientWidth) > (document.body.clientWidth + document.body.scrollLeft)) {

           locateObject(object).style.left = (document.body.clientWidth + document.body.scrollLeft) - locateObject(object).clientWidth-10;

       } else {

           locateObject(object).style.left=document.body.scrollLeft+event.clientX

       }

       locateObject(object).style.visibility='visible';

       tipTimer=window.setTimeout("hideTooltip('"+object+"')", displaytime);

       return true;

   } else if (document.layers) {

       locateObject(object).document.write('<table width="10" border="0" cellspacing="1" cellpadding="1"><tr bgcolor="'+bordercolor+'"><td><table width="10" border="0" cellspacing="0" cellpadding="0"><tr bgcolor="'+backcolor+'"><td nowrap><font style="font-family:宋体; font-size: 9pt; color: '+textcolor+'">'+unescape(tipContent)+'</font></td></tr></table></td></tr></table>')

       locateObject(object).document.close()

       locateObject(object).top=e.y+20

       if ((e.x + locateObject(object).clip.width) > (window.pageXOffset + window.innerWidth)) {

           locateObject(object).left = window.innerWidth - locateObject(object).clip.width-10;

       } else {

           locateObject(object).left=e.x;

       }

       locateObject(object).visibility='show';

       tipTimer=window.setTimeout("hideTooltip('"+object+"')", displaytime);

       return true;

   } else {

       return true;

   }

}
function hideTooltip(object) {
    //parent.document.getElementById("main_right").height = document.body.offsetHeight + 30;
    if (document.all) {

        locateObject(object).style.visibility = 'hidden';

        locateObject(object).style.left = 1;

        locateObject(object).style.top = 1;

        return false;

    } else {

        if (document.layers) {

            locateObject(object).visibility = 'hide';

            locateObject(object).left = 1;

            locateObject(object).top = 1;

            return false;

        } else {

            return true;

        }

    }

}
//-->
</SCRIPT>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">当前位置：功能导航 >><a href="">广告管理</a>&nbsp;[<a href="Advertisement.aspx"  style="color:Red">添加广告</a>]</div>
        <div class="divbox" id="nocontent" runat="server">暂无广告版位信息</div>     
        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="ADID" AllowPaging="True" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="Lnk_Click" >
            <Columns>
                <asp:TemplateField HeaderText="选择" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSel" runat="server" />
                    </ItemTemplate>
                    <ItemStyle CssClass="tdbg" Width="5%" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="ADID" HeaderText="序号" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <ItemStyle CssClass="tdbg" Width="5%" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="预览" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <ItemTemplate>
                       <a onMouseOver="<%#getimg(DataBinder.Eval(Container.DataItem, "ADId").ToString()) %>" onMouseOut="hideTooltip('dHTMLADPreview')" href="PreviewAD.aspx?ADId=<%#Eval("ADId")%>">预览</a>
                       
                    </ItemTemplate>
                     <ItemStyle  CssClass="tdbg" Width="5%" HorizontalAlign="Center" />
                </asp:TemplateField>                          
                <asp:TemplateField HeaderText="广告名称" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                   <ItemTemplate>
                        <a href="Advertisement.aspx?ADId=<%#Eval("ADId")%>" title='<%# Eval("ADName")%>'><%# Eval("ADName")%></a>
                    </ItemTemplate>                    
                      <ItemStyle  CssClass="tdbg" Width="20%" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="类型" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <HeaderStyle Width="5%" />
                    <ItemTemplate>
                        <%# GetADType(Eval("ADType","{0}")) %>
                    </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="priority" HeaderText="权重" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <ItemStyle  CssClass="tdbg" Width="5%" HorizontalAlign="Center" />
                </asp:BoundField> 
                <asp:TemplateField HeaderText="点击数" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <HeaderStyle Width="7%" />
                    <ItemTemplate>
                        <%#(bool)(Eval("countclick"))?Eval("clicks"):"不统计"%>
                    </ItemTemplate>
                     <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="浏览数" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <ItemTemplate>
                        <%#(bool)(Eval("countview"))?Eval("views"):"不统计"%> 
                    </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" Width="7%" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="剩余天数" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <ItemTemplate>
                      <%#( (DateTime)(Eval("OverdueDate")) - DateTime.Now).Days%>
                    </ItemTemplate>
                    <ItemStyle  CssClass="tdbg" Width="10%" HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="已审核" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                    <HeaderStyle Width="7%" />
                    <ItemTemplate>
                       <%# (bool)Eval("Passed") == false ? "<span style=\"color: #ff0033\">×</span>" : "√"%>                
                    </ItemTemplate>   
                    <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />                                  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >                    
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ADID") %>'>修改</asp:LinkButton> | 
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Copy" CommandArgument='<%# Eval("ADID") %>'>复制</asp:LinkButton> | 
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" OnClientClick="return confirm('确定要删除此广告吗？');" CommandArgument='<%# Eval("ADID") %>'>删除</asp:LinkButton> | 
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Pass" CommandArgument='<%# Eval("ADID") %>'><%# (bool)Eval("Passed") == false ? "通过审核" : "取消审核"%></asp:LinkButton> 
                    </ItemTemplate>
                     <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
            <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
            <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
        </asp:GridView>
        <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />&nbsp;
        <asp:Button ID="btndelete" CssClass="button"  runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择广告');return false;}else{return confirm('你确定要删除选中的广告吗？')}" Text="删除选定广告" OnClick="btndelete_Click" />&nbsp;
        <asp:Button ID="btnsetpassed" CssClass="button"  runat="server" Text="审核通过选定广告" OnClick="btnsetpassed_Click" />&nbsp;
        <asp:Button ID="btncancelpassed" CssClass="button"  runat="server" Text="取消审核选定广告" OnClick="btncancelpassed_Click" />
        
        </div>
    </form>
</body>
</html>
