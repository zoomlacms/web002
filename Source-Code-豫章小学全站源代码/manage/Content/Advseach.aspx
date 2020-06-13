<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.advseach, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>高级检索</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<style type="text/css">
.style2 { /*line-height: 120%;*/  
        width: 501px; height: 37px; }
.style4 { background: #e0f7e5; /*line-height: 120%;*/    padding: 0px; width: 4%; height: 293px; }
.style6 { background: #e0f7e5; /*line-height: 120%;*/    padding: 0px; width: 4%; height: 160px; /*line-height:50%;*/    padding: 0px; width: 24%; height: 10px; }
.style7 { margin-top: 0px; }
.style8 { background: #e0f7e5; /*line-height: 120%;*/    padding: 2px; width: 4%; }
.style9 { background: #e0f7e5; /*line-height: 120%;*/    padding: 0px; width: 4%; height: 160px; /*line-height:50%;*/ padding: 0px; width: 216px; height: 10px; }
.style10 { width: 216px; height: 37px; }
.style11 { width: 216px; height: 225px; }
.style14 { border-top: 1px solid transparent !important; margin-top: -1px !important; border-top: 0px; margin-top: 0px; height: 225px; clear: both; background: none; font-size: 0px; }
.style15 { color: #1e860b; font-weight: bold; line-height: 22px; letter-spacing: 8px; height: 27px; padding: 2px; background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top; }
.style16 { width: 130px; height: 28px; }
.style17 { height: 28px; width: 131px; }
</style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="r_navigation">后台管理 &gt;&gt; <a href="ContentManage.aspx">内容管理</a> &gt;&gt;高级检索</div>
      <div>
        <table width="100%" cellpadding="
            2" cellspacing="1" border="0" class="border" align="center">
          <tr align="center">
            <td colspan="2" class="style15" align="center"><b>高级检索</b></td>
          </tr>
          <tr class="WebPart">
            <td class="style4" align="center"><table class="tdbgleft">
                <tr>
                <td align="left" class="style6"><b>选择节点：</b></td>
              </tr>
                <tr>
                <td class="tdbgleft" align="center"><asp:ListBox ID="ListBox1" runat="server" Height="282px" Width="203px"   
                                    SelectionMode="Multiple" CssClass="style7">
                    <asp:ListItem Selected="True">&#160;&#160;逐浪CMS&#160;&#160;</asp:ListItem>
                    <asp:ListItem >&#160;|网店频道</asp:ListItem>
                    <asp:ListItem>|-男人</asp:ListItem>
                    <asp:ListItem>|--运动/户外/健身 </asp:ListItem>
                    <asp:ListItem>|--- 耐克</asp:ListItem>
                    <asp:ListItem>|---彪马</asp:ListItem>
                    <asp:ListItem>|---李宁</asp:ListItem>
                    <asp:ListItem>|---阿迪</asp:ListItem>
                    <asp:ListItem>|---匡威</asp:ListItem>
                    <asp:ListItem>|---Kappa</asp:ListItem>
                    <asp:ListItem>|---运动套装 </asp:ListItem>
                    <asp:ListItem>|---专柜代购</asp:ListItem>
                    <asp:ListItem>|---08款</asp:ListItem>
                    <asp:ListItem>|--- 三叶草</asp:ListItem>
                    <asp:ListItem>|-- 休闲裤/牛仔裤/内衣 </asp:ListItem>
                    <asp:ListItem>|---直筒裤</asp:ListItem>
                    <asp:ListItem>|---牛仔裤</asp:ListItem>
                    <asp:ListItem>|---休闲裤</asp:ListItem>
                    <asp:ListItem>|---休闲西裤</asp:ListItem>
                    <asp:ListItem>|---工装裤</asp:ListItem>
                    <asp:ListItem>|---短裤</asp:ListItem>
                    <asp:ListItem>|---新款秋裤 </asp:ListItem>
                    <asp:ListItem>|---ck内裤</asp:ListItem>
                    <asp:ListItem>|---内衣</asp:ListItem>
                    <asp:ListItem>|-- 男鞋/休闲鞋/皮鞋 </asp:ListItem>
                    <asp:ListItem>|---帆布鞋</asp:ListItem>
                    <asp:ListItem>|---运动鞋</asp:ListItem>
                    <asp:ListItem>|---休闲鞋</asp:ListItem>
                    <asp:ListItem>|---热卖男鞋</asp:ListItem>
                    <asp:ListItem>|---皮鞋</asp:ListItem>
                    <asp:ListItem>|---男靴</asp:ListItem>
                    <asp:ListItem>|---篮球鞋 </asp:ListItem>
                    <asp:ListItem>|---户外靴</asp:ListItem>
                    <asp:ListItem>|---板鞋</asp:ListItem>
                    <asp:ListItem>|-- 男女箱包/出门配件 </asp:ListItem>
                    <asp:ListItem>|---斜挎包</asp:ListItem>
                    <asp:ListItem>|---手提包</asp:ListItem>
                    <asp:ListItem>|---休闲包</asp:ListItem>
                    <asp:ListItem>|---单肩包</asp:ListItem>
                    <asp:ListItem>|---爱车族</asp:ListItem>
                    <asp:ListItem>|---汔车坐垫</asp:ListItem>
                    <asp:ListItem>|---皮带</asp:ListItem>
                    <asp:ListItem>|---眼睛</asp:ListItem>
                    <asp:ListItem>|---饰品</asp:ListItem>
                    <asp:ListItem>|---秋款帽</asp:ListItem>
                    <asp:ListItem>|-女人</asp:ListItem>
                    <asp:ListItem>|--女鞋</asp:ListItem>
                    <asp:ListItem>|-服饰 </asp:ListItem>
                    <asp:ListItem>|-美容 </asp:ListItem>
                    <asp:ListItem>|-时尚</asp:ListItem>
                    <asp:ListItem>|-居家</asp:ListItem>
                    <asp:ListItem>|-母婴</asp:ListItem>
                    <asp:ListItem>|-手机数码</asp:ListItem>
                    <asp:ListItem>|-运动</asp:ListItem>
                    <asp:ListItem>|-机票/酒店</asp:ListItem>
                    <asp:ListItem>|美容</asp:ListItem>
                    <asp:ListItem>|下载中心</asp:ListItem>
                    <asp:ListItem>|视频中心</asp:ListItem>
                    <asp:ListItem>|友情链接</asp:ListItem>
                    <asp:ListItem>&#160;|互动管理&#160;</asp:ListItem>
                  </asp:ListBox></td>
              </tr>
              </table></td>
            <td class="style4"><table class="tdbgleft">
                <tr>
                <td align="left" class="style9"><b>选择模型：</b></td>
              </tr>
                <tr>
                <td class="style10"><asp:DropDownList ID="DbTableDownList" runat="server" Width="225px" 
                                    AutoPostBack="True" 
                                    OnSelectedIndexChanged="DBTableDownList_SelectedIndexChanged" 
                                    Height="28px" > </asp:DropDownList></td>
                <td align="center" class="style2" runat="server" id="cc1"></td>
              </tr>
                <tr>
                <td align="left" class="style9"><b>选择查询字段：</b></td>
              </tr>
                <tr class="clearbox" lang="bla" style="border: 4% groove #FFFFFF; padding: 26px; position: static; z-index: inherit; width: 8px; list-style-image: none; table-layout: inherit">
                <td class="style11"><asp:ListBox ID="DbFieldDownList" runat="server" Height="217px" Width="227px"  SelectionMode="Multiple" AutoPostBack="True" /></td>
                <td class="style14"   20px" align="left" id ="searchValueList" colspan="-1"  ><br/>
                    &nbsp;<br/>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <table id="tb" cellpadding="-1" border="2" cellspacing="-1" class="border" 
                                      style="border-style: dotted; border-width: 2px" >
                  </table>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
              </tr>
              </table></td>
          </tr>
          <tr class="WebPart">
            <td height="22" align="left" class="style8"><span style="color:Red;">* </span></td>
            <td height="22"  align="left" class="tdbgleft" style="width: 24%" ><input name="button" type="button" class="C_input"  style="width:130px;"  onclick='additem("tb")' value="增加查询字段 ==〉" class="style17"/></td>
          </tr>
          <tr>
            <td height="22" align="center" colspan="2" class="tdbgleft" style="line-height: 25px;"><asp:HiddenField ID="HiddenField2" runat="server"  />
              &nbsp;&nbsp;
              <input type="submit" name="submit" class="C_input"  style="width:130px;"  onclick="getsub()" value="开 始 查 询" class="style16"/></td>
          </tr>
        </table>
      </div>
    </form>
</body>
    <script language="javascript" type="text/javascript">
var count=0 ;
function additem(id)
{
  var row,cell,str;
  
  row = document.getElementById(id).insertRow();
  
  if(row != null )
  {
cell = row.insertCell();
cell.innerHTML="<input id=\"St"+count+"\" type=\"text\" name=\"St"+count+"\" value= \"查询值："+count+"\"><input type=\"button\" value=\"删除\" onclick=\'deleteitem(this);\'>";
count ++;
  }
}
function deleteitem(obj)
{
  var curRow = obj.parentNode.parentNode;
  tb.deleteRow(curRow.rowIndex);
}
function getsub()
{
var re="";
for (var  i = 0 ;i<count;i++)
{
re += document.getElementsByName("St"+i)[0].value;
}
document.getElementById("Hidden1").value=re;
}
</script>
</html>