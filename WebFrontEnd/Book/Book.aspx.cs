using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class Book_Book : System.Web.UI.Page
{
    private static readonly IBLL.IBook bllBook = BLLFactory.DataAccess.CreateBook();
    private static readonly IBLL.IBalance bllBalance = BLLFactory.DataAccess.CreateBalance();
    private static readonly IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    private string stuId = "-1";
    private HttpCookie cookie;

    protected void Page_Load(object sender, EventArgs e)
    {
        cookie = Request.Cookies["usr"];
       // stuId = cookie.Values["ID"];

        if (!IsPostBack)
        {
            GridBind();
        }
    }

    private void GridBind()
    {
        GridBook.DataSource = bllBook.GetBookList();
        GridBook.DataBind();
    }



    protected void DownloadPart_Command(object sender, CommandEventArgs e)
    {
        string filename = MapPath(Convert.ToString(e.CommandArgument));
        Response.Clear();
        Response.ContentType = "application/octet-stream ";
        Response.AppendHeader("Content-Disposition ", "attachment;   Filename   =   " + System.Convert.ToChar(34) + filename + System.Convert.ToChar(34));
        Response.Charset = " ";
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.Flush();
        Response.WriteFile(Convert.ToString(e.CommandArgument)); 
    }
    protected void DownloadAll_Command(object sender, CommandEventArgs e)
    {
        object[] arguments = e.CommandArgument.ToString().Split(',');
        string viewUrl = Convert.ToString(arguments[0]);
        int teaId = Convert.ToInt32(arguments[1]);
        BalanceInfo balance = bllBalance.GetbyTidSid(teaId, Convert.ToInt32(stuId));

        if (null != cookie)
        {
            stuId = cookie.Values["ID"];
        }
        else
        {
            Response.Redirect("~/Student/Login.aspx");
        }

        if (!stuId.Equals("-1"))
        {
            try
            {
                StudentInfo stuInfo = bllStudent.Get(Convert.ToInt32(stuId));
            }
            catch {
                Response.Redirect("~/Student/Login.aspx");
            }
        }

        if (System.DateTime.Now > balance.Bal_Time)
        {
            Response.Redirect(String.Format("../Purchase/TeachersPurchase.aspx?tid={0}",teaId));
        }
        else {
            string filename = MapPath(viewUrl);
            Response.Clear();
            Response.ContentType = "application/octet-stream ";
            Response.AppendHeader("Content-Disposition ", "attachment;   Filename   =   " + System.Convert.ToChar(34) + filename + System.Convert.ToChar(34));
            Response.Charset = " ";
            Response.ContentEncoding = System.Text.Encoding.UTF8;
            Response.Flush();
            Response.WriteFile(viewUrl); 
        }
    }
}