using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TeacherEdit : System.Web.UI.Page
{
    private IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                LoadInfo();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }

    }
    private void LoadInfo()
    {
        TeacherNo.Value = Request.QueryString["id"].ToString();
        TeacherInfo teacher = bllTeacher.Get(Int32.Parse(TeacherNo.Value));
        TeacherName.Text = teacher.Tea_Name;
        TeacherNickName.Text = teacher.Tea_Nickname;
        //头像
        TeacherSex.SelectedValue = teacher.Tea_Sex;
        TeacherAge.Text = teacher.Tea_Age.ToString();
        TeacherNation.SelectedValue = teacher.Tea_Nation;
        TeacherSkill.Text = teacher.Tea_Skill;
        TeacherDescribe.Text = teacher.Tea_Describe;
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

        TeacherInfo teacher = new TeacherInfo();
        teacher.Tea_ID = Int32.Parse(TeacherNo.Value);
        teacher.Tea_Name = TeacherName.Text.ToString();
        teacher.Tea_Nickname = TeacherNickName.Text.ToString();
        //teacher.Tea_Image = TeacherImage.r
        teacher.Tea_Sex = TeacherSex.SelectedValue.ToString();
        teacher.Tea_Age = Int32.Parse(TeacherAge.Text.ToString());
        teacher.Tea_Nation = TeacherNation.Text.ToString();
        teacher.Tea_Skill = TeacherSkill.Text.ToString();
        teacher.Tea_Describe = TeacherDescribe.Text.ToString();

        bllTeacher.Modify(teacher);

        Response.Redirect("~/Teacher/TeacherList.aspx");
    }
}