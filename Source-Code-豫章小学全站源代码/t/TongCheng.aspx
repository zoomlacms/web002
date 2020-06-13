<%@ page language="C#" autoeventwireup="true" inherits="Weibo_TongCheng, App_Web_vevnwosu" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>欢迎访问<%Call.Label("{$SiteName/}");%>微博-同城者吧</title>
    <link href="../App_Themes/Microblog/global.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Microblog/style.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript" language="javascript"></script>
    <script src="../js/popup_js.js" type="text/javascript" language="javascript"></script>
    <script src="../JS/ajaxrequest.js" type="text/javascript" language="javascript"></script>
    <script src="../JS/Microb.js"></script>
    <script src="/js/artZoom.js" type="text/javascript"></script>
    <script type="text/javascript">
     var url = window.location.href;
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

     function g_Dile(userid, forid, id) {  //添加
        g_Diles(userid, forid, id, url);
    }
    function g_del(id) {   //删除
        g_dels(id, url);
    }

      function Og_Dile(userid, forid, id,conid) {  //添加
        Og_Diles(userid, forid, id, url,conid);
    }

      function addvideo() {
            document.getElementById("txtvidio").value = document.getElementById("TextBox2").value;
            var div = document.getElementById("close3");
            div.click();
        }

      function OComm(Obj, val) {
        var value = Obj.value.replace(/(^\s*)|(\s*$)/g, "");
        var tips = document.getElementById("Otip" + val);
        if (Obj.value.length <= 140) {
            tips.innerHTML = "还能输入" + (140 - Obj.value.length) + "个字";
            document.getElementById("ObtnCom_" + val).disabled = "";
        } else {
            tips.innerHTML = "<font color='red'>超出" + (Obj.value.length - 140) + "个字</font>";
            document.getElementById("ObtnCom_" + val).disabled = "disabled";
        }
    }
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
        //回调函数
        function callback(data) {
            if (data == "1") {
                alert("请先登录！");
            } else {
                document.getElementById("Button1").click();
            }
        }

       
        function success() {
            location.href = "TongCheng.aspx";
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
            new PopupLayer({ trigger: "#ele5", popupBlk: "#blk5", closeBtn: "#close5",
                offsets: {
                    x: 0,
                    y: 0
                }
            });
        });


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
    </script>
    <script language="javascript">

        cities = new Object(); //建立省市信息的数组

        cities['北京'] = new Array('北京');
        cities['上海'] = new Array('上海');
        cities['天津'] = new Array('天津');
        cities['重庆'] = new Array('重庆');
        cities['河北'] = new Array('石家庄', '张家口', '承德', '秦皇岛', '唐山', '廊坊', '保定', '沧州', '衡水', '邢台', '邯郸');
        cities['山西'] = new Array('太原', '大同', '朔州', '阳泉', '长治', '晋城', '忻州', '吕梁', '晋中', '临汾', '运城');
        cities['辽宁'] = new Array('沈阳', '朝阳', '阜新', '铁岭', '抚顺', '本溪', '辽阳', '鞍山', '丹东', '大连', '营口', '盘锦', '锦州', '葫芦岛');
        cities['吉林'] = new Array('长春', '白城', '松原', '吉林', '四平', '辽源', '通化', '白山', '延边朝鲜族自治州');
        cities['黑龙江'] = new Array('哈尔滨', '齐齐哈尔', '黑河', '大庆', '伊春', '鹤岗', '佳木斯', '双鸭山', '七台河', '鸡西', '牡丹江', '绥化', '大兴安');
        cities['江苏'] = new Array('南京', '徐州', '连云港', '宿迁', '淮阴', '盐城', '扬州', '泰州', '南通', '镇江', '常州', '无锡', '苏州');
        cities['浙江'] = new Array('杭州', '湖州', '嘉兴', '舟山', '宁波', '绍兴', '金华', '台州', '温州', '丽水');
        cities['安徽'] = new Array('合肥', '宿州', '淮北', '阜阳', '蚌埠', '淮南', '滁州', '马鞍山', '芜湖', '铜陵', '安庆', '黄山', '六安', '巢湖', '池州', '宣城');
        cities['福建'] = new Array('福州', '南平', '三明', '莆田', '泉州', '厦门', '漳州', '龙岩', '宁德');
        cities['江西'] = new Array('南昌', '九江', '景德镇', '鹰潭', '新余', '萍乡', '赣州', '上饶', '抚州', '宜春', '吉安');
        cities['山东'] = new Array('济南', '聊城', '德州', '东营', '淄博', '潍坊', '烟台', '威海', '青岛', '日照', '临沂', '枣庄', '济宁', '泰安', '莱芜', '滨州', '菏泽');
        cities['河南'] = new Array('郑州', '三门峡', '洛阳', '焦作', '新乡', '鹤壁', '安阳', '濮阳', '开封', '商丘', '许昌', '漯河', '平顶山', '南阳', '信阳', '省直辖行政单位', '周口', '驻马店');
        cities['湖北'] = new Array('武汉', '十堰', '襄攀', '荆门', '孝感', '黄冈', '鄂州', '黄石', '咸宁', '荆州', '宜昌', '省直辖行政单位', '恩施土家族苗族自治州', '襄樊');
        cities['湖南'] = new Array('长沙', '张家界', '常德', '益阳', '岳阳', '株洲', '湘潭', '衡阳', '郴州', '永州', '邵阳', '怀化', '娄底', '湘西土家族苗族自治州');
        cities['广东'] = new Array('广州', '清远', '韶关', '河源', '梅州', '潮州', '汕头', '揭阳', '汕尾', '惠州', '东莞', '深圳', '珠海', '江门', '佛山', '肇庆', '云浮', '阳江', '茂名', '湛江');
        cities['海南'] = new Array('海口', '三亚', '省直辖行');
        cities['四川'] = new Array('成都', '广元', '绵阳', '德阳', '南充', '广安', '遂宁', '内江', '乐山', '自贡', '泸州', '宜宾', '攀枝花', '巴中', '达川', '资阳', '眉山', '雅安', '阿坝藏族羌族自治州', '甘孜藏族自治州', '凉山彝族自治州');
        cities['贵州'] = new Array('贵阳', '六盘水', '遵义', '毕节', '铜仁', '安顺', '黔东南苗族侗族自治区', '黔南布依族苗族自治区', '黔西南布依族苗族自治州');
        cities['云南'] = new Array('昆明', '曲靖', '玉溪', '丽江', '昭通', '思茅', '临沧', '保山', '德宏傣族景颇族自治州', '怒江僳僳族自治州', '迪庆藏族自治州', '大理白族自治州', '楚雄彝族自治州', '红河哈尼族自治州', '文山壮族自治州', '西双版纳傣族自治州');
        cities['陕西'] = new Array('西安', '延安', '铜川', '渭南', '咸阳', '宝鸡', '汉中', '榆林', '商洛', '安康');
        cities['甘肃'] = new Array('兰州', '嘉峪关', '金昌', '白银', '天水', '酒泉', '张掖', '武威', '庆阳', '平凉', '定西', '陇南', '临夏回族自治州', '甘南藏族自治州');
        cities['青海'] = new Array('西宁', '海东', '西宁', '海北藏族', '海南藏族', '黄南藏族', '果洛藏族', '玉树藏族', '海西蒙古');
        cities['内蒙古'] = new Array('呼和浩特', '包头', '乌海', '赤峰', '呼伦贝尔盟', '兴安盟', '哲里木盟', '锡林郭勒盟', '乌兰察布盟', '鄂尔多斯', '巴彦淖尔盟', '阿拉善盟');
        cities['广西'] = new Array('南宁', '桂林', '柳州', '梧州', '贵港', '玉林', '钦州', '北海', '防城港', '南宁', '百色', '河池', '柳州', '贺州');
        cities['西藏'] = new Array('拉萨', '那曲', '昌都', '林芝', '山南', '日喀则', '阿里');
        cities['宁夏'] = new Array('银川', '石嘴山', '吴忠', '固原');
        cities['新疆'] = new Array('乌鲁木齐', '克拉玛依', '自治区直辖行政单位', '喀什', '阿克苏', '和田', '吐鲁番', '哈密', '克孜勒苏柯尔克孜', '博尔塔拉蒙古', '昌吉回族自治州', '巴音郭楞蒙古自治州', '伊犁哈萨克自治州', '伊犁', '塔城地区', '阿勒泰地区');


        function set_city(province, city) {
            //改变二级级联下拉菜单的选项供选择
            var pv, cv;
            var i, ii;

            pv = province.value;
            cv = city.value;

            city.length = 1;

            if (pv == '0') return;
            if (typeof (cities[pv]) == 'undefined') return;

            //if(typeof(cities[pv])=='undefined')
            //{
            //city.style.display = "none";
            //return;
            //}

            //city.style.display = "";

            for (i = 0; i < cities[pv].length; i++) {
                ii = i + 1;
                city.options[ii] = new Option();
                city.options[ii].text = cities[pv][i];
                city.options[ii].value = cities[pv][i];
            }

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" id="hftype" />
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
                请输入<a href="http://video.sina.com.cn/">新浪播客</a>、<a href="http://www.youku.com/">优酷网</a>、<a
                    href="http://www.tudou.com/">土豆网</a>、<a href="http://www.ku6.com/">酷6网</a>等视频网站的视频播放页链接<br />
            </ul>
            <ul style="margin: 5px; text-align: center">
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Width="80px" Text="确定" OnClientClick="addvideo();return false;" />
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
                <asp:TextBox ID="TextBox1" runat="server" Width="280px"></asp:TextBox>
                <asp:Button ID="Button4" runat="server" Width="80px" Text="确定" />
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
    <div id="blk5" class="blk" style="display: none; width: 380px">
        <div class="head">
            <div class="head-right">
            </div>
        </div>
        <div class="main">
            <h2>
                选择城市</h2>
            <a href="javascript:void(0)" id="close5" class="closeBtn" title="关闭">×</a>
            <ul style="margin: 5px; text-align: center">
                <select name="province" onchange="set_city(this, document.getElementById('city'));">
                    <option value="省份">省份</option>
                    <option value="北京">北京</option>
                    <option value="上海">上海</option>
                    <option value="天津">天津</option>
                    <option value="重庆">重庆</option>
                    <option value="河北">河北</option>
                    <option value="山西">山西</option>
                    <option value="辽宁">辽宁</option>
                    <option value="吉林">吉林</option>
                    <option value="黑龙江">黑龙江</option>
                    <option value="江苏">江苏</option>
                    <option value="浙江">浙江</option>
                    <option value="安徽">安徽</option>
                    <option value="福建">福建</option>
                    <option value="江西">江西</option>
                    <option value="山东">山东</option>
                    <option value="河南">河南</option>
                    <option value="湖北">湖北</option>
                    <option value="湖南">湖南</option>
                    <option value="广东">广东</option>
                    <option value="海南">海南</option>
                    <option value="四川">四川</option>
                    <option value="贵州">贵州</option>
                    <option value="云南">云南</option>
                    <option value="陕西">陕西</option>
                    <option value="甘肃">甘肃</option>
                    <option value="青海">青海</option>
                    <option value="内蒙古">内蒙古</option>
                    <option value="广西">广西</option>
                    <option value="西藏">西藏</option>
                    <option value="宁夏">宁夏</option>
                    <option value="新疆">新疆</option>
                    <option value="台湾">台湾</option>
                    <option value="香港">香港</option>
                    <option value="澳门">澳门</option>
                    <!--</select> <select id=city   name=city style="DISPLAY: none">
</select>-->
                </select>省
                <select id="city" name="city">
                    <option value="">城市</option>
                </select>市<asp:Button ID="Button5" runat="server" Width="60px" OnClientClick="if(city.value!=''){location.href='TongCheng.aspx?CityName='+city.value;}"
                    Text="确定" />
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
            <div id="warp_ltop01">
                <div class="warp_zi">
                    <a href="#">同城热门话题</a></div>
            </div>
            <div class="warp_lbg01">
                <div class="warp_t">
                    <ul>
                        <asp:Repeater ID="repHotCity" runat="server">
                            <ItemTemplate>
                                <li><span>
                                    <img src="../App_Themes/Microblog/images/icon00.gif" alt="" /></span><a href='ThemeVBlog.aspx?id=<%#Eval("ID") %>'><%#Eval("ThemeCon") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <br />
            </div>
            <div class="warp_lbot">
            </div>
            <div id="search">
                <div id="sear_b">
                    <asp:ImageButton ID="ibSearch" runat="server" ImageUrl="../App_Themes/Microblog/images/s_b.jpg"
                        OnClick="ibSearch_Click" />
                </div>
                <asp:TextBox ID="sear_input" runat="server" Text="搜索者吧、找人"></asp:TextBox>
            </div>
            <div class="wrap01_tit">
                <span><a href="#">24小时活跃用户</a></span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <table>
                                    <tr>
                                        <td>
                                            <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                        </td>
                                        <td>
                                            <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                                <%#Eval("UserName") %></a></font><br />
                                                <%#Eval("Remark") %><br />
                                                <%#GetLastMob(Eval("UserID","{0}")) %><br />
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <div style="clear: both;" class="wrap02_bottom">
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="wrap01_tit">
                <span>人气推荐 top10</span></div>
            <div class="warp_lbg">
                <ul>
                    <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("UserFace","{0}").Replace("~","") %>" />
                                <span><font class="blue"><a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("userID") %>">
                                    <%#Eval("UserName") %></a></font>
                                    <div style="margin-top: 5px">
                                        <%#GetAttion(Eval("Userid","{0}")) %></div>
                                </span></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <span style="float: right; margin-right: 10px;"><a href="/t/Fans.aspx">更多人气推荐...</a></span>
                <div style="clear: both;" class="wrap02_bottom">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <!--左边结束 -->
        <div id="warp_r">
            <div id="warp_rtop">
                <div id="nav">
                    <ul>
                        <li><a href="Content.aspx">者吧首页</a></li>
                        <li><a href="Topic.aspx">主题者吧</a></li>
                        <li><a href="TongCheng.aspx">同城者吧</a></li>
                        <li><a href="MyMicrob.aspx">我的首页</a></li>
                        <li><a href="UserInfo/info_MyWeibo.aspx">我的者吧</a></li>
                        <li>
                            <asp:Literal ID="liSite" runat="server"></asp:Literal></li>
                        <li style="float: right; margin-right: 40px !important; margin-right: 30px;">
                            <asp:Literal ID="logtxt" runat="server"></asp:Literal>
                        </li>
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
                    <b>同城最新者吧</b>&nbsp;
                    <asp:Literal ID="City" runat="server"></asp:Literal>
                    &nbsp; &nbsp;|&nbsp; &nbsp;<font id="ele5" style="cursor: hand; color: #FF6D00">选择其他城市</font></div>
                <div class="lin">
                </div>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <table width="100%">
                            <div class="r_k_wp">
                                <ul>
                                    <li style="float: left; margin-right: 10px; padding-right: 10px">
                                        <img src="<%#GetUserFace(Eval("Inputer","{0}")) %>" width="50px" height="50px" /></li>
                                    <li style="float: left; width: 88%">
                                        <div>
                                            <a href="UserInfo/info_MyWeibo.aspx?uid=<%#Eval("MbID")%>"><font color="#1A74E2">
                                                <%#Eval("Inputer")%></font></a>：<%#ShowIco(Eval("id", "{0}"))%>
                                            <%# GetBroads(Eval("id","{0}"))%></div>
                                    </li>
                                    <li style="width: 90%; float: left; margin-left: 70px">
                                        <div style="width: 100%">
                                            <ul>
                                                <li style="float: left; width: 50%;">
                                                    <%#GetTime(Eval("CreateTime","{0}"))%></li>
                                                <li style="float: left; width: 49%; text-align: right;">
                                                    <div>
                                                        <%#GetLink(Eval("MbID", "{0}"), Eval("id", "{0}"))%></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li style="width: 100%; float: right">
                                        <div id='con_<%#Eval("id") %>' name="divCont" style="width: 99%; border: solid 1px #999;
                                            display: none; float: right">
                                            <div id='divCont<%#Eval("id") %>' style="width: 100%; margin-left: 5px; margin-top: 5px;
                                                float: left">
                                            </div>
                                            <div style="width: 100%;">
                                                <div id='tip<%#Eval("id") %>' style="float: left">
                                                </div>
                                                <input type="text" id='txtCommon<%#Eval("id") %>' name='<%#Eval("id") %>' style="margin-left: 5px;
                                                    margin-right: 5px; width: 98%; height: 23px" onkeyup='Comm(this,this.name)' />
                                            </div>
                                            <div style="float: right;">
                                                <input id='btnCom_<%#Eval("id") %>' type="button" value="转发 " onclick="g_Dile('<%#Eval("MbID") %>','<%#Eval("ForId") %>','<%#Eval("id") %>')" />
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="lin01">
                            </div>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="up02">
                    <div class="up01_L">
                        <div id="PageList" runat="server">
                        </div>
                    </div>
                    <img src="../App_Themes/Microblog/images/up.jpg" alt="" /><a href="#">返回顶部</a></div>
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
