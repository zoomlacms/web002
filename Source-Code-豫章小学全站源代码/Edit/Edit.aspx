<%@ page language="C#" autoeventwireup="true" enableviewstatemac="false" inherits="Edit_EditContent_EditCont, App_Web_hhnc2pzl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>文档编辑</title>
<script src="../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
<style type="text/css">
#sp_01 p{padding-left:8px; padding-top:8px; color:#666666;}
#sp_01 span{margin-left:25px}
.editcontent{width:100%;height:600px;z-index:1;}
</style>
</head>
<body>
    <form id="myform" name="myform" action="#" runat="server" method="post">

     <% //获取服务器的地址
        string URL = this.Session["URL"].ToString();
        string DocType;
        string DocTitle = "";
        //起草文件,则ID为NULL,否则为记录的主键
        string ID= Request.QueryString["ID"];
        DocType = Request.QueryString["DocType"];
        //获取文件的 类型
        if (DocType == null || DocType=="")
        {
            DocType = "doc";
        }
        else
        {
            DocType = Request.QueryString["DocType"];
        }
        if (ID == null || ID == "")
        {
            //获取新建文件的类型         
            DocType = Request.QueryString["DocType"];
        }
        else
        { //获取DocTitle
            DocTitle = Request.QueryString["DocTitle"];
        }
 %>  
 <script type="text/javascript" language="javascript"  for="WebOffice1"  event="NotifyCtrlReady">
 document.getElementById("Tgid").value='<%=Request.QueryString["ID"] %>';
 var tgid=document.getElementById("Tgid").value;

           WebOffice1_NotifyCtrlReady() ;
           function WebOffice1_NotifyCtrlReady() {
	//如果是编辑已有文件，则文件路径传给LoadOriginalFile的第一个参数
if ((tgid == null || tgid=="") || tgid=="0"){
document.all.WebOffice1.LoadOriginalFile("","<%=DocType%>");
}else {
document.all.WebOffice1.LoadOriginalFile('<%=URL %>/S_word.aspx?ID='+tgid,"<%=DocType%>");}
//屏蔽标准工具栏的前几个按钮
document.all.WebOffice1.SetToolBarButton2("Standard",1,1);
document.all.WebOffice1.SetToolBarButton2("Standard",2,1);
document.all.WebOffice1.SetToolBarButton2("Standard",3,1);
document.all.WebOffice1.SetToolBarButton2("Standard",6,1);
document.all.WebOffice1.HideMenuItem(0x01);
   <%if (DocType   == "doc") {%>
        //屏蔽文件菜单项
        document.all.WebOffice1.SetToolBarButton2("Menu Bar",1,1);
        //屏蔽 保存快捷键(Ctrl+S) 
        document.all.WebOffice1.SetKeyCtrl(595,-1,0);
        //屏蔽 打印快捷键(Ctrl+P) 
        document.all.WebOffice1.SetKeyCtrl(592,-1,0);
    <%}else if(DocType   == "xls") {%>
        //屏蔽文件菜单项
        document.all.WebOffice1.SetToolBarButton2("Worksheet Menu Bar",1,1);         
    <%} %>
}
 </script>
<div style="background-color:#E0F2FE;padding:5px 0px 5px 5px;margin-bottom:5px;color:#0066FF">
<input type="hidden"  value='<%=DocTitle %>' id="DocTitle" />  
<span id="doctilespan" style="width:100%;display:block;text-align:center;margin-bottom:5px;"><%=DocTitle %></span>
<input style="border:none;cursor:pointer;text-align:right;width:80px;background-image:url('images/qa5.gif');background-repeat:no-repeat;background-color:#E0F2FE" id="Crea" type="button"  value="新建文档"  onclick="newDoc()" />  

<input style="border:none;cursor:pointer;width:70px;background-image:url('images/oldguest.gif');background-repeat:no-repeat;text-align:center;background-color:#E0F2FE" id="tiG" type="button"  value="写提纲"  onclick="SetG(this.id)" />   
<input style="border:none;cursor:pointer;background-color:#E0F2FE;width:80px;background-image:url('images/write.gif');background-repeat:no-repeat;text-align:center;" id="caoG" type="button"  value="写草稿"  onclick="SetG(this.id)" />   
<input style="border:none;cursor:pointer;background-image:url('images/Mazes_Mini_063.png');background-repeat:no-repeat;text-align:right;background-color:#E0F2FE;width:110px" id="WSave" type="button"  value="上传到服务器"  onclick="return SaveDoc()" />   
<input id="Lsave" type="button" value=" 另存为"  onclick="return LSaveDoc()" style="border:none;cursor:pointer;background-color:#FFFFFF;display:none;background-image:url('images/kksd1183_9_m.gif');background-repeat:no-repeat;background-color:#E0F2FE;text-align:right"  />
<a href="EditList.aspx" target="_parent" style="border:none;cursor:pointer;height:3px;width:60px;background-color:#E0F2FE;padding:2px;font-size:12px;color:Black;text-decoration:none;text-align:right;background-image:url('images/site_icon.gif');background-repeat:no-repeat;" title="打开写作箱" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
<div id="Xtg" style="display:none;">
      <p>提纲说明：<br />
    <span></span> 提纲是文章的总体框架，是用立意贯穿材料而组成文章的有机整体。您可在写作任务的支配和相关材料的支撑下，根据您的构思成果，参考本平台提供的文体模式，在此勾勒出您文章的总体框架，以使您的写作更加有条理和富有成效。</p>
