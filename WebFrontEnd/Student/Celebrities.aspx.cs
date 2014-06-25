using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

/*
 * author:summer
 */ 

public partial class Student_Celebrities : System.Web.UI.Page
{
    private IBLL.IFeedback bllFeedBack = BLLFactory.DataAccess.CreateFeedback();
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    //显示名人堂信息
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Information.DataSource = bllFeedBack.GetFeedBackByLevelTop6();
            Information.DataBind();
            
            
        }

    }
}