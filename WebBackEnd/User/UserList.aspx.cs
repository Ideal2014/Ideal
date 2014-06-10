using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserList : System.Web.UI.Page
{
    private static readonly IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {

        StudentList.DataSource = bllStudent.getStudentList();
        StudentList.DataBind();
    }
    protected void Modify_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.StudentList.Rows[gvr.RowIndex].FindControl("StudentID");
        int id = Int32.Parse(lab.Text.ToString());
        Response.Redirect("~/User/StudentEdit.aspx?id=" + id);

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.StudentList.Rows[gvr.RowIndex].FindControl("StudentID");
        int id = Int32.Parse(lab.Text.ToString());
        bllStudent.Remove(bllStudent.Get(id));
        Bind();
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/StudentAdd.aspx");
    }
}