using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

/*
 * @author 余春帆 
 */

public partial class Purchase_AccountPurchase : System.Web.UI.Page
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
                Image7.ImageUrl = student.Stu_Image;
                Std_Name.Text = student.Stu_UserName;
                Std_ID.Text = Convert.ToString(student.Stu_ID);
                getData();                                      //调用获取绑定数据
            }
            catch
            {
                Response.Redirect("~/Student/Login.aspx");
            }
        }
        else
            Response.Redirect("~/Student/Login.aspx");
    }

    protected void getData()                        //获取数据，绑定数据
    {
        IBLL.IOrderRecord order = BLLFactory.DataAccess.CreateOrderRecord();
        GridView1.DataSource = order.GetAllOrder(stdID);
        GridView1.DataBind();
    }
}