using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Base_Count : System.Web.UI.Page
{
    private static readonly IBLL.IStudent bllStudent = BLLFactory.DataAccess.CreateStudent();
    private static readonly IBLL.IOrderRecord bllOrderRecord = BLLFactory.DataAccess.CreateOrderRecord();
    private static readonly IBLL.IClassRecord bllClassRecord = BLLFactory.DataAccess.CreateClassRecord();
    private static readonly IBLL.IFeedback bllFeedback = BLLFactory.DataAccess.CreateFeedback();
    private static readonly IBLL.ITeacher bllTeacher = BLLFactory.DataAccess.CreateTeacher();

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

    private void Bind()
    {
        IList<StudentInfo> studentList = bllStudent.GetAll();
        StudentNum.Text = studentList.Count.ToString();
        NewStudentNum.Text = studentList.Count.ToString();

        IList<OrderRecordInfo> orderList = bllOrderRecord.GetAll();
        OrderNum.Text = orderList.Count.ToString();
        NewOrderNum.Text = orderList.Count.ToString();

        IList<ClassRecordInfo> classList = bllClassRecord.GetAll();
        ClassNum.Text = classList.Count.ToString();
        NewClassNum.Text = classList.Count.ToString();

        IList<FeedbackInfo> feedbackList = bllFeedback.GetAll();
        FeeNum.Text = feedbackList.Count.ToString();
        NewFeeNum.Text = feedbackList.Count.ToString();

        DataSet ds = bllClassRecord.getClassPercent();
        HiddenClassPercent.Value = dsToJson(ds);
    }

    private string dsToJson(DataSet ds)
    {
        System.Text.StringBuilder str = new System.Text.StringBuilder("[");
        for (int o = 0; o < ds.Tables.Count; o++)
        {
           // str.Append("{");
            //str.Append(string.Format("\"{0}\":[", ds.Tables[o].TableName));

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                str.Append("{");
                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    str.Append(string.Format("\"{0}\":\"{1}\",", ds.Tables[0].Columns[j].ColumnName, ds.Tables[0].Rows[i][j].ToString()));
                }
                str.Remove(str.Length - 1, 1);
                str.Append("},");
            }
            str.Remove(str.Length - 1, 1);
            str.Append("],");
        }
        str.Remove(str.Length - 1, 1);
        return str.ToString();
    }
}