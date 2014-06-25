using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using System.Data;

public partial class Teacher_Teacher : System.Web.UI.Page
{
    protected IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TeacherList.DataSource = bllTeacher.GetAll();
            TeacherList.DataBind();
        }

    }

    protected string start;
    protected string end;
}