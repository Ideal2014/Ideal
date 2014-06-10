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
            Bind();
        }
    }

    private void Bind()
    {
        IList<StudentInfo> studentList = bllStudent.GetAll();
        StudentNum.Text = studentList.Count.ToString();

        IList<StudentInfo> newStudentList = bllStudent.GetStudentsByDate(DateTime.Now);
        NewStudentNum.Text = newStudentList.Count.ToString();

        IList<OrderRecordInfo> orderList = bllOrderRecord.GetAll();
        OrderNum.Text = orderList.Count.ToString();

        IList<OrderRecordInfo> newOrderList = bllOrderRecord.GetOrdersByDate(DateTime.Now);
        NewOrderNum.Text = newOrderList.Count.ToString();

        IList<ClassRecordInfo> classList = bllClassRecord.GetAll();
        ClassNum.Text = classList.Count.ToString();

        IList<ClassRecordInfo> newClassList = bllClassRecord.GetClasssByDate(DateTime.Now);
        NewClassNum.Text = newClassList.Count.ToString();

        IList<FeedbackInfo> feedbackList = bllFeedback.GetAll();
        FeeNum.Text = feedbackList.Count.ToString();

        IList<FeedbackInfo> newFeedbackList = bllFeedback.GetFeedBackByDate(DateTime.Now);
        NewFeeNum.Text = newFeedbackList.Count.ToString();

        DataSet dsClassPercent = bllClassRecord.getClassPercent();
        HiddenClassPercent.Value = dsToJson(dsClassPercent);

        IList<OrderRecordInfo> orders = bllOrderRecord.GetAll();
        HiddenOrderNumber.Value = getOrderNumberJson(orders);
    }

    private string getOrderNumberJson(IList<OrderRecordInfo> orders)
    {
        string json = "";
        int[,] result = new int[10, 2];
        for (int i = 0; i < 10; i++)
        {
            result.SetValue(i + 1, i, 0);
            result.SetValue(0, i, 1);

        }
        for (int i = 0; i < orders.Count; i++)
        {
            OrderRecordInfo o = orders[i];
            int off = DateTime.Now.Day.CompareTo(o.Ord_Time.Value.Day);
            if (off >= 10 | off == 0)
                continue;
            //DateTime.
            result.SetValue(result.GetValue(i, off - 1), off - 1, 1);
        }
        System.Text.StringBuilder str = new System.Text.StringBuilder("[");
        for (int i = 0; i < 10; i++)
        {

            str.Append("[");
            for (int j = 0; j < 2; j++)
            {
                str.Append(result.GetValue(i, j) + ",");
            }
            str.Remove(str.Length - 1, 1);
            str.Append("],");
        }
        str.Remove(str.Length - 1, 1);
        str.Append("]");
        json = str.ToString();
        return json;
    }
    private string dsToJson(DataSet ds)
    {
        System.Text.StringBuilder str = new System.Text.StringBuilder("[");
        for (int o = 0; o < ds.Tables.Count; o++)
        {
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