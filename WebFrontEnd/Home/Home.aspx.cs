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
            TeacherActive.DataSource = bllTeacher.GetLimit(0,3);
            TeacherActive.DataBind();
            TeacherNotActive.DataSource = bllTeacher.GetLimit(3, 3);
            TeacherNotActive.DataBind();
            BookActive.DataSource = bllBook.GetAll();
            BookActive.DataBind();
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
        Image1.ImageUrl = UploadSupport.Image("index1.png");
        Image2.ImageUrl = UploadSupport.Image("index2.png");
        Image3.ImageUrl = UploadSupport.Image("index3.png");
        Image4.ImageUrl = UploadSupport.Image("index4.png");
    }
}