<%--<asp:TextBox ID="content1" TextMode="MultiLine" runat="server" class="ckeditor" ></asp:TextBox>--%>
    <script type="text/javascript">
        function newDoc() {
            location = "Edit.aspx?ID=0&DocType=&DocTitle=&uptp=&date="+Date();
        }

        var edit;
        window.setInterval(function () {
            if ($("#sp_01").css("display") == "none") {
                $("#<%=content.ClientID %>").val(edit.document.getBody().getHtml());
                $.get("Edit.aspx?Tgid=" + $("#Tgid").val() + "&Tg=true&va=" + escape($("#<%=content.ClientID %>").val()) + "&title=" + $("#DocTitle").val(), function (d) {
                    $("#Tgid").val(d);
                    parent.ShowS("1");
                })
                window.setTimeout(function () {
                    parent.ShowS("0");
                }, 3000)
            }
        }, 180000);
        
        </script>
<script language="javascript" type="text/javascript">
// ---------------------== 关闭页面时调用此函数，关闭文档--------------------- //
function window_onunload() {
	document.all.WebOffice1.Close();
}
// -----------------------------== 保存文档 ==------------------------------------ //
function SaveDoc() {
var titleIs=$("#DocTitle").val();
var up="0";
var tgid= $("#Tgid").val();
//if(tgid=="0")
//{
$.get("Edit.aspx?Tgid=" + $("#Tgid").val() + "&Tg=true&va=" + escape($("#<%=content.ClientID %>").val()) + "&title=" + $("#DocTitle").val(), function (d) {
            $("#Tgid").val(d);
            parent.ShowS("0");
        })
//}else{

if(tgid!="0")
{
    if(titleIs=="")
    {
         var title=prompt("请输入文档标题，不需要定义后缀。","");
        if(title==null)
        {
        return false;
        }
        myform.DocTitle.value=title;
    }
    $("#Xtg").css("display","none");
    $("#sp_01").css("display","");
        up="1";
}else
{
     var title=prompt("请输入文档标题，不需要定义后缀。","");
    if(title==null)
    {
    return false;
    }
    myform.DocTitle.value=title;
    up="0";
}
//恢复被屏蔽的菜单项和快捷键
    document.all.WebOffice1.SetToolBarButton2("Standard",1,3);
    document.all.WebOffice1.SetToolBarButton2("Standard",2,3);
    document.all.WebOffice1.SetToolBarButton2("Standard",3,3);
    document.all.WebOffice1.SetToolBarButton2("Standard",6,3);
    
    <%if (DocType   == "doc") {%>
        //恢复文件菜单项
        document.all.WebOffice1.SetToolBarButton2("Menu Bar",1,4);
        //恢复 保存快捷键(Ctrl+S) 
        document.all.WebOffice1.SetKeyCtrl(595,0,0);
        //恢复 打印快捷键(Ctrl+P) 
        document.all.WebOffice1.SetKeyCtrl(592,0,0);
    <%}else if(DocType   == "xls") {%>
        //恢复文件菜单项
        document.all.WebOffice1.SetToolBarButton2("Worksheet Menu Bar",1,4);         
    <%} %>
    
//初始化Http引擎
document.all.WebOffice1.HttpInit();
//添加相应的Post元
document.all.WebOffice1.HttpAddPostString("DocTitle",escape(myform.DocTitle.value));
 if(up=="1")
 {
document.all.WebOffice1.SetTrackRevisions(0);
document.all.WebOffice1.ShowRevisions(0);
document.all.WebOffice1.HttpAddPostString("ID",$("#Tgid").val());
 }else{
 document.all.WebOffice1.SetTrackRevisions(0);
document.all.WebOffice1.ShowRevisions(0);
document.all.WebOffice1.HttpAddPostString("ID","0");
 }
document.all.WebOffice1.HttpAddPostString("DocType","<%=DocType%>");

$("#<%=content.ClientID %>").val(edit.document.getBody().getHtml());
document.all.WebOffice1.HttpAddPostString("Content",escape($("#<%=content.ClientID %>").val()));

//把当前文档添加到Post元素列表中，文件的标识符䶿DocContent
document.all.WebOffice1.HttpAddPostCurrFile("DocContent","");
var vtRet;
 //HttpPost执行上传的动仿WebOffice支持Http的直接上传，在upload.aspx的页面中,解析Post过去的数慿
 //拆分出Post元素和文件数据，可以有选择性的保存到数据库中，或保存在服务器的文件中⾿
//HttpPost的返回值，根据upload.aspx中的设置，返回upload.aspx中Response.Write回来的数据
vtRet = document.all.WebOffice1.HttpPost("<%=URL %>/upload.aspx");
    if($("#DocTitle").val()==""){
        alert("草稿保存成功");
        location="Edit.aspx?ID="+ $("#Tgid").val()+"&DocType="+"<%=DocType%>"+"&DocTitle="+myform.DocTitle.value+"&uptp=Iser";
    }else{
alert("文件保存成功");
        $("#Lsave").show();
//location="Edit.aspx?ID="+vtRet+"&DocType="+"<%=DocType%>"+"&DocTitle="+myform.DocTitle.value+"&uptp=Iser";
}

return_onclick();// }
}
function LSaveDoc() {
//恢复被屏蔽的菜单项和快捷键
    document.all.WebOffice1.SetToolBarButton2("Standard",1,3);
    document.all.WebOffice1.SetToolBarButton2("Standard",2,3);
    document.all.WebOffice1.SetToolBarButton2("Standard",3,3);
    document.all.WebOffice1.SetToolBarButton2("Standard",6,3);           
    <%if (DocType   == "doc") {%>
        //恢复文件菜单项
        document.all.WebOffice1.SetToolBarButton2("Menu Bar",1,4);
        //恢复 保存快捷键(Ctrl+S) 
        document.all.WebOffice1.SetKeyCtrl(595,0,0);
        //恢复 打印快捷键(Ctrl+P) 
        document.all.WebOffice1.SetKeyCtrl(592,0,0);
    <%}else if(DocType   == "xls") {%>
        //恢复文件菜单项
        document.all.WebOffice1.SetToolBarButton2("Worksheet Menu Bar",1,4);         
    <%} %>
//初始化Http引擎
document.all.WebOffice1.HttpInit();
document.all.WebOffice1.HttpAddPostString("DocTitle", escape(myform.DocTitle.value));
 document.all.WebOffice1.SetTrackRevisions(0);
document.all.WebOffice1.ShowRevisions(0);
document.all.WebOffice1.HttpAddPostString("ID","0");
document.all.WebOffice1.HttpAddPostString("DocType","<%=DocType%>");
document.all.WebOffice1.HttpAddPostCurrFile("DocContent","");
var vtRet;
vtRet = document.all.WebOffice1.HttpPost("<%=URL %>/upload.aspx");
alert("文件上传成功");
//location="Edit.aspx?ID="+ $("#Tgid").val()+"&DocType="+"<%=DocType%>"+"&DocTitle="+myform.DocTitle.value+"&uptp=Iser";
return_onclick(); 
}
</script>
   <textarea  cols="90" rows="10" id="content" name="content" runat="server"></textarea>

