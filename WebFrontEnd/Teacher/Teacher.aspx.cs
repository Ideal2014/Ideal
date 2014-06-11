using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Teacher_Teacher : System.Web.UI.Page
{
    private  IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
        IList<TeacherInfo> lTeacher = bllTeacher.GetAll();

        ImageP1.ImageUrl = lTeacher.ElementAt(0).Tea_Image;
        LabelD1.Text = lTeacher.ElementAt(0).Tea_Describe;
        ImageT1.ImageUrl = lTeacher.ElementAt(0).Tea_SImage;
        LabelT1.Text = lTeacher.ElementAt(0).Tea_Name;

        ImageP2.ImageUrl = lTeacher.ElementAt(1).Tea_Image;
        LabelD2.Text = lTeacher.ElementAt(1).Tea_Describe;
        ImageT2.ImageUrl = lTeacher.ElementAt(1).Tea_SImage;
        LabelT2.Text = lTeacher.ElementAt(1).Tea_Name;
        
        ImageP3.ImageUrl = lTeacher.ElementAt(2).Tea_Image;
        LabelD3.Text = lTeacher.ElementAt(2).Tea_Describe;
        ImageT3.ImageUrl = lTeacher.ElementAt(2).Tea_SImage;
        LabelT3.Text = lTeacher.ElementAt(2).Tea_Name;

        ImageP4.ImageUrl = lTeacher.ElementAt(3).Tea_Image;
        LabelD4.Text = lTeacher.ElementAt(3).Tea_Describe;
        ImageT4.ImageUrl = lTeacher.ElementAt(3).Tea_SImage;
        LabelT4.Text = lTeacher.ElementAt(3).Tea_Name;

        ImageP5.ImageUrl = lTeacher.ElementAt(4).Tea_Image;
        LabelD5.Text = lTeacher.ElementAt(4).Tea_Describe;
        ImageT5.ImageUrl = lTeacher.ElementAt(4).Tea_SImage;
        LabelT5.Text = lTeacher.ElementAt(4).Tea_Name;

        ImageP6.ImageUrl = lTeacher.ElementAt(5).Tea_Image;
        LabelD6.Text = lTeacher.ElementAt(5).Tea_Describe;
        ImageT6.ImageUrl = lTeacher.ElementAt(5).Tea_SImage;
        LabelT6.Text = lTeacher.ElementAt(5).Tea_Name;
       
    }
}