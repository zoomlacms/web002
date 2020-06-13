<%@ WebHandler Language="C#" Class="GoogleMaps" %>

using System;
using System.Web;
using ZoomLa.Model.User;
using ZoomLa.BLL.User;
using ZoomLa.BLL;
using System.Xml;
public class GoogleMaps : IHttpHandler,System.Web.SessionState.IRequiresSessionState
{
    
        public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
         
        string ation = context.Request["v2"] ?? "";
        string reult = string.Empty;
        switch (ation)
        {
            case "select":
                reult =selectinfor(Convert.ToInt32(context.Request["uid"]??"0"));
                break;
            case "inser":
                reult = Getinsert(Convert.ToInt32(context.Request["uid"]), context.Request["lx"], context.Request["ly"], Convert.ToInt32(context.Request["lz"]), context.Request["type"]);
                break;
            case "updat":
                reult = UpdateMap(Convert.ToInt32(context.Request["uid"]), context.Request["lx"], context.Request["ly"], Convert.ToInt32(context.Request["lz"]),context.Request["type"]);
                break;
            case "xml":
                reult = GetXmlCity(context.Request["Xname"], context);
                break;
            case "admin":
                reult = AdminInfor();
                break;
            default :
                break;
        }
        context.Response.Write(reult);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    public string AdminInfor()
    {
        B_User buser = new B_User();
        return buser.GetLogin().UserName+","+DateTime.Now.ToString("yyyy年MM月dd日");
    }
   public string selectinfor(int uid)
   {
        B_Map bm=new B_Map();
        M_map mp=bm.SelectMap(uid);
       string lx=mp.lx;
       string ly=mp.ly;
       string lz=mp.lz.ToString();
       if (lx == "1")
       {
           return "0";
       }
       else
       {
           return lx + "," + ly + "," + lz + "," + mp.type;
       }
   }
   public string Getinsert(int uid, string lx, string ly, int lz,string type)
    {
        M_map mp=new M_map();
        mp.uid=uid;
        mp.lx=lx;
        mp.ly=ly;
        mp.lz=lz;
        B_Map bm=new B_Map();
        return  bm.GetInsert(mp).ToString();
    }
    public string UpdateMap(int uid,string lx,string ly,int lz,string type)
    {
            string mt =string.Empty;
            B_User buser = new B_User();
                B_Map bm = new B_Map();
                M_map mp = new M_map();
                mp.uid = uid;
                mp.lx = lx;
                mp.ly = ly;
                mp.lz = lz;
                mp.type = type;
                if (bm.SelectMap(uid).mid== 0)
                {
                    bm.GetInsert(mp);
                }
                else
                {
                    bm.UpdateMap(uid, lx, ly, lz, type);
                }
                return "您成功修改了标注！";
    }
    public string GetXmlCity(string xmlname,HttpContext e)
    {
        string path = e.Server.MapPath("");
        XmlDocument doc = new XmlDocument();
        doc.Load(e.Server.MapPath("../Xml/Area.xml"));
        XmlNodeList items = doc.DocumentElement.SelectNodes("province");
        string mt = string.Empty;
        foreach (XmlNode iten in items)
        {
            if (iten.Attributes["name"].InnerText == xmlname)
            {
               XmlNodeList yl=iten.SelectNodes("city");
               foreach (XmlNode io in yl)
               {
                   mt += io.Attributes["name"].InnerText + ",";
               }
            }
            
        }
        return mt.Substring(0,mt.Length-1); 
    }

}