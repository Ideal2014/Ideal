using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TeacherAdd : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Submit_Click(object sender, EventArgs e)
    {
        TeacherInfo teacher = new TeacherInfo();

        teacher.Tea_Name = TeacherName.Text.ToString();
        teacher.Tea_Nickname = TeacherNickName.Text.ToString();
        //teacher.Tea_Image = TeacherImage.r
        //teacher.Tea_Sex = 
        teacher.Tea_Age = Int32.Parse(TeacherAge.SelectedValue);
        teacher.Tea_Nation = TeacherNation.Text.ToString();
        teacher.Tea_Skill = TeacherSkill.Text.ToString();
        teacher.Tea_Suitable = TeacherSuitable.SelectedValue.ToString();
        teacher.Tea_About = TeacherAbout.Text.ToString();
        teacher.Tea_Describe = TeacherDescribe.Text.ToString();

        bllTeacher.Add(teacher);
    }
}