<script id="headscript" type="text/javascript">
//<![CDATA[
    //CKEDITOR.replace('content1').document.getBody().getHtml();
 edit=CKEDITOR.replace('<%= content.ClientID %>',
{
    //skin: 'v2',
    height:"400",
    toolbar: [['Source', '-', 'Bold', 'Italic', 'Underline', 'Strike'], ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote'], ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'], ['Link', 'Unlink', 'Anchor'], ['Image', 'Flash', 'SpecialChar'], '/', ['Styles', 'Format', 'Font', 'FontSize'], ['TextColor', 'BGColor', 'Smiley', 'ShowBlocks', 'Maximize']]
});
</script>
</div>
<div id="sp_01" style="">
    <input type="hidden"  value='' id="Tgid" runat="server" />
        <div class="editcontent">
        <object style="z-index:1;" id="WebOffice1" height="100%" width="100%" 
        classid="clsid:E77E049B-23FC-4DB8-B756-60529A35FAD5" 
        codebase="wordEdit/WebOffice.ocx#version=6,0,5,0">
        <param name="_Version" value="65536" />
        <param name="_ExtentX" value="6350" />
        <param name="_ExtentY" value="6350" />
        <param name="_StockProps" value="0" />
        </object></div>

           <%-- <div class="editcontent"> 
                <script type="text/javascript" src="wordEdit/LoadWebOffice.js"></script>
            </div>--%>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function SetG(id) {
        if (id == "tiG") {
            $("#<%=content.ClientID %>").val(edit.document.getBody().getHtml());
            $.get("Edit.aspx?Tgid=" + $("#Tgid").val() + "&Tg=true&va=" + escape($("#<%=content.ClientID %>").val()) + "&title=" + $("#DocTitle").val(), function (d) {
                $("#Tgid").val(d);
            })
            $("#Xtg").css("display", "");
            $("#sp_01").css("display", "none");
        } else {
            parent.ShowS("0");
            $("#Xtg").css("display", "none");
            $("#sp_01").css("display", "");
        }
    }
//var addNew="";
    function copytext(content) {
        var vObj = document.all.WebOffice1.GetDocumentObject();
        vObj.Application.Selection.Range.Text = content;
    }
    function copyimg(src) {
        //当前光标位置插入图片
        document.all.WebOffice1.InSertFile(src, 8);
    }


</script>
