using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback_Feedback : System.Web.UI.Page
{
    private  IBLL.IFeedback bllFeedback = BLLFactory.DataAccess.CreateFeedback();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                Bind();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }

    private void Bind()
    {
        FeedbackGrid.DataSource = bllFeedback.GetFeedbackList();
        FeedbackGrid.DataBind();
    }
}