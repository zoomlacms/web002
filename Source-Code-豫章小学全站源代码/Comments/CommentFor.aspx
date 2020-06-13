<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Comment.CommentFor, App_Web_yxogs14x" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head  >
<title>发表评论</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<script src="../../js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
function DealwithUploadPic(path, id) {
    if (document.getElementById(id).value.indexOf("|") > -1) {
        var filepath = document.getElementById("txtFiles").value;
        var cs = filepath.split('|');

        if (path.indexOf('|') > -1) {
            var temppath = path.split('|');
            document.getElementById("txtFiles").value = cs[0] + "|" + temppath[1];
        }
        else {
            document.getElementById("txtFiles").value = cs[0] + "|" + path;
        }
    } else {
        document.getElementById("txtFiles").value = path;
    }
    alert(path);
}
</script>
</head>
<body>
<form id="form1" runat="server">
  <div id="Comment">
    <div id="Comment_List">
      <div class="r_navigation">
        <ul>
          <li>评论总数：
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          </li>
          <li>支持：
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          </li>
          <li style="text-decoration: line-through;">反对：
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
          </li>
          <li><a href="#huifu" >发表评论</a></li>
        </ul>
      </div>
      <div class="clear"></div>
      <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <div  class="div_bot" >
            <div class="nodeDiv"> <%#GetHead(Eval("CommentID"))%>
              <div class="SideBar"> 评论人：<%# GetUserName(Eval("UserID","{0}")) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评论意见：<span class="yijian" ><%# GetPK(Eval("PK","{0}")) %></span> <%#GetLevel(Eval("CommentID"))%></div>
              <div class="ListText"> <%# Eval("Contents")%> </div>
              <div class="ListTime"><span class="huifu" onclick='showHuiFu(<%#Eval("commentID") %>)' >回复本评论</span> 评论时间：<%# Eval("CommentTime") %> &nbsp;&nbsp;评分：<%# Eval("Score")%></div>
              <%# GetNodes(Eval("CommentID"))%>
              <%-- <%#GetFoot(Eval("CommentID"))%>--%>
            </div>
          </div>
          <div class="clear"></div>
        </ItemTemplate>
      </asp:Repeater>
      <div>
        <div class="tdbg">
          <div align="center" class="tdbgleft">共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            个信息
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页
            <asp:Label ID="pagess" runat="server" Text="" />
            个信息/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>
            页 </div>
        </div>
      </div>
    </div>
    <div id="CommentInput" style=" margin-bottom:20px;">
      <div class="r_navigation">发表评论&nbsp;&nbsp;<span id="Span2">本评论只代表网友个人观点，不代表本站观点。</span></div>
      <div class="clear"></div>
      <div id="nocoment" style="display: none" runat="server">信息所属栏目评论功能已关闭</div>
      <div id="comentyes" style="display: none" runat="server">
        <div class="CommentSay">我也来说两句</div>
        <div class="CommentPK">
          <asp:RadioButtonList ID="RBLPK" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1" Selected="True">我支持</asp:ListItem>
            <asp:ListItem Value="0">我反对</asp:ListItem>
          </asp:RadioButtonList>
        </div>
        <div class="ListLayout1" style=" clear:both;"> <a name="huifu"></a>
          <div class="Comment">发表评论内容：</div>
          <div class="ContentRight">
            <asp:TextBox ID="TxtContents" runat="server" Rows="4" TextMode="MultiLine" Width="80%" Height="160"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="评论内容不能为空" ControlToValidate="TxtContents"></asp:RequiredFieldValidator>
          </div>
          <div > <span> 评 分：</span><span>
            <asp:DropDownList ID="DDLScore" runat="server">
              <asp:ListItem Value="1">1分</asp:ListItem>
              <asp:ListItem Value="2">2分</asp:ListItem>
              <asp:ListItem Value="3" Selected="True">3分</asp:ListItem>
              <asp:ListItem Value="4">4分</asp:ListItem>
              <asp:ListItem Value="5">5分</asp:ListItem>
            </asp:DropDownList>
            </span> </div>
          <div class="fuMian" >
            <div class="fuLeft" >附 件：</div>
            <div class="fuRight" runat="server">
              <div id="rigth1" runat="server">
                <input id="txtFiles" name="txtFiles" readonly="readonly" type="text" value="" style="width:210px;"  />
                <br />
                <iframe  frameborder="0" marginheight="0" marginwidth="0" scrolling="no" width="300" height="60"  src="FileUpload.aspx?Id=<%=Request.QueryString["ID"] %>&FieldName=Files&type=For"></iframe>
              </div>
              <div id="rigth2" runat="server"> <span class="huifu islogin" onmouseout="this.className='huifu islogin'" onmouseover="this.className='huifu islogin2'"  onclick="Login()" >上传附件，请点此登录</span> </div>
            </div>
          </div>
          <div class="clear"></div>
          <div>
            <asp:PlaceHolder ID="PhValCode" runat="server">验证码：
              <asp:TextBox ID="TxtValidateCode" MaxLength="6" Width="60" class="l_input" runat="server" onfocus="imgFocus()"></asp:TextBox>
              &nbsp;
              <asp:Image ID="VcodeLogin" runat="server" CssClass="imgHead" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ImageAlign="Middle"  ToolTip="点击刷新验证码"  onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
            </asp:PlaceHolder>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="验证码不能为空！" ControlToValidate="TxtValidateCode"></asp:RequiredFieldValidator>
          </div>
          <div style="text-align: center;">
            <asp:HiddenField ID="HdnItemID" runat="server" />
            <asp:HiddenField ID="HdnTitle" runat="server" />
            <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="发表评论" OnClick="Button1_Click" />
          </div>
        </div>
      </div>
    </div>
  </div>
  <div id="boxCovers" style="display:none;position:absolute; top:0px; left:0px; z-index:98;background:#b2b2b2;"></div>
  <div id="popupboxs" style="width:500px; height:240px; background:#fff; position:absolute; top:250px; left:350px; z-index:99; border:#33ccff solid 3px;display:none;">
    <div id="popHead" class="ptitle" ><span class="pspanl">盖楼回复</span><span id="pclose" class="pspanr">关闭</span></div>
    <div>
      <textarea rows="4" cols="1" id="txtContent" name="txtContent" class="txtR" ></textarea>
      <input type="hidden" id="txtpid" name="txtpid" value="0" />
    </div>
    <div>
      <div> 评 分：
        <select id="selScore" name="selScore">
          <option value="1" >1分</option>
          <option value="1" >2分</option>
          <option selected="selected" value="3" >3分</option>
          <option value="4" >4分</option>
          <option value="5" >5分</option>
        </select>
        <input type="radio" name="ispk" checked="checked" value="1"  />
        我支持
        <input type="radio" name="ispk"  value="0"  />
        我反对 </div>
      <div class="huileft"> 验证码：
        <asp:TextBox ID="txthuiVal" MaxLength="6" Width="60" class="l_input" runat="server" onfocus="imghuiFocus()"></asp:TextBox>
        &nbsp;
        <asp:Image ID="imghuiVal" runat="server" CssClass="imgHead" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ImageAlign="Middle"  ToolTip="点击刷新验证码"  onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
      </div>
      <div class="huiright">
        <input type="submit" id="btnhuifu" name="btnhuifu" value=" " onclick="return checkNull()" />
      </div>
    </div>
  </div>
  <div id="popupLogin" style="width:300px; height:200px; background:#fff; position:absolute; top:250px; left:350px; z-index:99; border:#33ccff solid 3px;display:none;">
    <div id="LoginHead" class="ptitle" ><span class="pspanl">用户登录</span><span id="lclose" class="pspanr">关闭</span></div>
    <div style="margin:10px 70px; width:200px;">
      <iframe src="login.aspx" frameborder="0" width="200"  ></iframe>
    </div>
  </div>
