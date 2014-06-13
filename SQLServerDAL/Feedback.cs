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
    public class Feedback : IDAL.IFeedback
    {
        private  string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IFeedback.Add(FeedbackInfo feedback)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable feedbacks = ctx.GetTable<FeedbackInfo>();
                feedbacks.InsertOnSubmit(feedback);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IFeedback.Remove(FeedbackInfo feedback)
        {
            try
            {
                DataContext ctx = new DataContext(connection);

                ITable feedbacks = ctx.GetTable<FeedbackInfo>();
                feedbacks.Attach(feedback);
                feedbacks.DeleteOnSubmit(feedback);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.IFeedback.Modify(FeedbackInfo feedback)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<FeedbackInfo> feedbacks = ctx.GetTable<FeedbackInfo>();
                IQueryable<FeedbackInfo> query = from o in feedbacks
                                                 where o.Fee_ID == feedback.Fee_ID
                                                 select o;
                foreach (FeedbackInfo o in query)
                {
                    o.Fee_Detail = feedback.Fee_Detail;
                    o.Fee_Level = feedback.Fee_Level;
                    o.Fee_Time = feedback.Fee_Time;
                    o.Fee_Topic = feedback.Fee_Topic;
                    o.Stu_ID = feedback.Stu_ID;
                }
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        IList<FeedbackInfo> IDAL.IFeedback.GetAll()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<FeedbackInfo> feedbacks = ctx.GetTable<FeedbackInfo>();
                return feedbacks.ToList<FeedbackInfo>();
            }
            finally
            {
            }
        }



        FeedbackInfo IDAL.IFeedback.Get(int id)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<FeedbackInfo> feedbacks = ctx.GetTable<FeedbackInfo>();
                IQueryable<FeedbackInfo> query = from o in feedbacks
                                                 where o.Fee_ID == id
                                                 select o;
                return query.FirstOrDefault<FeedbackInfo>();
            }
            finally
            {
            }
        }


        DataSet IDAL.IFeedback.GetFeedbackList()
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr = "SELECT FeedbackInfo.Fee_ID, FeedbackInfo.Fee_Topic, FeedbackInfo.Fee_Detail, FeedbackInfo.Fee_Time, FeedbackInfo.Fee_Level,StudentInfo.Stu_UserName FROM FeedbackInfo INNER JOIN StudentInfo ON FeedbackInfo.Stu_ID = StudentInfo.Stu_ID";
                SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlcon);
                DataSet myds = new DataSet();
                sqlcon.Open();
                myda.Fill(myds);
                return myds;
            }
            finally
            {
                if (sqlcon != null)
                    sqlcon.Close();
            }

        }


        IList<FeedbackInfo> IDAL.IFeedback.GetFeedBackByDate(DateTime dateTime)
        {
            DataContext ctx = new DataContext(connection);
            ITable<FeedbackInfo> feedbacks = ctx.GetTable<FeedbackInfo>();
            IQueryable<FeedbackInfo> query = from o in feedbacks
                                             where o.Fee_Time.Date==dateTime.Date
                                             select o;
            return query.ToList<FeedbackInfo>();
        }
    }
}
