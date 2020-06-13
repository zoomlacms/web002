<%@ WebHandler Language="C#" Class="GoogleMap" %>

using System;
using System.Web;
using ZoomLa.Model.User;
using ZoomLa.BLL.User;
using ZoomLa.BLL;
using System.Xml;
public class GoogleMap : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string ation = context.Request["v2"] ?? "";
        string reult = string.Empty;
        switch (ation)
        {
            case "select":
                reult = selectMap(context.Request["mid"]);
                break;
            case "xml":
                reult = GetXmlCity(context.Request["Xname"], context);
                break;
            case "":
                reult = "";
                break;
            case "inser":
                reult = Getinsert(Convert.ToInt32(context.Request["uid"]), context.Request["lx"], context.Request["ly"], Convert.ToInt32(context.Request["lz"]), context.Request["type"]);
                break;
            case "updat":
                reult = UpdateMap(context.Request["lx"], context.Request["ly"], Convert.ToInt32(context.Request["lz"]), context.Request["type"], context.Request["mid"]);
                break;
        }
        context.Response.Write(reult);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    public string selectMap(string mid)
    {
        B_Map bm = new B_Map();
        M_map mp = bm.SelectMapByMid(Convert.ToInt32(mid));
        string lx = mp.lx;
        string ly = mp.ly;
        string lz = mp.lz.ToString();
        if (lx == "1")
        {
            return "0";
        }
        else
        {
            return ly + "," + lx + "," + lz + "," + mp.type;
        }

    }
    public string GetXmlCity(string xmlname, HttpContext e)
    {
        string path = e.Server.MapPath("");
        XmlDocument doc = new XmlDocument();
        doc.Load(e.Server.MapPath("../../User/Develop/Xml/Area.xml"));
        XmlNodeList items = doc.DocumentElement.SelectNodes("province");
        string mt = string.Empty;
        foreach (XmlNode iten in items)
        {
            if (iten.Attributes["name"].InnerText == xmlname)
            {
                XmlNodeList yl = iten.SelectNodes("city");
                foreach (XmlNode io in yl)
                {
                    mt += io.Attributes["name"].InnerText + ",";
                }
            }

        }
        return mt.Substring(0, mt.Length - 1);
    }
    public string Getinsert(int uid, string lx, string ly, int lz, string type)
    {
        M_map mp = new M_map();
        mp.uid = uid;
        mp.lx = lx;
        mp.ly = ly;
        mp.lz = lz;
        B_Map bm = new B_Map();
        return bm.GetInsert(mp).ToString();
    }
    public string UpdateMap(string lx, string ly, int lz, string type, string mid)
    {
        int pid;
        string mt = string.Empty;
        B_User buser = new B_User();
        B_Map bm = new B_Map();
        M_map mp = new M_map();
        mp.mid = Convert.ToInt32(mid);
        mp.uid = 0;
        mp.lx = lx;
        mp.ly = ly;
        mp.lz = lz;
        mp.type = type;
        mp.CreateTime = DateTime.Now;
        if (Convert.ToInt32(mid) == 0)
        {
            pid = bm.GetInsert(mp);
        }
        else
        {
            bm.UpdateMapByMid(mp);
        }
        return mid + ",您成功修改了标注！";
    }
}