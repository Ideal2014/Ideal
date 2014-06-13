using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Student_Celebrities : System.Web.UI.Page
{
    private IBLL.IFeedback bllFeedBack = BLLFactory.DataAccess.CreateFeedback();
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Information.DataSource = bllFeedBack.GetSuperFeedbackList();
            Information.DataBind();
            
            
        }

    }
}