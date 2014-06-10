using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Book : System.Web.UI.Page
{
    private static readonly IBLL.IBook bllBook = BLLFactory.DataAccess.CreateBook();

    protected void Page_Load(object sender, EventArgs e)
    {
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
        //System.Diagnostics.Process process = new System.Diagnostics.Process();
        //process.StartInfo.FileName = MapPath("../pdffile/111.pdf");
        //process.StartInfo.Verb = "open";
        //process.StartInfo.CreateNoWindow = true;
        //process.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Normal;
        //process.Start();

        string filename = MapPath("../pdffile/111.pdf");
        Response.Clear();
        Response.ContentType = "application/octet-stream ";
        Response.AppendHeader("Content-Disposition ", "attachment;   Filename   =   " + System.Convert.ToChar(34) + filename + System.Convert.ToChar(34));
        Response.Charset = " ";
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        Response.Flush();
        Response.WriteFile("../pdffile/111.pdf"); 
    }
    protected void DownloadAll_Command(object sender, CommandEventArgs e)
    {

    }
}