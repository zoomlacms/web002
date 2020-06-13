<%@ page language="C#" autoeventwireup="true" inherits="manage_User_Images, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>图片</title>
<link rel="stylesheet" type="text/css" href="../../App_Themes/Microblog/style.css" />
<script type="text/javascript" src="../../js/jquery.js" language="javascript"></script>
<script src="../../js/popup_js.js" type="text/javascript" language="javascript"></script>
<script type="text/javascript">
var url = window.location.href;
function g_del(id) {   //删除
	g_dels(id, url);
}
function g_Dile(userid, forid, id) {  //添加
	g_Diles(userid, forid, id, url);
}

  function Og_Dile(userid, forid, id,conid) {  //添加
	Og_Diles(userid, forid, id, url,conid);
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
		var strContent = "<div class='uploadcontrol'><iframe src=\"/t/upload.aspx\" id=\"ifUpload\" frameborder=\"no\" scrolling=\"no\" style=\"width:400px; height:28px;\"></iframe>";
		strContent += "<div class=\"uploading\" id=\"uploading\" style=\"display:none;\" ></div>";
		strContent += "<div class=\"image\" id=\"panelViewPic\" style=\"display:none;\"></div></div>";
		el.append(strContent);
	};
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
		 document.getElementById("txtimages").value = document.getElementById("txtContent").innerHTML;
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
</script>
</head>
<body>
<form id="form1" runat="server">
      <div id="blk1" class="blk" style="display: none;">
        <div class="main">
          <h2>常用表情</h2>
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
          <div class="foot-right"> </div>
        </div>
      </div>
      <div id="blk2" class="blk" style="display: none;">
        <div class="head">
          <div class="head-right"> </div>
        </div>
        <div class="main">
          <h2> 上传图片</h2>
          <a href="javascript:void(0)" id="close2" class="closeBtn" title="关闭">×</a>
          <ul style="margin-top: 5px; text-align: center; padding: 10px">
            <div id="txtContent" runat="server" style="width: 381px; height: 181px; overflow: auto;
                    border-right: darkgray 1px solid; border-top: darkgray 1px solid; border-left: darkgray 1px solid;
                    border-bottom: darkgray 1px solid;" contenteditable="true"> </div>
            <br />
            <div style="height: 35px; text-align: center" id="uploadbox"> </div>
          </ul>
          <ul style="text-align: center">
            仅支持JPG、GIF、PNG图片文件，且文件小于5M，网络图片支持粘贴<br />
            <br />
          </ul>
        </div>
        <div class="foot">
          <div class="foot-right"> </div>
        </div>
      </div>
      <div class="ni_ln">
        <div class="ni_text">
          <asp:TextBox ID="txt_Content" runat="server" Text="" TextMode="MultiLine" 
                        Height="94px" Width="431px"></asp:TextBox>
          <asp:HiddenField ID="txtimages" runat="server" />
        </div>
      </div>
      <div class="ni_hd">
        <div class="ni_hd_m"> <span id="ele1"><a href="javascript:void(0)"><img src="../../App_Themes/Microblog/images/14.jpg" alt="" /></a> <a href="javascript:void(0)">表情</a></span> <span id="ele2"><a href="javascript:void(0)"><img src="../../App_Themes/Microblog/images/15.jpg" alt="" /></a> <a href="javascript:void(0)">图片</a></span> </div>
        <div class="ni_hd_n">
          <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
      </div>
    </form>
</body>
</html>