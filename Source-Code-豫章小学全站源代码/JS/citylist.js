// JavaScript Document


var province;
var city;

function provinceList() {
    this.length = 35;
    this[0] = new Option("北京", "1");
    this[1] = new Option("天津", "0");
    this[2] = new Option("上海", "2");
    this[3] = new Option("重庆", "3");
    this[4] = new Option("河北", "4");
    this[5] = new Option("山西", "5");
    this[6] = new Option("辽宁", "6");
    this[7] = new Option("吉林", "7");
    this[8] = new Option("黑龙江", "8");
    this[9] = new Option("江苏", "9");
    this[10] = new Option("浙江", "10");
    this[11] = new Option("安徽", "11");
    this[12] = new Option("福建", "12");
    this[13] = new Option("江西", "13");
    this[14] = new Option("山东", "14");
    this[15] = new Option("河南", "15");
    this[16] = new Option("湖北", "16");
    this[17] = new Option("湖南", "17");
    this[18] = new Option("广东", "18");
    this[19] = new Option("海南", "19");
    this[20] = new Option("四川", "20");
    this[21] = new Option("贵州", "21");
    this[22] = new Option("云南", "22");
    this[23] = new Option("陕西", "23");
    this[24] = new Option("甘肃", "24");
    this[25] = new Option("青海", "25");
    this[26] = new Option("西藏", "26");
    this[27] = new Option("广西", "27");
    this[28] = new Option("内蒙", "28");
    this[29] = new Option("宁夏", "29");
    this[30] = new Option("新疆", "30");
    this[31] = new Option("香港", "31");
    this[32] = new Option("澳门", "32");
    this[33] = new Option("台湾", "33");
    this[34] = new Option("其它", "34");  
    return this;
}
function cityList() {
    this.length = 35;
    this[11] = new Array(17);
    this[11][0] = new Option("合肥市", "110");
    this[11][1] = new Option("淮北市", "111");
    this[11][2] = new Option("淮南市", "112");
    this[11][3] = new Option("黄山市", "113");
    this[11][4] = new Option("安庆市", "114");
    this[11][5] = new Option("蚌埠市", "115");
    this[11][6] = new Option("巢湖市", "116");
    this[11][7] = new Option("池州市", "117");
    this[11][8] = new Option("滁州市", "118");
    this[11][9] = new Option("六安市", "119");
    this[11][10] = new Option("马鞍山市", "1110");
    this[11][11] = new Option("宣城市", "1111");
    this[11][12] = new Option("宿州市", "1112");
    this[11][13] = new Option("铜陵市", "1113");
    this[11][14] = new Option("芜湖市", "1114");
    this[11][15] = new Option("阜阳市", "1115");
    this[11][16] = new Option("亳州市", "1116");

    this[0] = new Array(1);
    this[0][0] = new Option("北京市", "0");
    
    this[3] = new Array(4);
    this[3][0] = new Option("重庆市", "300");
    this[3][1] = new Option("涪陵市", "301");
    this[3][2] = new Option("黔江市", "302");
    this[3][3] = new Option("万县市", "303");
    
    this[12] = new Array(9);
    this[12][0] = new Option("福州市", "1200");
    this[12][1] = new Option("龙岩市", "1201");
    this[12][2] = new Option("南平市", "1202");
    this[12][3] = new Option("宁德市", "1203");
    this[12][4] = new Option("莆田市", "1204");
    this[12][5] = new Option("泉州市", "1205");
    this[12][6] = new Option("三明市", "1206");
    this[12][7] = new Option("厦门市", "1207");
    this[12][8] = new Option("漳州市", "1208");
    
    this[24] = new Array(14);
    this[24][0] = new Option("兰州市", "2400");
    this[24][1] = new Option("甘南藏族自治州", "2401");
    this[24][2] = new Option("定西地区", "2402");
    this[24][3] = new Option("白银市", "2403");
    this[24][4] = new Option("嘉峪关市", "2404");
    this[24][5] = new Option("金昌市", "2405");
    this[24][6] = new Option("酒泉市", "2406");
    this[24][7] = new Option("临夏回族自治州", "2407");
    this[24][8] = new Option("陇南地区", "2408");
    this[24][9] = new Option("平凉市", "2409");
    this[24][10] = new Option("庆阳市", "2410");
    this[24][11] = new Option("天水市", "2411");
    this[24][12] = new Option("武威市", "2412");
    this[24][13] = new Option("张掖市", "2413");
    
    this[18] = new Array(21);
    this[18][0] = new Option("广州市", "1800");
    this[18][1] = new Option("佛山市", "1801");
    this[18][2] = new Option("惠州市", "1802");
    this[18][3] = new Option("东莞市", "1803");
    this[18][4] = new Option("江门市", "1804");
    this[18][5] = new Option("揭阳市", "1805");
    this[18][6] = new Option("潮州市", "1806");
    this[18][7] = new Option("茂名市", "1807");
    this[18][8] = new Option("梅州市", "1808");
    this[18][9] = new Option("清远市", "1809");
    this[18][10] = new Option("汕头市", "1810");
    this[18][11] = new Option("汕尾市", "1811");
    this[18][12] = new Option("深圳市", "1812");
    this[18][13] = new Option("韶关市", "1813");
    this[18][14] = new Option("阳江市", "1814");
    this[18][15] = new Option("河源市", "1815");
    this[18][16] = new Option("云浮市", "1816");
    this[18][17] = new Option("中山市", "1817");
    this[18][18] = new Option("珠海市", "1818");
    this[18][19] = new Option("湛江市", "1819");
    this[18][20] = new Option("肇庆市", "1820");
    
    this[27] = new Array(14);
    this[27][0] = new Option("南宁市", "2700");
    this[27][1] = new Option("防城港市", "2701");
    this[27][2] = new Option("北海市", "2702");
    this[27][3] = new Option("百色市", "2703");
    this[27][4] = new Option("贺州市", "2704");
    this[27][5] = new Option("桂林市", "2705");
    this[27][6] = new Option("来宾市", "2706");
    this[27][7] = new Option("柳州市", "2707");
    this[27][8] = new Option("崇左市", "2708");
    this[27][9] = new Option("钦州市", "2709");
    this[27][10] = new Option("贵港市", "2710");
    this[27][11] = new Option("梧州市", "2711");
    this[27][12] = new Option("河池市", "2712");
    this[27][13] = new Option("玉林市", "2713");
    
    this[21] = new Array(9);
    this[21][0] = new Option("贵阳市", "2100");
    this[21][1] = new Option("毕节地区", "2101");
    this[21][2] = new Option("遵义市", "2102");
    this[21][3] = new Option("安顺市", "2103");
    this[21][4] = new Option("六盘水市", "2104");
    this[21][5] = new Option("黔东南苗族侗族自治州", "2105");
    this[21][6] = new Option("黔南布依族苗族自治州", "2106");
    this[21][7] = new Option("黔西南布依族苗族自治", "2107");
    this[21][8] = new Option("铜仁地区", "2108");
    
    this[19] = new Array(3);
    this[19][0] = new Option("海口市", "1900");
    this[19][1] = new Option("三亚市", "1901");
    this[19][2] = new Option("省直辖行政单位", "1902");
    
    this[4] = new Array(11);
    this[4][0] = new Option("石家庄市", "400");
    this[4][1] = new Option("邯郸市", "401");
    this[4][2] = new Option("邢台市", "402");
    this[4][3] = new Option("保定市", "403");
    this[4][4] = new Option("张家口市", "404");
    this[4][5] = new Option("沧州市", "405");
    this[4][6] = new Option("承德市", "406");
    this[4][7] = new Option("廊坊市", "407");
    this[4][8] = new Option("秦皇岛市", "408");
    this[4][9] = new Option("唐山市", "409");
    this[4][10] = new Option("衡水市", "410");
    
    this[15] = new Array(18);
    this[15][0] = new Option("郑州市", "1500");
    this[15][1] = new Option("开封市", "1501");
    this[15][2] = new Option("驻马店市", "1502");
    this[15][3] = new Option("安阳市", "1503");
    this[15][4] = new Option("焦作市", "1504");
    this[15][5] = new Option("洛阳市", "1505");
    this[15][6] = new Option("濮阳市", "1506");
    this[15][7] = new Option("漯河市", "1507");
    this[15][8] = new Option("南阳市", "1508");
    this[15][9] = new Option("平顶山市", "1509");
    this[15][10] = new Option("新乡市", "1510");
    this[15][11] = new Option("信阳市", "1511");
    this[15][12] = new Option("许昌市", "1512");
    this[15][13] = new Option("商丘市", "1513");
    this[15][14] = new Option("三门峡市", "1514");
    this[15][15] = new Option("鹤壁市", "1515");
    this[15][16] = new Option("周口市", "1516");
    this[15][17] = new Option("济源市", "1517");

    this[8] = new Array(13);
    this[8][0] = new Option("哈尔滨市", "800");
    this[8][1] = new Option("大庆市", "801");
    this[8][2] = new Option("大兴安岭地区", "802");
    this[8][3] = new Option("鸡西市", "803");
    this[8][4] = new Option("佳木斯市", "804");
    this[8][5] = new Option("牡丹江市", "805");
    this[8][6] = new Option("齐齐哈尔市", "806");
    this[8][7] = new Option("七台河市", "807");
    this[8][8] = new Option("双鸭山市", "808");
    this[8][9] = new Option("绥化市", "809");
    this[8][10] = new Option("伊春市", "810");
    this[8][11] = new Option("鹤岗市", "811");
    this[8][12] = new Option("黑河市", "812");

    this[16] = new Array(14);
    this[16][0] = new Option("武汉市", "1600");
    this[16][1] = new Option("黄冈市", "1601");
    this[16][2] = new Option("黄石市", "1602");
    this[16][3] = new Option("恩施土家族苗族自治州", "1603");
    this[16][4] = new Option("鄂州市", "1604");
    this[16][5] = new Option("荆门市", "1605");
    this[16][6] = new Option("荆州市", "1606");
    this[16][7] = new Option("孝感市", "1607");
    this[16][8] = new Option("省直辖县级行政单位", "1608");
    this[16][9] = new Option("十堰市", "1609");
    this[16][10] = new Option("襄樊市", "1610");
    this[16][11] = new Option("咸宁市", "1611");
    this[16][12] = new Option("宜昌市", "1612");
    this[16][13] = new Option("随州市", "1613");
    
    this[17] = new Array(14);
    this[17][0] = new Option("长沙市", "1700");
    this[17][1] = new Option("怀化市", "1701");
    this[17][2] = new Option("郴州市", "1702");
    this[17][3] = new Option("常德市", "1703");
    this[17][4] = new Option("娄底市", "1704");
    this[17][5] = new Option("邵阳市", "1705");
    this[17][6] = new Option("湘潭市", "1706");
    this[17][7] = new Option("湘西土家族苗族自治州", "1707");
    this[17][8] = new Option("衡阳市", "1708");
    this[17][9] = new Option("永州市", "1709");
    this[17][10] = new Option("益阳市", "1710");
    this[17][11] = new Option("岳阳市", "1711");
    this[17][12] = new Option("株洲市", "1712");
    this[17][13] = new Option("张家界市", "1713");
    
    this[9] = new Array(13);
    this[9][0] = new Option("南京市", "900");
    this[9][1] = new Option("淮安市", "901");
    this[9][2] = new Option("常州市", "902");
    this[9][3] = new Option("连云港市", "903");
    this[9][4] = new Option("南通市", "904");
    this[9][5] = new Option("徐州市", "905");
    this[9][6] = new Option("苏州市", "906");
    this[9][7] = new Option("无锡市", "907");
    this[9][8] = new Option("盐城市", "908");
    this[9][9] = new Option("扬州市", "909");
    this[9][10] = new Option("镇江市", "910");
    this[9][11] = new Option("泰州市", "911");
    this[9][12] = new Option("宿迁市", "912");
    
    this[13] = new Array(11);
    this[13][0] = new Option("南昌市", "1300");
    this[13][1] = new Option("抚州市", "1301");
    this[13][2] = new Option("赣州市", "1302");
    this[13][3] = new Option("吉安市", "1303");
    this[13][4] = new Option("景德镇市", "1304");
    this[13][5] = new Option("九江市", "1305");
    this[13][6] = new Option("萍乡市", "1306");
    this[13][7] = new Option("新余市", "1307");
    this[13][8] = new Option("上饶市", "1308");
    this[13][9] = new Option("鹰潭市", "1309");
    this[13][10] = new Option("宜春市", "1310");
    
    this[7] = new Array(9);
    this[7][0] = new Option("长春市", "700");
    this[7][1] = new Option("白城市", "701");
    this[7][2] = new Option("白山市", "702");
    this[7][3] = new Option("吉林市", "703");
    this[7][4] = new Option("辽源市", "704");
    this[7][5] = new Option("四平市", "705");
    this[7][6] = new Option("松原市", "706");
    this[7][7] = new Option("通化市", "707");
    this[7][8] = new Option("延边朝鲜族自治州", "708");
    
    this[6] = new Array(14);
    this[6][0] = new Option("沈阳市", "600");
    this[6][1] = new Option("大连市", "601");
    this[6][2] = new Option("阜新市", "602");
    this[6][3] = new Option("抚顺市", "603");
    this[6][4] = new Option("本溪市", "604");
    this[6][5] = new Option("鞍山市", "605");
    this[6][6] = new Option("丹东市", "606");
    this[6][7] = new Option("锦州市", "607");
    this[6][8] = new Option("朝阳市", "608");
    this[6][9] = new Option("辽阳市", "609");
    this[6][10] = new Option("盘锦市", "610");
    this[6][11] = new Option("铁岭市", "611");
    this[6][12] = new Option("营口市", "612");
    this[6][13] = new Option("葫芦岛市", "613");
    
    this[28] = new Array(12);
    this[28][0] = new Option("呼和浩特市", "2800");
    this[28][1] = new Option("阿拉善盟", "2801");
    this[28][2] = new Option("巴彦淖尔盟", "2802");
    this[28][3] = new Option("包头市", "2803");
    this[28][4] = new Option("赤峰市", "2804");
    this[28][5] = new Option("兴安盟", "2805");
    this[28][6] = new Option("乌兰察布盟", "2806");
    this[28][7] = new Option("乌海市", "2807");
    this[28][8] = new Option("锡林郭勒盟", "2808");
    this[28][9] = new Option("呼伦贝尔盟", "2809");
    this[28][10] = new Option("伊克昭盟", "2810");
    this[28][11] = new Option("通辽市", "2811");
    
    this[29] = new Array(5);
    this[29][0] = new Option("银川市", "2900");
    this[29][1] = new Option("固原市", "2901");
    this[29][2] = new Option("石嘴山市", "2902");
    this[29][3] = new Option("吴忠市", "2903");
    this[29][4] = new Option("中卫市", "2904");
    
    this[25] = new Array(8);
    this[25][0] = new Option("西宁市", "2500");
    this[25][1] = new Option("海东地区", "2501");
    this[25][2] = new Option("海南藏族自治州", "2502");
    this[25][3] = new Option("海北藏族自治州", "2503");
    this[25][4] = new Option("黄南藏族自治州", "2504");
    this[25][5] = new Option("果洛藏族自治州", "2505");
    this[25][6] = new Option("玉树藏族自治州", "2506");
    this[25][7] = new Option("海西蒙古族藏族自治州", "2507");
    
    this[2] = new Array(1);
    this[2][0] = new Option("上海市", "200");
    
    this[14] = new Array(17);
    this[14][0] = new Option("济南市", "1400");
    this[14][1] = new Option("东营市", "1401");
    this[14][2] = new Option("滨州市", "1402");
    this[14][3] = new Option("淄博市", "1403");
    this[14][4] = new Option("德州市", "1404");
    this[14][5] = new Option("济宁市", "1405");
    this[14][6] = new Option("聊城市", "1406");
    this[14][7] = new Option("临沂市", "1407");
    this[14][8] = new Option("莱芜市", "1408");
    this[14][9] = new Option("青岛市", "1409");
    this[14][10] = new Option("日照市", "1410");
    this[14][11] = new Option("威海市", "1411");
    this[14][12] = new Option("泰安市", "1412");
    this[14][13] = new Option("潍坊市", "1413");
    this[14][14] = new Option("烟台市", "1414");
    this[14][15] = new Option("菏泽市", "1415");
    this[14][16] = new Option("枣庄市", "1416");
    
    this[5] = new Array(11);
    this[5][0] = new Option("太原市", "500");
    this[5][1] = new Option("大同市", "501");
    this[5][2] = new Option("晋城市", "502");
    this[5][3] = new Option("晋中市", "503");
    this[5][4] = new Option("长治市", "504");
    this[5][5] = new Option("临汾市", "505");
    this[5][6] = new Option("吕梁地区", "506");
    this[5][7] = new Option("忻州市", "507");
    this[5][8] = new Option("朔州市", "508");
    this[5][9] = new Option("阳泉市", "509");
    this[5][10] = new Option("运城市", "510");
    
    this[23] = new Array(10);
    this[23][0] = new Option("西安市", "2300");
    this[23][1] = new Option("宝鸡市", "2301");
    this[23][2] = new Option("安康市", "2302");
    this[23][3] = new Option("商洛市", "2303");
    this[23][4] = new Option("铜川市", "2304");
    this[23][5] = new Option("渭南市", "2305");
    this[23][6] = new Option("咸阳市", "2306");
    this[23][7] = new Option("延安市", "2307");
    this[23][8] = new Option("汉中市", "2308");
    this[23][9] = new Option("榆林市", "2309");
    
    this[20] = new Array(21);
    this[20][0] = new Option("成都市", "2000");
    this[20][1] = new Option("达川市", "2001");
    this[20][2] = new Option("甘孜藏族自治州", "2002");
    this[20][3] = new Option("自贡市", "2003");
    this[20][4] = new Option("阿坝藏族羌族自治州", "2004");
    this[20][5] = new Option("巴中市", "2005");
    this[20][6] = new Option("德阳市", "2006");
    this[20][7] = new Option("广安市", "2007");
    this[20][8] = new Option("广元市", "2008");
    this[20][9] = new Option("凉山彝族自治州", "2009");
    this[20][10] = new Option("乐山市", "2010");
    this[20][11] = new Option("攀枝花市", "2011");
    this[20][12] = new Option("南充市", "2012");
    this[20][13] = new Option("内江市", "2013");
    this[20][14] = new Option("泸州市", "2014");
    this[20][15] = new Option("绵阳市", "2015");
    this[20][16] = new Option("遂宁市", "2016");
    this[20][17] = new Option("雅安市", "2017");
    this[20][18] = new Option("宜宾市", "2018");
    this[20][19] = new Option("眉山市", "2019");
    this[20][20] = new Option("资阳市", "2020");
    
    this[1] = new Array(1);
    this[1][0] = new Option("天津市", "100");
    
    this[30] = new Array(15);
    this[30][0] = new Option("乌鲁木齐市", "3000");
    this[30][1] = new Option("喀什地区", "3001");
    this[30][2] = new Option("克孜勒苏柯尔克孜自治", "3002");
    this[30][3] = new Option("克拉玛依市", "3003");
    this[30][4] = new Option("阿克苏地区", "3004");
    this[30][5] = new Option("阿勒泰地区", "3005");
    this[30][6] = new Option("巴音郭楞蒙古自治州", "3006");
    this[30][7] = new Option("哈密地区", "3007");
    this[30][8] = new Option("博尔塔拉蒙古自治州", "3008");
    this[30][9] = new Option("昌吉回族自治州", "3009");
    this[30][10] = new Option("塔城地区", "3010");
    this[30][11] = new Option("吐鲁番地区", "3011");
    this[30][12] = new Option("和田地区", "3012");
    this[30][13] = new Option("石河子市", "3013");
    this[30][14] = new Option("伊犁哈萨克自治州", "3014");
    
    this[26] = new Array(7);
    this[26][0] = new Option("拉萨市", "2600");
    this[26][1] = new Option("阿里地区", "2601");
    this[26][2] = new Option("昌都市", "2602");
    this[26][3] = new Option("林芝地区", "2603");
    this[26][4] = new Option("那曲地区", "2604");
    this[26][5] = new Option("山南地区", "2605");
    this[26][6] = new Option("日喀则地区", "2606");
    
    this[22] = new Array(16);
    this[22][0] = new Option("昆明市", "2200");
    this[22][1] = new Option("大理白族自治州", "2201");
    this[22][2] = new Option("昭通市", "2202");
    this[22][3] = new Option("保山市", "2203");
    this[22][4] = new Option("德宏傣族景颇族自治州", "2204");
    this[22][5] = new Option("迪庆藏族自治州", "2205");
    this[22][6] = new Option("楚雄彝族自治州", "2206");
    this[22][7] = new Option("临沧地区", "2207");
    this[22][8] = new Option("丽江市", "2208");
    this[22][9] = new Option("怒江傈僳族自治州", "2209");
    this[22][10] = new Option("曲靖市", "2210");
    this[22][11] = new Option("思茅地区", "2211");
    this[22][12] = new Option("西双版纳傣族自治州", "2212");
    this[22][13] = new Option("文山壮族苗族自治州", "2213");
    this[22][14] = new Option("红河哈尼族彝族自治州", "2214");
    this[22][15] = new Option("玉溪市", "2215");
    
    this[10] = new Array(11);
    this[10][0] = new Option("杭州市", "1000");
    this[10][1] = new Option("嘉兴市", "1001");
    this[10][2] = new Option("金华市", "1002");
    this[10][3] = new Option("衢州市", "1003");
    this[10][4] = new Option("丽水市", "1004");
    this[10][5] = new Option("宁波市", "1005");
    this[10][6] = new Option("绍兴市", "1006");
    this[10][7] = new Option("台州市", "1007");
    this[10][8] = new Option("温州市", "1008");
    this[10][9] = new Option("湖州市", "1009");
    this[10][10] = new Option("舟山市", "1010");
    
    this[31] = new Array(1);
    this[31][0] = new Option("香港", "3100");
    
    this[32] = new Array(1);
    this[32][0] = new Option("澳门", "3200");
    this[33] = new Array(1);
    this[33][0] = new Option("台湾", "3300");
    this[34] = new Array(7);
    this[34][0] = new Option("北美洲", "3400");
    this[34][1] = new Option("南美洲", "3401");
    this[34][2] = new Option("大洋洲", "3402");
    this[34][3] = new Option("欧洲", "3403");
    this[34][4] = new Option("亚洲", "3404");
    this[34][5] = new Option("非洲", "3405");
    this[34][6] = new Option("虚拟社团", "3406");
    return this;
}

