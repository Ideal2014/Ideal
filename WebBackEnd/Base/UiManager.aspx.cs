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
        string server = Server.MapPath("~/");
        if (ImageFile1.HasFile)
        {
            UploadSupport.SaveImage(ImageFile1, server, "index1.png", out errorMsg);

        }
        if (ImageFile2.HasFile)
        {
          
            UploadSupport.SaveImage(ImageFile2, server , "index2.png", out errorMsg);


        }
        if (ImageFile3.HasFile)
        {
            UploadSupport.SaveImage(ImageFile3, server , "index3.png", out errorMsg);

        }
        if (ImageFile4.HasFile)
        {
            UploadSupport.SaveImage(ImageFile4, server , "index4.png", out errorMsg);
        }
    }

    /// <summary>
    /// 验证是否指定的图片格式
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    /// 
    private void LoadImage()
    {
        Image1.ImageUrl = "~/Resource/Image/index1.png";
        Image2.ImageUrl = "~/Resource/Image/index2.png";
        Image3.ImageUrl = "~/Resource/Image/index3.png";
        Image4.ImageUrl = "~/Resource/Image/index4.png";
    }

}