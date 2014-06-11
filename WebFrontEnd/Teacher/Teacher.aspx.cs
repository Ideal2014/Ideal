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
       // TeacherInfo teacher = bllTeacher.Get(2);

        //  ImgT1.ImageUrl = teacher.Tea_Image;
        //  Lable1.Text = teacher.Tea_Describe;
    }
}