<%@ page language="C#" autoeventwireup="true" inherits="Microb_UserInfo_info_PrivateLetter, App_Web_p1zoqyfi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户私信</title>
<link href="../../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../../App_Themes/Microblog/style.css" />
<script src="/js/jquery.js" type="text/javascript" language="javascript"></script>
<script src="/js/popup_js.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript" src="/js/interface.js"></script>
  <script src="/JS/ajaxrequest.js"></script>
  <script>
  
    // <!CDATA[

    function CallServer(input1,input2,input3,input4,context)
    {
  
          //为你在文本框中输入的信息，并且arg在这里就是将其值传递到
          //RaiseCallbackEvent(String eventArgument)方法对应的eventArgument中
          arg=input1.value+"|gzjoin|"+input2.value+"|gzjoin|"+input3.value+"|gzjoin|"+input4.innerHTML;
          //arg = infokind.value+"|gzjoin|"+infotitle.value+"|gzjoin|"+infosource.value+"|gzjoin|"+ input.innerHTML;
          //获取一个对客户端函数的引用；调用该函数时，将启动一个对服务器端事件的客户端回调。
          <%= ClientScript.GetCallbackEventReference(this, "arg", "ReceiveServerData", "context")%>; 
    }
    
        //客户端回调---回收处理
         function ReceiveServerData(result, context)
        {
            //context.innerText = result;
            //alert(title.value+"  录入成功！");
            //title.value=result;
            //self.location="addimage.aspx?infoid="+result;
        }

    function btup_onclick() 
    {
       //其他参数可以通过string类型上传，但是图片如何同时上传？
    }

    function btadd_onclick() {

    //此处点击一次，添加一个inputfile控件
    }

    // ]]>


        function addcontent(content) {
            document.getElementById("txt_Content").innerHTML += content;
        }

        function addico(content) {
            document.getElementById("txt_Content").innerHTML += content;
            var div = document.getElementById("close1");
            div.click();
        }

        function Postto() {
            var jqueryObj = $("#txt_Content");
            //获取节点的值
            var cont = jqueryObj.val();

            if (cont != "") {
                $.get("DataCommon.aspx?menu=login", null, callback);
            }
            else
            {
                alert("请输入内容！");
            }
        }
        //回调函数
        function callback(data) {
            if (data == "1") {
                alert("请先登录！");
            } else {
                document.getElementById("Button1").click();
            }
        }

        function success() {
            //location.href = 'Content.aspx';
        }

        $(document).ready(function () {
            //示例1，默认弹出层
            new PopupLayer({ trigger: "#ele1", popupBlk: "#blk1", closeBtn: "#close1",
                offsets: {
                    x: 0,
                    y: 10
                }
            });
        });
  </script>
</head>
<body>
<form id="form1" runat="server">
<div>
  <div style="background-color:#EFF4F7">发私信</div> 
  <asp:HiddenField id="hfid" runat="server"/>
  <table>
    <tr>
    <td>发私信给：</td>
    <td><asp:TextBox ID="txtTo" runat="server"></asp:TextBox></td></tr>
    <tr>
    <td>私信内容：</td>
    <td><asp:TextBox ID="txt_Content" runat="server" TextMode="MultiLine" 
          Height="131px" Width="334px"></asp:TextBox><br />
            <span id="ele1"><a href="javascript:void(0)">
                            <img src="../../App_Themes/Microblog/images/14.jpg" alt="" /></a><a href="javascript:void(0)">表情</a></span>
           <div id="blk1" class="blk" style="display: none;">
            <div class="main" style="border-top:2px solid #FF6D00;border-bottom:2px solid #FF6D00;">
           <div ><a href="javascript:void(0)" id="close1"  style="float:right;padding-right:10px;color:#F00" title="关闭">×</a></div>
           <div style="clear:both"></div>
            <ul>
                <div id="biaoqing" name="biaoqing"></div>
                <script language="javascript" type="text/javascript">
                    var ico = "[呵呵],smile.gif|[嘻嘻],tooth.gif|[哈哈],laugh.gif|[爱你],love.gif|[泪],sad.gif|[晕],dizzy.gif|[困],sleepy.gif|[汗],sweat.gif|[怒],angry.gif|[哼],hate.gif|[抓狂],crazy.gif|[蛋糕],cake.gif|[咖啡],cafe_org.gif|[伤心],unheart.gif|[下雨],rain.gif|[猪头],pig.gif|[月亮],moon.gif|[冰棍],ice.gif|[帽子],hat_org.gif|[干杯],cheer.gif|[礼花],bingo_org.gif|[微风],wind_org.gif|[雨伞],umb_org.gif|[电视机],tv_org.gif|[星],star_org.gif|[话筒],m_org.gif|[音乐],music_org.gif|[电影],movie_org.gif|[唱歌],ktv_org.gif|[房子],house_org.gif|[足球],football.gif|[阴天],dark_org.gif";
                    var EmoticonsArr = ico.split('|');
                    var biaoqcontent = "";
                    for (var i = 0; i < EmoticonsArr.length; i++) {
                        var emotarr = EmoticonsArr[i].toString().split(',')
                        biaoqcontent += "<li class='box'><a href=\"javascript:void(0)\" onclick=\"addico('" + emotarr[0] + "')\"><img src='/App_Themes/Microblog/images/" + emotarr[1] + "' title='" + emotarr[0].replace(']', '').replace('[', '') + "' /></a></li>"
                    }
                    biaoqcontent += "<div style='clear:both'></div>";
                    window.onload = function () {
                        document.getElementById("biaoqing").innerHTML = biaoqcontent;
                    }
                </script>
            </ul></div></td>
    </tr>
    <tr><td><asp:Button ID="btb" runat="server" Text="发送" onclick="btb_Click" /><div id="tips" runat='server' style="color:Red"></div></td></tr>
  </table>
        
</div>
</form>
</body>
</html>
