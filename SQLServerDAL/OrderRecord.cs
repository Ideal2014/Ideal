
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class OrderRecord : IDAL.IOrderRecord
    {
        private string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IOrderRecord.Add(OrderRecordInfo orderRecord)
        {
            DataContext ctx = new DataContext(connection);
            ITable orderRecords = ctx.GetTable<OrderRecordInfo>();
            orderRecords.InsertOnSubmit(orderRecord);
            ctx.SubmitChanges();
        }

        void IDAL.IOrderRecord.Remove(OrderRecordInfo orderRecord)
        {

            DataContext ctx = new DataContext(connection);

            ITable orderRecords = ctx.GetTable<OrderRecordInfo>();
            orderRecords.Attach(orderRecord);
            orderRecords.DeleteOnSubmit(orderRecord);
            ctx.SubmitChanges();
        }

        void IDAL.IOrderRecord.Modify(OrderRecordInfo orderRecord)
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            IQueryable<OrderRecordInfo> query = from o in orderRecords
                                                where o.Ord_ID == orderRecord.Ord_ID
                                                select o;
            foreach (OrderRecordInfo o in query)
            {
                o.Ord_Plan = orderRecord.Ord_Plan;
                o.Ord_Time = orderRecord.Ord_Time;
                o.Stu_ID = orderRecord.Stu_ID;
                o.Tea_ID = orderRecord.Tea_ID;
            }
            ctx.SubmitChanges();
        }

        IList<OrderRecordInfo> IDAL.IOrderRecord.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            return orderRecords.ToList<OrderRecordInfo>(); ;
        }



        OrderRecordInfo IDAL.IOrderRecord.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            IQueryable<OrderRecordInfo> query = from o in orderRecords
                                                where o.Ord_ID == id
                                                select o;
            return query.FirstOrDefault<OrderRecordInfo>();
        }


        DataSet IDAL.IOrderRecord.GetOrderList()
        {
            SqlConnection sqlcon = new SqlConnection(connection);
            string sqlstr = "SELECT OrderRecordInfo.Ord_ID,OrderRecordInfo.Ord_Num, OrderRecordInfo.Ord_Time, StudentInfo.Stu_UserName, OrderRecordInfo.Ord_Plan FROM OrderRecordInfo INNER JOIN StudentInfo ON OrderRecordInfo.Stu_ID = StudentInfo.Stu_ID";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds);
            sqlcon.Close();
            sqlcon.Close();
            return myds;

        }


        IList<OrderRecordInfo> IDAL.IOrderRecord.GetOrdersByDate(DateTime dateTime)
        {
            DataContext ctx = new DataContext(connection);
            ITable<OrderRecordInfo> orderRecords = ctx.GetTable<OrderRecordInfo>();
            IQueryable<OrderRecordInfo> query = from o in orderRecords
                                                where o.Ord_Time.Date == dateTime.Date
                                                select o;
            return query.ToList<OrderRecordInfo>();
        }


        DataSet IDAL.IOrderRecord.getOrderNumber()
        {
            SqlConnection sqlcon = new SqlConnection(connection);
            string sqlstr = "SELECT OrderRecordInfo.Ord_ID, OrderRecordInfo.Ord_Time, StudentInfo.Stu_UserName, OrderRecordInfo.Ord_Plan FROM OrderRecordInfo INNER JOIN StudentInfo ON OrderRecordInfo.Stu_ID = StudentInfo.Stu_ID";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds);
            sqlcon.Close();
            sqlcon.Close();
            return myds;
        }


        DataSet IDAL.IOrderRecord.getOrderPercent()
        {
            SqlConnection sqlcon = new SqlConnection(connection);
            string sqlstr = "SELECT 	TeacherInfo.Tea_Name AS label,	COUNT (OrderRecordInfo.Tea_ID) AS data FROM	OrderRecordInfo INNER JOIN TeacherInfo ON OrderRecordInfo.Tea_ID = TeacherInfo.Tea_ID GROUP BY 	TeacherInfo.Tea_Name";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds);
            sqlcon.Close();
            return myds;
        }
        DataSet IDAL.IOrderRecord.GetAllOrder(int id)
        {
            SqlConnection sqlcon = new SqlConnection(connection);
            String sqlstr = String.Format("Select * from OrderRecordInfo where Stu_ID = {0}", id);
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
            DataSet myds = new DataSet();
            sqlcon.Open();
            myda.Fill(myds);
            sqlcon.Close();
            return myds;
        }

    }
}
