using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Student_Login : System.Web.UI.Page
{
    private  IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["usr"] != null)
            {
                HttpCookie cookie = new HttpCookie("usr");
                cookie.Expires = System.DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
            }
        }
        

    }
    protected void Login_Click(object sender, EventArgs e)
    {
        StudentInfo student = new StudentInfo();
        StudentInfo student2 = bllStudent.GetByName(Username.Text.Trim());
        student.Stu_ID = student2.Stu_ID;
        student.Stu_Password = Password.Text.ToString().Trim();
        if (bllStudent.CheckLogin(student))
        {
            student2.Stu_LastLogin = DateTime.Now;
            bllStudent.Modify(student2);
            HttpCookie cookie = new HttpCookie("usr");
            cookie.Values["ID"] = student.Stu_ID.ToString();
            cookie.Values["pass"] =Password.Text.ToString().Trim();
            cookie.Expires = System.DateTime.Now.AddDays(1);//设置过期时间  1天
            Response.Cookies.Add(cookie);
            Response.Redirect("~/Home/Home.aspx");

        }
        
    }
}