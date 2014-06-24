using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

/*
 * author:翟丽娜
 */


public partial class Teacher_TeacherMemTeaInfo : System.Web.UI.Page
{
    private  IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    int stdID = -1;

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        if (null != cookie)
        {
            try
            { //赋值
                stdID = Convert.ToInt32(cookie.Values["ID"]);
                StudentInfo student = stu.Get(stdID);
                Image7.ImageUrl = student.Stu_Image;
                Std_Name.Text = student.Stu_UserName;
                Std_ID.Text = Convert.ToString(student.Stu_ID);

                string teaid = Request.QueryString["TeaID"];
                TeacherInfo teacher = bllTeacher.Get(Convert.ToInt32(teaid));
                ImageT.ImageUrl = teacher.Tea_SImage;
                LabelName.Text = teacher.Tea_Name;
                LabelSkill.Text = teacher.Tea_Skill;
                LabelNation.Text = teacher.Tea_Nation;
                LabelDes.Text = teacher.Tea_Describe;
            }
            catch
            { //未找到所传学生id
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else  //未登录
            Response.Redirect("~/Student/Login.aspx");
    }

}