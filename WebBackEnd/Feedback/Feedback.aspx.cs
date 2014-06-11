using Model;
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
                Bind();
            }
    }

    private void Bind()
    {
        FeedbackGrid.DataSource = bllFeedback.GetFeedbackList();
        FeedbackGrid.DataBind();
    }
    protected void LevelS_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = button.Parent.Parent as GridViewRow;
        var Label = FeedbackGrid.Rows[gvr.RowIndex].FindControl("LevelLabel") as Label;
        Label.Text = "S";

    }
    protected void LevelA_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = button.Parent.Parent as GridViewRow;
        var Label = FeedbackGrid.Rows[gvr.RowIndex].FindControl("LevelLabel") as Label;
        Label.Text = "A";
    }
    protected void LevelB_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = button.Parent.Parent as GridViewRow;
        var Label = FeedbackGrid.Rows[gvr.RowIndex].FindControl("LevelLabel") as Label;
        Label.Text = "B";
    }
    protected void LevelC_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = button.Parent.Parent as GridViewRow;
        var Label = FeedbackGrid.Rows[gvr.RowIndex].FindControl("LevelLabel") as Label;
        Label.Text = "C";
    }
    protected void LevelD_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = button.Parent.Parent as GridViewRow;
        var Label = FeedbackGrid.Rows[gvr.RowIndex].FindControl("LevelLabel") as Label;
        Label.Text = "D";
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = button.Parent.Parent as GridViewRow;
        var Label = FeedbackGrid.Rows[gvr.RowIndex].FindControl("LevelLabel") as Label;
        //    var IDLabel = FeedbackGrid.Rows[gvr.RowIndex].("LevelLabel") as Label;
        Label.Text = "D";
        bllFeedback.Remove(new FeedbackInfo() { Fee_ID = 1 });
    }
}