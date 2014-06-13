using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class TeacherMemRobot : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    private static readonly IBLL.IBalance bllBalance = BLLFactory.DataAccess.CreateBalance();
    private string teaid;
    private TeacherInfo teacher;

    protected void Page_Load(object sender, EventArgs e)
    {
        teaid = Request.QueryString["tid"];

        teacher = bllTeacher.Get(Convert.ToInt32(teaid));
        ImageT.ImageUrl = teacher.Tea_SImage;
        LabelName.Text = teacher.Tea_Name;
    }
    protected void ButtonSend_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["usr"];
        int stdID = Convert.ToInt32(cookie.Values["ID"]);
       // int stdID = 1;
        BalanceInfo balance = bllBalance.GetbyTidSid(Convert.ToInt32(teaid), stdID);

        if (System.DateTime.Now > balance.Bal_Time)
        {
            string strMsg = "余额不足，购买时长？";
            string strUrl_Yes = "~/Purchase/TeachersPurchase.aspx", strUrl_No = "~/Teacher/TeacherMemTeaChoose.aspx";
            Response.Write("<Script Language='JavaScript'>if ( window.confirm('"+strMsg+"')) {  window.location.href='" + strUrl_Yes +
                              "' } else {window.location.href='"+ strUrl_No +"' };</script>");
        }
    }
}