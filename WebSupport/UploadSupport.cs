using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;

namespace WebSupport
{
    public class UploadSupport
    {


        public static bool SaveImage(FileUpload uploadImageFile, string server, string fileName, out string errorMsg)
        {
            if (uploadImageFile.HasFile)//验证是否包含文件
            {
                //验证上传文件是否图片格式
                if (IsImage(uploadImageFile.FileName))
                {
                    //对上传文件的大小进行检测，限定文件最大不超过8M
                    if (uploadImageFile.PostedFile.ContentLength < 8192000)
                    {
                        if (Directory.Exists(server + "../WebFrontEnd/Resource/Image/") == false)//如果不存在就创建file文件夹
                        {
                            Directory.CreateDirectory(server + "../WebFrontEnd/Resource/Image/");
                        }
                        if (Directory.Exists(server + "../WebBackEnd/Resource/Image/") == false)//如果不存在就创建file文件夹
                        {
                            Directory.CreateDirectory(server + "../WebBackEnd/Resource/Image/");
                        }
                        uploadImageFile.PostedFile.SaveAs(server + "../WebFrontEnd/Resource/Image/" + fileName);//保存图片
                        uploadImageFile.PostedFile.SaveAs(server + "../WebBackEnd/Resource/Image/" + fileName);//保存图片
                        //清空提示
                        errorMsg = "";
                        return true;
                    }
                    else
                    {
                        errorMsg = "文件大小超出8M！请重新选择！";
                        return false;
                    }
                }
                else
                {
                    errorMsg = "要上传的文件类型不对！请重新选择！";
                    return false;
                }
            }
            else
            {
                errorMsg = "请选择要上传的图片！";
                return false;
            }
        }
        public static void CopyFile(string source, string distination)
        {
            string dir = Path.GetDirectoryName(distination);
            //检查是否存在目的目录
            if (!Directory.Exists(dir))
                Directory.CreateDirectory(dir);
            //先来移动文件
            FileInfo file = new FileInfo(source);
            file.CopyTo(distination, true);
        }


        private static bool IsImage(string str)
        {
            bool isimage = false;
            string thestr = str.ToLower();
            //限定只能上传jpg和gif图片
            string[] allowExtension = { ".jpg", ".gif", ".bmp", ".png" };
            //对上传的文件的类型进行一个个匹对
            for (int i = 0; i < allowExtension.Length; i++)
            {
                if (thestr == allowExtension[i])
                {
                    isimage = true;
                    break;
                }
            }
            return true;
        }

        public static string Image(string p)
        {
            return "~/Resource/Image/" + p;
        }


        //随机数 
        private static char[] constant = 
{ 
'0','1','2','3','4','5','6','7','8','9', 
'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z', 
'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' 
};
    



        public static string GenerateRandom(int p)
        {
            System.Text.StringBuilder newRandom = new System.Text.StringBuilder(62);
            Random rd = new Random();
            for (int i = 0; i < p; i++)
            {
                newRandom.Append(constant[rd.Next(62)]);
            }
            return newRandom.ToString();
        }
    }
}
