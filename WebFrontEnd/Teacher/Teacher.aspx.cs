using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Teacher_Teacher : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
      //  IList<TeacherInfo> lTeacher = bllTeacher.GetAll();

       // ImageP1.ImageUrl = lTeacher.ElementAt(0).Tea_Image;
       // LableD1.Text = lTeacher.ElementAt(0).Tea_Describe;
        TeacherInfo teacher = bllTeacher.Get(5);
        ImageP1.ImageUrl = teacher.Tea_Image;
        LableD1.Text = teacher.Tea_Describe;
    }
}