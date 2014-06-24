using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

/*
 * author:翟丽娜
 */

public partial class TeacherMemRobot : System.Web.UI.Page
{
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    private static readonly IBLL.IBalance bllBalance = BLLFactory.DataAccess.CreateBalance();
    private string teaid;
    private TeacherInfo teacher;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            teaid = Request.QueryString["tid"];

            teacher = bllTeacher.Get(Convert.ToInt32(teaid));
            // ImageT.ImageUrl = teacher.Tea_SImage;
            Tid.Text = teacher.Tea_ID.ToString();
            LabelName.Text = teacher.Tea_Name;

            string act = Request.QueryString["act"];
            if (null != act && "check".Equals(act))
            {
                Check();
            }
        }
    }

    //发送点击事件
    protected void Check()
    {
        HttpCookie cookie = Request.Cookies["usr"];
        int stdID = Convert.ToInt32(cookie.Values["ID"]);
        BalanceInfo balance = bllBalance.GetbyTidSid(Convert.ToInt32(teaid), stdID);

        if (System.DateTime.Now > balance.Bal_Time)
        {
            string strMsg = "余额不足，请购买时长";
           // string strUrl_Yes = "~/Purchase/TeachersPurchase.aspx", strUrl_No = "~/Teacher/TeacherMemTeaChoose.aspx";
            //Response.Write("<Script Language='JavaScript'>if ( window.confirm('" + strMsg + "')) {  window.location.href='" + strUrl_Yes +
              //                "' } else {window.location.href='" + strUrl_No + "' };</script>");
            Response.Write(strMsg);
        }
        Response.End();
    }
}