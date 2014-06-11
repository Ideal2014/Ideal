using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSupport;

public partial class Teacher_TeacherAdd : System.Web.UI.Page
{
    private IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Submit_Click(object sender, EventArgs e)
    {
        if (!Regex.IsMatch(TeacherName.Text.ToString(), @"^\S[^\^]{1,5}$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherNickName.Text.ToString(), @"^\S[^\^]+$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherSex.SelectedValue, @"^f|m$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherAge.Text.ToString(), @"^\d{1,2}$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherNation.Text.ToString(), @"^America|England|Australia$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherSkill.Text.ToString(), @"^\S{1,}$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherSuitable.Text.ToString(), @"^\S*$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherAbout.Text.ToString(), @"^\S*$"))
            throw new Exception();
        if (!Regex.IsMatch(TeacherDescribe.Text.ToString(), @"^\S*$"))
            throw new Exception();

        string error;
        if (!UploadSupport.SaveImage(TeacherImage, ShowImage, Server.MapPath("~/"), "1.png", out error))
            return;

        TeacherInfo teacher = new TeacherInfo();

        teacher.Tea_Name = TeacherName.Text.ToString();
        teacher.Tea_Nickname = TeacherNickName.Text.ToString();
        //teacher.Tea_Image = TeacherImage.r
        teacher.Tea_Sex = TeacherSex.SelectedValue.ToString();
        teacher.Tea_Age = Int32.Parse(TeacherAge.Text.ToString());
        teacher.Tea_Nation = TeacherNation.Text.ToString();
        teacher.Tea_Skill = TeacherSkill.Text.ToString();
        teacher.Tea_Suitable = TeacherSuitable.Text.ToString();
        teacher.Tea_About = TeacherAbout.Text.ToString();
        teacher.Tea_Describe = TeacherDescribe.Text.ToString();

        bllTeacher.Add(teacher);

        Response.Redirect("~/Teacher/TeacherList.aspx");
    }
}