<%@ WebHandler Language="C#" Class="UploadHandler" %>

using System;
using System.Web;
using System.IO;
using ZoomLa.BLL;
using ZoomLa.BLL.FTP;
using ZoomLa.Model.FTP;
using System.Text;
public class UploadHandler : IHttpHandler
{
    private B_FTP bf = new B_FTP();
    private M_FtpConfig mf = new M_FtpConfig();
    public void ProcessRequest(HttpContext context)
    {
        HttpPostedFile file = context.Request.Files["Filedata"];
        if (context.Request["content"] == null || context.Request["content"] == "0")
        {
            context.Response.ContentType = "text/plain";
            context.Response.Charset = "utf-8";
            string PhPath = "";
            string path = HttpContext.Current.Server.MapPath("\\UploadFiles\\");
            PhPath = path;
            path += DateTime.Now.Year + "\\" + DateTime.Now.Month + "\\" + DateTime.Now.Day + "\\";
            if (file != null)
            {
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string[] str = file.FileName.Split('.');
                if (str.Length > 0)
                {
                    path += DateTime.Now.ToString("yyyyMMddHHmmssfffffff") + "." + str[str.Length - 1];
                    file.SaveAs(path);
                }
                //throw new Exception(path.Replace(PhPath, "\\UploadFiles"));
                //上传成功后让上传队列的显示自动消失
                context.Response.Write(path.Replace(PhPath, "").Replace('\\', '/'));
            }
            else
            {
                context.Response.Write("0");
            }
        }
        else
        {
            int id = Convert.ToInt32(context.Request["content"]);
            M_FtpConfig mf = bf.SeleteIDByAll(id);
            string userName = mf.FtpUsername;
            string password = mf.FtpPassword;
            string filePath =mf.SavePath + "/" + file.FileName;
            string uriString = "ftp://" + mf.FtpServer + filePath;

            System.Net.FtpWebRequest reqFTP;
            // 根据uri创建FtpWebRequest对象 
            reqFTP = (System.Net.FtpWebRequest)System.Net.FtpWebRequest.Create(new Uri(uriString));
            // ftp用户名和密码 
            reqFTP.Credentials = new System.Net.NetworkCredential(userName, password);
            if (reqFTP.UsePassive == true)
            {
                reqFTP.UsePassive = false;
            }
            else
            {
                reqFTP.UsePassive = true;
            }
            // 默认为true，连接不会被关闭 
            // 在一个命令之后被执行 
            reqFTP.KeepAlive = false;
            // 指定执行什么命令 
            reqFTP.Method = System.Net.WebRequestMethods.Ftp.UploadFile;
            // 指定数据传输类型 
            reqFTP.UseBinary = true;
            try
            {
                // 上传文件时通知服务器文件的大小 
                reqFTP.ContentLength = file.ContentLength;
                // 缓冲大小设置为2kb 
                int buffLength = 2048;
                byte[] buff = new byte[buffLength];
                int contentLen;
                // 打开一个文件流 (System.IO.FileStream) 去读上传的文件 
                Stream fs = file.InputStream;
                // 把上传的文件写入流 
                Stream strm = reqFTP.GetRequestStream();
                // 每次读文件流的2kb 
                contentLen = fs.Read(buff, 0, buffLength);
                // 流内容没有结束 
                while (contentLen != 0)
                {
                    // 把内容从file stream 写入 upload stream 
                    strm.Write(buff, 0, contentLen);
                    contentLen = fs.Read(buff, 0, buffLength);
                }
                // 关闭两个流 
                strm.Close();
                fs.Close();
                context.Response.Write("%" + mf.Alias + "|" + filePath);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("530"))
                {
                    //Response.Write("<script>alert('用户名或密码错误！');</script>");
                }
                else if (ex.Message.Contains("550"))
                {
                    //Response.Write("<script>alert('没有对应服务器！');</script>");
                }
            }
        }
    }

    public bool IsReusable
    {
        get { return false; }
    }
}