provinceOp = new provinceList();
cityOp = new cityList();

provinceOp2 = new provinceList();
cityOp2 = new cityList();

//子函数加省份
function initialize(provID, cityID) {
    province = form1.province;
    city = form1.city;

    if (provID == undefined) {
        provID = 0;
    }
    
    for (i = 0; i < provinceOp.length; i++) {
        try {
            province.add(provinceOp[i]); //work only IE
        }
        catch (e) {
            province.add(provinceOp[i], null); //standards compliant ,doesn's work in IE.
        }
    }
    
    province.options[provID].selected = true;
 
    addCity(province, city);
    if (cityID != undefined) {
        city.value = cityID;
    } else {
        city.value = 0;
    }
}

//子函数加城市
function addCity(province, city) {
    try {
        var i = province.selectedIndex;
        for (j = 0; j < cityOp[i].length; j++) {
            //if (cityOp[i][j].text!=''){
            try
        { city.add(cityOp[i][j]); }
            catch (e) { city.add(cityOp[i][j], null); }
            // }
        }
    } catch (Error)
    { }
}

//子函数删城市
function delCity(city) {
    var len = city.length;
    for (i = 0; i < len; i++) {
        city.remove(0);
    }
}

//子函数：控制可选城市随所选省份改变
function province_onchange(province, city) {
    delCity(city);
    addCity(province, city);
}
