using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Teacher_TeacherMemTeaChoose : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    private static readonly IBLL.IBalance bllBalance = BLLFactory.DataAccess.CreateBalance();

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
                Image7.ImageUrl = student.Stu_Image;
                Std_Name.Text = student.Stu_UserName;
                Std_ID.Text = Convert.ToString(student.Stu_ID);
                GridBind();
            }
            catch
            {
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else
            Response.Redirect("~/Student/Login.aspx");
    }

    private void GridBind()
    {
        GridTea.DataSource = bllTeacher.GetAll();
        GridTea.DataBind();
    }

    protected void BuyButton_Command(object sender, CommandEventArgs e)
    {
        BalanceInfo balance = bllBalance.GetbyTidSid(Convert.ToInt32(e.CommandArgument), Convert.ToInt32(stdID));
        if (System.DateTime.Now > balance.Bal_Time)
        {
            Response.Redirect(String.Format("../Purchase/TeachersPurchase.aspx?tid={0}", e.CommandArgument));
        }
        else
        {
            Response.Redirect(String.Format("~/TeacherMemRobot.aspx?tid={0}", e.CommandArgument));
        }
        
    }
}