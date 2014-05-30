using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Book_BookAdd : System.Web.UI.Page
{
    private static readonly IBLL.IBook bllBook = BLLFactory.DataAccess.CreateBook();
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                teacherList();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
    protected void KeepButton_Click(object sender, EventArgs e)
    {
        BookInfo book = new BookInfo();
     
        book.Boo_RegisterDate = (DateTime?)UpdataTime.SelectedDate;
        book.Tea_ID =Int32.Parse(TeacherList.SelectedValue);
        book.Boo_Image = System.IO.Path.GetFileName(BookPic.PostedFile.FileName);
        book.Boo_Preview = System.IO.Path.GetFileName(BookScan.PostedFile.FileName);
        book.Boo_View = System.IO.Path.GetFileName(BookComplete.PostedFile.FileName);
        book.Boo_Desribe = BookDescribe.Text.ToString();
    }

    protected void CancleButton_Click(object sender, EventArgs e)
    {

    }
    private void teacherList()
    {
        TeacherList.DataSource = bllTeacher.getTeacherList();
        TeacherList.DataBind();

    }
    protected void TeacherList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write(TeacherList.SelectedValue.ToString());
    }
}