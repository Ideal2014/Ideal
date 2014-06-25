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
    private IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    private IBLL.IBalance bllBalance = BLLFactory.DataAccess.CreateBalance();
    private IBLL.IClassRecord bllClass = BLLFactory.DataAccess.CreateClassRecord();

    private string teaid;
    private TeacherInfo teacher;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            teaid = Request.QueryString["tid"];

            teacher = bllTeacher.Get(Convert.ToInt32(teaid));
            ImageT.ImageUrl = teacher.Tea_SImage;
            Tid.Text = teacher.Tea_ID.ToString();
            LabelName.Text = teacher.Tea_Name;

            string act = Request.QueryString["act"];
            if (null != act && "check".Equals(act))
            {
                Check();
            }
            HttpCookie cookie = Request.Cookies["usr"];
            int stdID = Convert.ToInt32(cookie.Values["ID"]);
            var classRecord = new ClassRecordInfo();
            classRecord.Cla_StartTime = DateTime.Now;
            classRecord.Cla_EndTime = DateTime.Now;
            classRecord.Stu_ID = stdID;
            classRecord.Tea_ID = Convert.ToInt32(teaid);
            bllClass.Add(classRecord);
        }
    }

    //检查余额
    protected void Check()
    {
        HttpCookie cookie = Request.Cookies["usr"];
        int stdID = Convert.ToInt32(cookie.Values["ID"]);
        BalanceInfo balance = bllBalance.GetbyTidSid(Convert.ToInt32(teaid), stdID);

        if (System.DateTime.Now > balance.Bal_Time)
        {
            string strMsg = "余额不足，请购买时长";
            Response.Write(strMsg);
        }

        Response.End();
    }
}