</form>
<script type="text/javascript" >
     var mx=0;
     var my = 0;
     var mw = 0;
     var mh = 0;
     var dw=0;
     var dh =0;
     var ismove = false;
     mw = $("#popupboxs").css("width").substring(0, $("#popupboxs").css("width").length - 2);
     mh = $("#popupboxs").css("height").substring(0, $("#popupboxs").css("height").length - 2);
     $(function () {
         $("#popHead").mousedown(function () {
             var evt = getEvent();
             var ptop = $("#popupboxs").css("top").substring(0, $("#popupboxs").css("top").length - 2);
             var pleft = $("#popupboxs").css("left").substring(0, $("#popupboxs").css("left").length - 2);            
             mx = evt.clientX - pleft;
             my = evt.clientY - ptop;
             ismove = true;
         });
         $("body").mousemove(function () {
             if (ismove == true) {          
                 var evt = getEvent();
                 var pleft = evt.clientX - mx;
                 var ptop = evt.clientY - my;                 
                $("#popupboxs").css("top", ptop);
                $("#popupboxs").css("left", pleft);     
             }
         });
         $("#popHead").mouseup(function () {
             mx = 0;
             my = 0;
             ismove = false;
         });
         $("#pclose").click(function () {
             $("#boxCovers").css("display", "none");
             $("#popupboxs").css("display", "none");
             $("#txtpid").val("0");
         })
     })
 function showHuiFu(pid) {
     $("#txtpid").val(pid);
     dw= $(document).width();
     dh = $(document).height();
     var ptop =0
     ptop = 250;
     ptop=ptop+ $(document).scrollTop();
     $("#boxCovers").css("width", dw);
     $("#boxCovers").css("height", dh);
     $("#boxCovers").css("display", "block");
     $("#boxCovers").css("opacity", "0.6");
     $("#popupboxs").css("top", ptop);
     $("#popupboxs").css("left", (dw - 500) / 2);
     $("#popupboxs").css("display", "block");
 }
 function getEvent() //同时兼容ie和ff的写法
 {
     if (document.all) return window.event;
     func = getEvent.caller;
     while (func != null) {
         var arg0 = func.arguments[0];
         if (arg0) {
             if ((arg0.constructor == Event || arg0.constructor == MouseEvent) || (typeof (arg0) == "object" && arg0.preventDefault && arg0.stopPropagation)) {
                 return arg0;
             }
         }
         func = func.caller;
     }
     return null;
 }
 function checkNull() {
     var conmsg = $("#txtContent").val();
     var ValdateMsg=$("#txthuiVal").val();
     if (conmsg == "" ) {
         alert("评论内容不能为空");
         return false;
     }else if(ValdateMsg=="") {
         alert("验证码不能为空");
         return false;
     }
     else {
         return true;
     }
 }
 //用户登录从这里开始
 function Login() {
     dw = $(document).width();
     dh = $(document).height();
     var ptop = 0
     ptop = 250;
     ptop = ptop + $(document).scrollTop();
     $("#boxCovers").css("width", dw);
     $("#boxCovers").css("height", dh);
     $("#boxCovers").css("display", "block");
     $("#boxCovers").css("opacity", "0.6");
     $("#popupLogin").css("top", ptop);
     $("#popupLogin").css("left", (dw-300)/2);
     $("#popupLogin").css("display", "block");     
 }
 $(function () {
     $("#LoginHead").mousedown(function () {
         var evt = getEvent();
         var ptop = $("#popupLogin").css("top").substring(0, $("#popupLogin").css("top").length - 2);
         var pleft = $("#popupLogin").css("left").substring(0, $("#popupLogin").css("left").length - 2);
         mx = evt.clientX - pleft;
         my = evt.clientY - ptop;
         ismove = true;
     });
     $("body").mousemove(function () {
         if (ismove == true) {
             var evt = getEvent();
             var pleft = evt.clientX - mx;
             var ptop = evt.clientY - my;
             $("#popupLogin").css("top", ptop);
             $("#popupLogin").css("left", pleft);
         }
     });
     $("#LoginHead").mouseup(function () {
         mx = 0;
         my = 0;
         ismove = false;
     });
     $("#lclose").click(function () {
         $("#boxCovers").css("display", "none");
         $("#popupLogin").css("display", "none");
     })
 })
 function shaxin() {
     $("#boxCovers").css("display", "none");
     $("#popupLogin").css("display", "none");
     $("#rigth1").show();
     $("#rigth2").hide();
 }
 function imgFocus() {
     $("#TxtValidateCode").select();
     var vsrc = "../Common/ValidateCode.aspx?t=" + Math.random();
     $("#VcodeLogin").attr("src",vsrc);
 }
 function imghuiFocus() {
     $("#txthuiVal").select();
     var vsrc = "../Common/ValidateCode.aspx?t=" + Math.random();
     $("#imghuiVal").attr("src", vsrc);
 }
 var isval = "<%=isValidate %>";
 var isssfor = "<%=iscfor %>"; 
 if (isval == "1") {
     alert("验证码错误，请重新输入");
     window.location.href = window.location.href + "#huifu";
 }
 if (isssfor == "1") {
     alert("添加评论成功！");
 }
 </script>
</body>
</html>