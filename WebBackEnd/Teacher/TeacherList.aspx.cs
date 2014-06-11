using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_TeacherList : System.Web.UI.Page
{
    private  IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();
        }
    }

    private void Bind()
    {

        TeacherList.DataSource = bllTeacher.getTeacherList();
        TeacherList.DataBind();
    }
    protected void Modify_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.TeacherList.Rows[gvr.RowIndex].FindControl("TeacherID");
        int id = Int32.Parse(lab.Text.ToString());
        Response.Redirect("~/Teacher/TeacherEdit.aspx?id="+id);

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        var button = sender as LinkButton;
        GridViewRow gvr = (GridViewRow)button.Parent.Parent;
        var lab = (Label)this.TeacherList.Rows[gvr.RowIndex].FindControl("TeacherID");
        int id = Int32.Parse(lab.Text.ToString());
        bllTeacher.Remove(bllTeacher.Get(id));
        Bind();
    }
    protected void Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Teacher/TeacherAdd.aspx");
    }
}