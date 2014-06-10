using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Teacher_TeacherMemTeaInfo : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
        string teaid = Request.QueryString["TeaID"];
        TeacherInfo teacher = bllTeacher.Get(Convert.ToInt32(teaid));
        ImageT.ImageUrl = teacher.Tea_SImage;
        LabelName.Text = teacher.Tea_Name;
        LabelSkill.Text = teacher.Tea_Skill;
        LabelNation.Text = teacher.Tea_Nation;
        LabelDes.Text = teacher.Tea_Describe;
    }
}