using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback_Feedback : System.Web.UI.Page
{
    private static readonly IBLL.IFeedback bllFeedback = BLLFactory.DataAccess.CreateFeedback();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {
        FeedbackGrid.DataSource = bllFeedback.GetFeedbackList();
        FeedbackGrid.DataBind();
    }
}