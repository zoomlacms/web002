<%@ Page Language="C#" %>
<%@ Import Namespace="ZoomLa.Common" %>
<%@ Import Namespace="ZoomLa.Model" %>
<%@ Import Namespace="ZoomLa.BLL" %>
<!DOCTYPE HTML>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string payOnlineShopID;
        string PayOnlineKey;

        //int payPlatId = 1;  //支付宝即时到账
        M_PayPlat pinfo=new M_PayPlat();
        int payPlatId = pinfo.PayPlatID;
        B_PayPlat bll = new B_PayPlat();
        B_Payment pay = new B_Payment();
        B_Package bpack = new B_Package();      
       
        
        M_PayPlat plat = bll.GetPayPlatByid(payPlatId);
        payOnlineShopID = plat.AccountID;
        PayOnlineKey = plat.MD5Key;
        string partner = "", key = "";
        partner = payOnlineShopID;
        key = PayOnlineKey;
        string v_oid = DelStr(Request.QueryString["out_trade_no"]);           //商户定单号
        string trade_status = DelStr(Request.QueryString["trade_status"]);
        string v_amount = DelStr(Request.QueryString["price"]);
        string notify_id = Request.QueryString["notify_id"];
        string alipayNotifyURL = "";
        switch (payPlatId)
        {
            case 1://支付宝支付
                alipayNotifyURL = "https://www.alipay.com/cooperate/gateway.do?";
                alipayNotifyURL = alipayNotifyURL + "service=notify_verify" + "&partner=" + partner + "&notify_id=" + Request.QueryString["notify_id"];
                break;
            case 2://快钱
                alipayNotifyURL = "https://www.99bill.com/gateway/recvMerchantInfoAction.htm?";
                alipayNotifyURL = alipayNotifyURL + "service=notify_verify" + "&partner=" + partner + "&notify_id=" + Request.QueryString["notify_id"];
                break;
            case 4://财付通
                alipayNotifyURL = "https://www.tenpay.com/cgi-bin/med/show_opentrans.cgi";
                alipayNotifyURL = alipayNotifyURL + "service=notify_verify" + "&partner=" + partner + "&notify_id=" + Request.QueryString["cft_tid"];
                break;
           
            default:
                function.WriteErrMsg("<li>选择的支付平台未集成，请重新选择另外的支付平台！</li>");
                break;
        }

        //获取支付宝ATN返回结果，true是正确的订单信息，false 是无效的
        string responseTxt = Get_Http(alipayNotifyURL, 120000);

        int i;
        NameValueCollection coll;

        coll = Request.QueryString;

        String[] requestarr = coll.AllKeys;

        //进行排序；
        string[] Sortedstr = BubbleSort(requestarr);

        //构造待md5摘要字符串 ；
        string prestr = "";
        for (i = 0; i < Sortedstr.Length; i++)
        {
            if (Request.QueryString[Sortedstr[i]] != "" && Sortedstr[i] != "sign" && Sortedstr[i] != "sign_type")
            {
                if (i == Sortedstr.Length - 1)
                {
                    prestr = prestr + Sortedstr[i] + "=" + Request.QueryString[Sortedstr[i]];
                }
                else
                {
                    prestr = prestr + Sortedstr[i] + "=" + Request.QueryString[Sortedstr[i]] + "&";
                }
            }

        }
        prestr = prestr + key;

        string mysign = GetMD5(prestr);


        string sign = Request.QueryString["sign"];
        string returnTxt = "fail";
        // && responseTxt == "true"
        int Package =DataConverter.CLng(Request.QueryString["Package"]);   
        if (sign == mysign)   //验证支付发过来的消息，签名是否正确
        {
            if (trade_status == "TRADE_FINISHED")      // WAIT_SELLER_SEND_GOODS  判断支付状态（文档中有枚举表可以参考）            
            {
                //更新自己数据库的订单语句，请自己填写一下
                returnTxt = "success";
                M_Payment pinfos = pay.GetPaymentByName(v_oid);
                pinfos.Status = 3;
                pinfos.PlatformInfo = "支付宝即时到账";
                pinfos.SuccessTime = DateTime.Now;
                pay.Update(pinfos);
                if (Package > 0)
                {
                    M_Package mpack = bpack.GetSelect(Package);
                    if (mpack != null && mpack.id > 0)
                    {
                         B_User buser =new B_User();
                         M_UserInfo userinfo = buser.GetUserByUserID(pinfos.UserID);
                         if (userinfo != null)
                         {
                             buser.AddDummyPurse(userinfo.UserID, mpack.Ito);
                             if (mpack.Point > 0)
                             {
                                 userinfo.UserPoint = userinfo.UserPoint + mpack.Point;
                                 buser.UpdateUserPoint(userinfo.UserPoint, userinfo.UserID);
                             }
                         }
                    }
                }
            }
            else
            {
                returnTxt = "fail";
            }
        }
        Response.Write(returnTxt);
    }
    
    public static string GetMD5(string s)
    {
        /// <summary>
        /// 与ASP兼容的MD5加密算法
        /// </summary>

        System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] t = md5.ComputeHash(Encoding.GetEncoding("gb2312").GetBytes(s));
        StringBuilder sb = new StringBuilder(32);
        for (int i = 0; i < t.Length; i++)
        {
            sb.Append(t[i].ToString("x").PadLeft(2, '0'));
        }
        return sb.ToString();
    }
    public static string[] BubbleSort(string[] R)
    {
        /// <summary>
        /// 冒泡排序法
        /// </summary>
        int i, j; //交换标志 
        string temp;

        bool exchange;

        for (i = 0; i < R.Length; i++) //最多做R.Length-1趟排序 
        {
            exchange = false; //本趟排序开始前，交换标志应为假

            for (j = R.Length - 2; j >= i; j--)
            {
                if (System.String.CompareOrdinal(R[j + 1], R[j]) < 0)　//交换条件
                {
                    temp = R[j + 1];
                    R[j + 1] = R[j];
                    R[j] = temp;

                    exchange = true; //发生了交换，故将交换标志置为真 
                }
            }

            if (!exchange) //本趟排序未发生交换，提前终止算法 
            {
                break;
            }

        }
        return R;
    }
    //获取远程服务器ATN结果
    public String Get_Http(String a_strUrl, int timeout)
    {
        string strResult;
        try
        {

            System.Net.HttpWebRequest myReq = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(a_strUrl);
            myReq.Timeout = timeout;
            System.Net.HttpWebResponse HttpWResp = (System.Net.HttpWebResponse)myReq.GetResponse();
            System.IO.Stream myStream = HttpWResp.GetResponseStream();
            System.IO.StreamReader sr = new System.IO.StreamReader(myStream, Encoding.Default);
            StringBuilder strBuilder = new StringBuilder();
            while (-1 != sr.Peek())
            {
                strBuilder.Append(sr.ReadLine());
            }

            strResult = strBuilder.ToString();
        }
        catch (Exception exp)
        {

            strResult = "错误：" + exp.Message;
        }

        return strResult;
    }



    private string DelStr(string str)
    {
        if (string.IsNullOrEmpty(str))
        {
            str = "";
        }
        str = str.Replace(";", "");
        str = str.Replace("'", "");
        str = str.Replace("&", "");
        str = str.Replace(" ", "");
        str = str.Replace("　", "");
        str = str.Replace("%20", "");
        str = str.Replace("--", "");
        str = str.Replace("==", "");
        str = str.Replace("<", "");
        str = str.Replace(">", "");
        str = str.Replace("%", "");

        return str;
    }
</script>