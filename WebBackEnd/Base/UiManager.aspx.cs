using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSupport;

public partial class Base_UiManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadImage();
        }
    }
    protected void Modify_Click(object sender, EventArgs e)
    {
        var btn = sender as Button;
        string errorMsg;
        if (ImageFile1.HasFile)
            UploadSupport.SaveImage(ImageFile1, Image1, Server.MapPath("~/"), "index1.png", out errorMsg);
        if (ImageFile2.HasFile)
            UploadSupport.SaveImage(ImageFile2, Image2, Server.MapPath("~/"), "index2.png", out errorMsg);
        if (ImageFile3.HasFile)
            UploadSupport.SaveImage(ImageFile3, Image3, Server.MapPath("~/"), "index3.png", out errorMsg);
        if (ImageFile4.HasFile)
            UploadSupport.SaveImage(ImageFile4, Image4, Server.MapPath("~/"), "index4.png", out errorMsg);
       // LoadImage();
    }

    /// <summary>
    /// 验证是否指定的图片格式
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    /// 
    private void LoadImage()
    {
        Image1.ImageUrl =  "~/index1.png";
        Image2.ImageUrl = "~/index2.png";
        Image3.ImageUrl =  "~/index3.png";
        Image4.ImageUrl =  "~/index4.png";
    }

}