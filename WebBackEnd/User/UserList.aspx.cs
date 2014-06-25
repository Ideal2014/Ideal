using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserList : System.Web.UI.Page
{
    private IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    private IBLL.IAdmin bllAdmin = BLLFactory.DataAccess.CreateAdmin();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {

        StudentList.DataSource = bllStudent.GetAll();
        StudentList.DataBind();

        if (CheckAdmin())
        {
            AdminList.DataSource = bllAdmin.GetNotAdmin();
            AdminList.DataBind();
        }
        else
            AdminPanel.Visible = false;
    }
    private bool CheckAdmin()
    {
        string name = Request.Cookies["admin"]["name"];
        AdminInfo admin = bllAdmin.FindByName(name);
        if ("admin".Equals(admin.Adm_Role))
            return true;
        return false;
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
        var button = sender as Button;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.StudentList.Rows[gvr.RowIndex].FindControl("AdminID");
        int id = Int32.Parse(lab.Text.ToString());
        bllStudent.Remove(bllStudent.Get(id));
        Bind();
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/StudentAdd.aspx");
    }

    protected void StudentModify_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.StudentList.Rows[gvr.RowIndex].FindControl("StudentID");
        int id = Int32.Parse(lab.Text.ToString());
        Response.Redirect("~/User/StudentEdit.aspx?id=" + id);
    }
    protected void StudentDelete_Click(object sender, EventArgs e)
    {
        var button = sender as Button;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.StudentList.Rows[gvr.RowIndex].FindControl("StudentID");
        int id = Int32.Parse(lab.Text.ToString());
        bllStudent.Remove(bllStudent.Get(id));
        Bind();
    }
    protected void AdminModify_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.AdminList.Rows[gvr.RowIndex].FindControl("AdminID");
        int id = Int32.Parse(lab.Text.ToString());
        Response.Redirect("~/User/AdminView.aspx?id=" + id);
    }
    protected void AdminDelete_Click(object sender, EventArgs e)
    {
        var button = sender as Button;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.AdminList.Rows[gvr.RowIndex].FindControl("AdminID");
        int id = Int32.Parse(lab.Text.ToString());
        bllAdmin.Remove(bllAdmin.Get(id));
        Bind();
    }
}