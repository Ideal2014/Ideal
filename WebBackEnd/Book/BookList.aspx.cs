using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_BookList : System.Web.UI.Page
{
    private  IBLL.IBook bllBook = BLLFactory.DataAccess.CreateBook();
    private  IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["admin"] != null)
            {
                string id = Request.Cookies["admin"]["id"];
                Bind();
            }
            else
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        BookInfo book = new BookInfo();
        
        bllBook.Remove(book);
    }
    private void Bind()
    {
        BookGrid.DataSource = bllBook.GetBookList();
        BookGrid.DataBind();
    }

}

