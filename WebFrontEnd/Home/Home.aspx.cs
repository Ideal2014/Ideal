using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using WebSupport;

public partial class Home_Home : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    protected IBLL.IBook bllBook = BLLFactory.DataAccess.CreateBook();

    protected IList<TeacherInfo> teacherList;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["usr"] != null)
            {
                LoginContent.Visible = false;

            }
            teacherList = bllTeacher.GetAll();
            LoadImage();
        }

    }
    protected void Login_Click(object sender, EventArgs e)
    {
        StudentInfo student = bllStudent.GetByName(Username.Text.ToString());
        if (student != null && Password.Text.ToString() == student.Stu_Password)
        {
            HttpCookie cookie = new HttpCookie("usr");
            cookie.Values["ID"] = student.Stu_ID.ToString();
            cookie.Values["pass"] = student.Stu_Password;
            cookie.Expires = System.DateTime.Now.AddDays(1);//设置过期时间  1天
            Response.Cookies.Add(cookie);
            Response.Redirect("~/Home/Home.aspx");
        }
    }
    protected void Cancle_Click(object sender, EventArgs e)
    {

    }

    private void LoadImage()
    {
        string server = Server.MapPath("~/");
        UploadSupport.CopyFile(server + "../Resourse/Image/index1.png", server + "/Resourse/Image/index1.png");
        UploadSupport.CopyFile(server + "../Resourse/Image/index2.png", server + "/Resourse/Image/index2.png");
        UploadSupport.CopyFile(server + "../Resourse/Image/index3.png", server + "/Resourse/Image/index3.png");
        UploadSupport.CopyFile(server + "../Resourse/Image/index4.png", server + "/Resourse/Image/index4.png");

        Image1.ImageUrl = "~/Resourse/Image/index1.png";
        Image2.ImageUrl = "~/Resourse/Image/index2.png";
        Image3.ImageUrl = "~/Resourse/Image/index3.png";
        Image4.ImageUrl = "~/Resourse/Image/index4.png";
    }
}