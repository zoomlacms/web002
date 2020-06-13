<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="Microb_ThemeVBlog, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-主题信息</title>
    <link href="/App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/Microblog/style.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript" language="javascript"></script>
    <script src="../js/popup_js.js" type="text/javascript" language="javascript"></script>
    <script src="../JS/ajaxrequest.js"></script>
    <SCRIPT src="/js/artZoom.js" type=text/javascript></SCRIPT>
    <script type="text/javascript" src="/js/interface.js"></script>
    <script src="/js/Microb.js" type="text/javascript" language="javascript"></script>
    <script type="text/javascript">
    var url = window.location.href;
    function g_del(id) {   //删除
        g_dels(id, url);
    }
    function g_Dile(userid, forid, id) {  //添加
        g_Diles(userid, forid, id, url);
    }
    function Comm(Obj, val) {
        var value = Obj.value.replace(/(^\s*)|(\s*$)/g, "");
        var tips = document.getElementById("tip" + val);

        if (Obj.value.length <= 140) {
            tips.innerHTML = "还能输入" + (140 - Obj.value.length) + "个字";
            document.getElementById("btnCom_" + val).disabled = "";
        } else {
            tips.innerHTML = "<font color='red'>超出" + (Obj.value.length - 140) + "个字</font>";
            document.getElementById("btnCom_" + val).disabled = "disabled";
        }
    }


	    $(document).ready(function () {
	        uploadcreate($("#uploadbox"));
	    });

	    var hideDiv = function (idName) {
	        $("#" + idName).fadeOut("fast");
	    };

	    //载入中的GIF动画
	    var loadingUrl = "../images/ajax-loader.gif";

	    //选择文件后的事件,iframe里面调用的
	    var uploading = function (imgsrc) {
	        var el = $("#uploading");
	        $("#ifUpload").fadeOut("fast");
	        el.fadeIn("fast");
	        el.html("<img src='" + loadingUrl + "' align='absmiddle' /> 上传中...");
	        return el;
	    };

	    //重新上传方法    
	    var uploadinit = function () {
	        $("#uploading").fadeOut("fast", function () {
	            $("#ifUpload").fadeIn("fast");
	        });

	    };

	    //上传时程序发生错误时，给提示，并返回上传状态
	    var uploaderror = function () {
	        alert("程序异常，上传未成功。");
	        uploadinit();
	    };

	    //上传成功后的处理
	    var uploadsuccess = function (newpath) {
	        $("#txtContent").append("<img src=\"" + newpath + "\" onload=\"if(this.width>300){this.width=300;}\" />");
	        var el = $("#uploading");
	        el.html("上传成功,<a href=\"javascript:void(0);\" onclick=\"uploadinit();\">[重新上传]</a>.");
	    };


	    //创建一个上传控件
	    var uploadcreate = function (el) {
	        var strContent = "<div class='uploadcontrol'><iframe src=\"upload.aspx\" id=\"ifUpload\" frameborder=\"no\" scrolling=\"no\" style=\"width:400px; height:28px;\"></iframe>";
	        strContent += "<div class=\"uploading\" id=\"uploading\" style=\"display:none;\" ></div>";
	        strContent += "<div class=\"image\" id=\"panelViewPic\" style=\"display:none;\"></div></div>";
	        el.append(strContent);
	    };
	 	

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


        var ajax = new AJAXRequest();
        function showinput() {
            var obj = document.getElementById("txt_Content");
            var value = obj.value.replace(/(^\s*)|(\s*$)/g, "");

            if (obj.value == "") {
                document.getElementById("lastNummber").innerHTML = 140;
            }
            else if (obj.value.length <= 140) {
                document.getElementById("tip").innerHTML = "你还可以输入";

                document.getElementById("ibFabu").disabled = "";
                document.getElementById("lastNummber").innerHTML = 140 - obj.value.length;
            }
            else {
                document.getElementById("tip").innerHTML = "超出";
                document.getElementById("ibFabu").disabled = "disabled";
                document.getElementById("lastNummber").innerHTML = obj.value.length - 140;
            }
        }
        window.onload = function () {
            showinput();
        }

        function clickhuati() {
            addcontent("#请在这里输入自定义话题#");
        }

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
            new PopupLayer({ trigger: "#ele2", popupBlk: "#blk2", closeBtn: "#close2",
                offsets: {
                    x: 0,
                    y: 10
                }
            });
            new PopupLayer({ trigger: "#ele3", popupBlk: "#blk3", closeBtn: "#close3",
                offsets: {
                    x: 0,
                    y: 10
                }
            });
            new PopupLayer({ trigger: "#ele4", popupBlk: "#blk4", closeBtn: "#close4",
                offsets: {
                    x: 0,
                    y: 10
                }
            });
        });
        function addvideo() {
            document.getElementById("txtvidio").value = document.getElementById("video_txt").value;
            var div = document.getElementById("close3");
            div.click();
        }

        function addmusic() {
            document.getElementById("txtmusic").value = document.getElementById("musictxt").value;
            var div = document.getElementById("close4");
            div.click();
        }

         var url = window.location.href;

        function g_del(id) {   //删除
            g_dels(id, url);
        }

        function g_Dile(userid, forid, id) {  //添加
            g_Diles(userid, forid, id, url);
        }

        function Comm(Obj, val) {
            var value = Obj.value.replace(/(^\s*)|(\s*$)/g, "");
            var tips = document.getElementById("tip" + val);

            if (Obj.value.length <= 140) {
                tips.innerHTML = "还能输入" + (140 - Obj.value.length) + "个字";
                document.getElementById("btnCom_" + val).disabled = "";
            } else {
                tips.innerHTML = "<font color='red'>超出" + (Obj.value.length - 140) + "个字</font>";
                document.getElementById("btnCom_" + val).disabled = "disabled";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="blk1" class="blk" style="display: none;">
        <div class="head">
            <div class="head-right">
            </div>
        </div>
        <div class="main">
            <h2>
                常用表情</h2>
            <a href="javascript:void(0)" id="close1" class="closeBtn" title="关闭">×</a>
            <ul>
                <span id="biaoqing" name="biaoqing"></span>
                <script language="javascript" type="text/javascript">
                    var ico = "[呵呵],smile.gif|[嘻嘻],tooth.gif|[哈哈],laugh.gif|[爱你],love.gif|[泪],sad.gif|[晕],dizzy.gif|[困],sleepy.gif|[汗],sweat.gif|[怒],angry.gif|[哼],hate.gif|[抓狂],crazy.gif|[蛋糕],cake.gif|[咖啡],cafe_org.gif|[伤心],unheart.gif|[下雨],rain.gif|[猪头],pig.gif|[月亮],moon.gif|[冰棍],ice.gif|[帽子],hat_org.gif|[干杯],cheer.gif|[礼花],bingo_org.gif|[微风],wind_org.gif|[雨伞],umb_org.gif|[电视机],tv_org.gif|[星],star_org.gif|[话筒],m_org.gif|[音乐],music_org.gif|[电影],movie_org.gif|[唱歌],ktv_org.gif|[房子],house_org.gif|[足球],football.gif|[阴天],dark_org.gif";
                    var EmoticonsArr = ico.split('|');
                    var biaoqcontent = "";
                    for (var i = 0; i < EmoticonsArr.length; i++) {
                        var emotarr = EmoticonsArr[i].toString().split(',')
                        biaoqcontent += "<li class='box'><a href=\"javascript:void(0)\" onclick=\"addico('" + emotarr[0] + "')\"><img src='/App_Themes/Microblog/images/" + emotarr[1] + "' title='" + emotarr[0].replace(']', '').replace('[', '') + "' /></a></li>"
                    }
                    window.onload = function () {
                        document.getElementById("biaoqing").innerHTML = biaoqcontent;
                    }
                </script>
            </ul>
        </div>
        <div class="foot">
            <div class="foot-right">
            </div>
        </div>
    </div>
    <div id="blk2" class="blk" style="display: none;">
        <div class="head">
            <div class="head-right">
            </div>
        </div>
        <div class="main">
            <h2>
                上传图片</h2>
            <a href="javascript:void(0)" id="close2" class="closeBtn" title="关闭">×</a>
            <ul style="margin-top: 5px; text-align: center; padding: 10px">
                <div id="txtContent" runat="server" style="width: 381px; height: 181px; overflow: auto;
                    border-right: darkgray 1px solid; border-top: darkgray 1px solid; border-left: darkgray 1px solid;
                    border-bottom: darkgray 1px solid;" contenteditable="true">
                </div>
                <br />
                <div style="height: 35px; text-align: center" id="uploadbox">
                </div>
            </ul>
            <ul style="text-align: center">
                仅支持JPG、GIF、PNG图片文件，且文件小于5M，网络图片支持粘贴<br />
                <br />
            </ul>
        </div>
        <div class="foot">
            <div class="foot-right">
            </div>
        </div>
    </div>
    <div id="blk3" class="blk" style="display: none; width: 420px">
        <div class="head">
            <div class="head-right">
            </div>
        </div>
        <div class="main">
            <h2>
                插入视频</h2>
            <a href="javascript:void(0)" id="close3" class="closeBtn" title="关闭">×</a>
            <ul style="margin: 5px; text-align: center">
                请输入<a href="http://video.sina.com.cn/" target="_blank">新浪播客</a>、<a href="http://www.youku.com/"
                    target="_blank">优酷网</a>、<a href="http://www.tudou.com/" target="_blank">土豆网</a>、<a
                        href="http://www.ku6.com/" target="_blank">酷6网</a>等视频网站的视频播放页链接<br />
            </ul>
            <ul style="margin: 5px; text-align: center">
                <asp:TextBox ID="video_txt" runat="server" Width="300px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Width="80px" OnClientClick="addvideo();return false;"
                    Text="确定" />
            </ul>
            <ul>
                <br />
            </ul>
        </div>
        <div class="foot">
            <div class="foot-right">
            </div>
        </div>
    </div>
    <div id="blk4" class="blk" style="display: none;">
        <div class="head">
            <div class="head-right">
            </div>
        </div>
        <div class="main">
            <h2>
                插入音乐</h2>
            <a href="javascript:void(0)" id="close4" class="closeBtn" title="关闭">×</a>
            <ul style="margin: 5px;">
                请输入音乐地址:
            </ul>
            <ul style="text-align: center; text-align: center">
                <asp:TextBox ID="musictxt" runat="server" Width="280px"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Width="80px" OnClientClick="addmusic();return false;"
                    Text="确定" />
                <br />
            </ul>
            <ul style="text-align: center; text-align: center">
                <br />
            </ul>
        </div>
        <div class="foot">
            <div class="foot-right">
            </div>
        </div>
    </div>
    <div id="warp">
        <div id="warp_l">
            <div id="warp_write">
            </div>
            <!--顶部白色撑下来 -->
            <div id="warp_ltop">
            </div>
             <div class="warp_lbgs">
                <div id="reg_l">
                    <div style=" float:left; width:80px; text-align:center;">
                        <asp:Image ID="userface" runat="server" />
                    </div>
                    <div style=" float:left;">
                    <ul>
                      <li class="warp_d"><a href="UserInfo/info_Jiben.aspx"><asp:Literal ID="lblName" runat="server"></asp:Literal></a></li>
                      <li class="font1"><asp:Literal ID="lblAddress" runat="server"></asp:Literal></li>
                    </ul>  
                    </div>
                    <br />
                </div>
                <div class="gan_k">
                    <p class="p1">
                        <font class="gok"><a href="Attation.aspx?Type=0">
                            <asp:Literal ID="Attention" runat="server"></asp:Literal></a></font><br />
                        <a href="Attation.aspx?Type=0">关注</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="Attation.aspx?Type=1">
                            <asp:Literal ID="Fans" runat="server"></asp:Literal></a></font><br />
                        <a href="Attation.aspx?Type=1">粉丝</a>
                    </p>
                    <p class="p2">
                        <font class="gok"><a href="UserInfo/info_MyWeibo.aspx">
                            <asp:Literal ID="Allnum" runat="server"></asp:Literal></a></font><br />
                        <a href="UserInfo/info_MyWeibo.aspx">微博</a>
                    </p>
                </div>
                <div class="lin" style="display:none">
                </div>
                <div id="mobil" style="display:none">
                    <a href="">绑定手机上微博 随时随地看微博</a></div>
                <div class="nav">
                </div>
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" ImageUrl="../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" /></div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
            <div class="wrap01_tit">
                <span>24小时活跃户</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font><br />
                                        <%#Eval("Remark") %><br />
                                        <%#GetLastMob(Eval("UserID","{0}")) %><br />
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="clear">
            </div>
            <div class="wrap01_tit">
                <span><a href="#">大家关注的主题</a></span></div>
            <div class="wrap02_content">
                <ul>
                    <asp:Repeater ID="repTheme" runat="server">
                        <ItemTemplate>
                            <li><a href="ThemeVBlog.aspx?id=<%#Eval("Id") %>">
                                <%#Eval("ThemeCon") %></a>(<%#Eval("Attention") %>)</li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span><a href="Topic.aspx">更多关注主题.....</a></span>
            </div>
            <div class="wrap02_bottom">
            </div>
             <div class="wrap01_tit">
                <span>人气推荐 top10</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                      <li><img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>"><%#Eval("UserName") %></a></font>
                                     <div style="margin-top:5px"><%#GetAttion(Eval("Userid","{0}")) %></div>
                                </span></li>
                    </ItemTemplate>
                </asp:Repeater>
                </ul>
                 <span style="float:right;margin-right:10px;"> <a href="/t/Fans.aspx">更多人气推荐...</a></span>
                <ul class="wrap02_bottom">
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="warp_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="Content.aspx">者吧首页</a></li>
                        <li><a href="Topic.aspx">主题者吧</a></li>
                        <li><a href="TongCheng.aspx">同城者吧</a></li>
                        <li><a href="/t/MyMicrob.aspx">我的首页</a></li>
                        <li><a href="UserInfo/info_MyWeibo.aspx">我的者吧</a></li>
                        <li><asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                         <li style="float: right; margin-right: 40px !important; margin-right:30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal></li>
                    </ul>
                </div>
            </div>
            <!--右边顶部 -->
            <div class="r_ni">
                <div class="ni_top">
                    <div style="width: 200px; float: right; margin-right: 50px; margin-top: 18px; margin-bottom: 10px;
                        text-align: right;">
                        <div id="tip" style="width: 80px; float: left; margin-top: 10px; color: #ffffff">
                            你还可以输入</div>
                        <div id="lastNummber" style="color: #ffffff; font-family: Constantia, Georgia; font-size: 30px;
                            width: 50px; float: left; margin-top: -10px; text-align: center">
                            140</div>
                        <div style="float: right; margin-right: 45px; margin-top: 10px; color: #ffffff">
                            个字</div>
                    </div>
                </div>
                <div class="ni_ln">
                    <div class="ni_text">
                        <asp:TextBox ID="txt_Content" runat="server" Text="" TextMode="MultiLine"></asp:TextBox>
                        <asp:HiddenField ID="txtimages" runat="server" />
                        <asp:HiddenField ID="txtmusic" runat="server" />
                        <asp:HiddenField ID="txtvidio" runat="server" />
                    </div>
                </div>
                <div class="ni_hd">
                    <div class="ni_hd_m">
                        <span id="ele1"><a href="javascript:void(0)">
                            <img src="../App_Themes/Microblog/images/14.jpg" alt="" /></a><a href="javascript:void(0)">表情</a></span><span
                                id="ele2"><a href="javascript:void(0)"><img src="../App_Themes/Microblog/images/15.jpg"
                                    alt="" /></a><a href="javascript:void(0)">图片</a></span><span id="ele3"><a href="javascript:void(0)"><img
                                        src="../App_Themes/Microblog/images/16.jpg" alt="" /></a><a href="javascript:void(0)">视频</a></span><span
                                            id="ele4"><a href="javascript:void(0)"><img src="../App_Themes/Microblog/images/17.jpg"
                                                alt="" /></a><a href="javascript:void(0)">音乐</a></span><span onclick="clickhuati()"><a
                                                    href="javascript:void(0)"><img src="../App_Themes/Microblog/images/18.jpg" alt="" /></a><a
                                                        href="javascript:void(0)">话题</a></span>
                    </div>
                    <div class="ni_hd_n">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" Style="display: none" />
                        <img src="../App_Themes/Microblog/images/fb.jpg" border="0" id="ibFabu" name="ibFabu"
                            style="cursor: pointer" title="发表微博" onclick="Postto()" />
                    </div>
                </div>
            </div>
            <div id="r_k_top">
            </div>
            <div id="r_k_main">
                <div class="top_tit01">
                    <span><b>含有"<asp:Literal ID="liTheme" runat="server"></asp:Literal>"主题的微博(
                        <asp:Literal ID="liCondi" runat="server"></asp:Literal>条)</b></div>
                <div class="lin01">
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="r_k_wp">
                           <ul>     
                             <li  style="float:left;margin-right:10px; padding-right:10px">
                            	<img src="<%#GetUserFace(Eval("Inputer","{0}")) %>" width="50px" height="50px" /></li>                       
                                <li style="width:80%">
                                    <a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("MbID")%>"><font color="#1A74E2">
                                      <%#GetUserinfo(Eval("MbID","{0}"),Eval("inputer","{0}"),Eval("TopicType","{0}"))%>：</font></a>
                                    <%#ShowIco(Eval("ID", "{0}"))%> <%#GetBroads(Eval("id","{0}"))%></li>
                                  <li style="width:80%">                                
                                    <span><%#GetLink(Eval("MbID", "{0}"), Eval("id", "{0}"))%></span>
                                    <%#GetTime(Eval("CreateTime", "{0}"))%>&nbsp;&nbsp;<font color="#CCCCCC"><%#GetTypes(Eval("SendType", "{0}"))%></font>
                                </li>                                
                                 <li style="width: 100%; float: right">
                                    <div id='con_<%#Eval("id") %>' name="divCont" style="width: 99%; border: solid 1px #999; display: none; float: right">
                                      <div id='divCont<%#Eval("id") %>' style="width: 100%; margin-left: 5px; margin-top: 5px; float: left"></div>
                                      <div style="width: 100%;"><div id='tip<%#Eval("id") %>' style="float: left"></div>
                                      <input type="text" id='txtCommon<%#Eval("id") %>' name='<%#Eval("id") %>' style="margin-left: 5px;margin-right: 5px; width: 98%; height: 23px" onkeyup='Comm(this,this.name)' /></div>
                                      <div style="float: right;"><input id='btnCom_<%#Eval("id") %>' type="button" value="转发" onclick="g_Dile('<%#Eval("MbID") %>','<%#Eval("ForId") %>','<%#Eval("id") %>')" /></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="lin01">
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                   <div id="PageList" runat="server"></div>	<div class="clear"></div>
                <div class="up">
                    <img src="../App_Themes/Microblog/images/up.jpg" /><a href="#">返回顶部</a></div>
            </div>
            <div id="r_k_end">
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <!--右边结束 -->
        <div class="clear">
        </div>
    </div>
    <div id="warp_bottom">
    </div>
    <div id="copyright">
        <ul>
            <li><a href="">关于我们</a></li>
            <li>|</li>
            <li><a href="">网站地图</a></li>
            <li>|</li>
            <li><a href="">免责声明</a></li>
            <li>|</li>
            <li><a href="">版权申明</a></li>
            <li>|</li>
            <li><a href="">招贤纳士</a></li>
            <li>|</li>
            <li><a href="">广告服务</a></li>
            <li>|</li>
            <li><a href="">网站合作</a></li>
            <li>|</li>
            <li><a href="">帮助中心</a></li>
            <li>|</li>
            <li><a href="">投稿指南</a></li>
            <li>|</li>
            <li><a href="">联系我们</a></li>
            <li>|</li>
            <li><a href="">友情链接</a></li>
        </ul>
        <p>
            Copyright&copy;&nbsp;<%Call.Label("{$SiteName/}"); %>All rights reserved</p>
    </div>
    </form>
</body>
</html>
