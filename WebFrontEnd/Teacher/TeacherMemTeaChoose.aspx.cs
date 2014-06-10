using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TeacherMemTeaChoose : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            GridBind();
        }
    }

    private void GridBind()
    {
        GridTea.DataSource = bllTeacher.GetAll();
        GridTea.DataBind();
    }
}