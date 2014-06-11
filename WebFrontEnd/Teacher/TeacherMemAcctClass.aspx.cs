using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Teacher_TeacherAccount : System.Web.UI.Page
{
    private  IBLL.IClassRecord bllClassRecord = BLLFactory.DataAccess.CreateClassRecord();

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        string stuId = cookie.Values["ID"];

        if (!IsPostBack)
        {
            GridBind(Convert.ToInt32(stuId));
        }
    }

    private void GridBind(int stu_id)
    {
        GridRec.DataSource = bllClassRecord.GetClassRecordList(stu_id);
        GridRec.DataBind();
    }
}