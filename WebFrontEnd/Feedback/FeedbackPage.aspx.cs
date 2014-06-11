using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Feedback_FeedbackPage : System.Web.UI.Page
{
    IBLL.IStudent stu = BLLFactory.DataAccess.CreateStudent();
    int stdID = -1;

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        if (null != cookie)
        {
            try
            {
                stdID = Convert.ToInt32(cookie.Values["ID"]);
                StudentInfo student = stu.Get(stdID);
                Image1.ImageUrl = student.Stu_Image;
                Std_Name.Text = student.Stu_UserName;
                Std_ID.Text = Convert.ToString(student.Stu_ID);
            }
            catch
            {
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else
            Response.Redirect("~/Student/Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        FeedbackInfo feedback = new FeedbackInfo();
        IBLL.IFeedback feed = BLLFactory.DataAccess.CreateFeedback();

        String title = name.Text;
        String content = text.Text;
        
        
        t.Text = title;
        c.Text = content;
        
        if ((title.Length >= 1 && title.Length <= 50) || (content.Length >= 1 && content.Length <= 150))
        {
            try
            {
                feedback.Stu_ID = stdID;
                feedback.Fee_Level = 'D';
                feedback.Fee_Time = System.DateTime.Now;
                feedback.Fee_Topic = title;
                feedback.Fee_Detail = content;
                t.Text = "sss";
                feed.Add(feedback);

            }
            catch
            {
                throw new Exception();
            }
            finally
            {
                name.Text = "";
                text.Text = "";
            }
        }
    }
}