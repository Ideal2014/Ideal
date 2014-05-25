
using Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Text;

namespace SQLServerDAL
{
    public class Feedback : IDAL.IFeedback
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.IFeedback.Add(FeedbackInfo feedback)
        {
            DataContext ctx = new DataContext(connection);
            ITable feedbacks = ctx.GetTable<FeedbackInfo>();
            feedbacks.InsertOnSubmit(feedback);
            ctx.SubmitChanges();
        }

        void IDAL.IFeedback.Remove(FeedbackInfo feedback)
        {

            DataContext ctx = new DataContext(connection);
            
            ITable feedbacks = ctx.GetTable<FeedbackInfo>();
            feedbacks.Attach(feedback);
            feedbacks.DeleteOnSubmit(feedback);
            ctx.SubmitChanges();
        }

        void IDAL.IFeedback.Modify(FeedbackInfo feedback)
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

        IList<FeedbackInfo> IDAL.IFeedback.GetAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<FeedbackInfo> feedbacks = ctx.GetTable<FeedbackInfo>();
            return feedbacks.ToList<FeedbackInfo>(); ;
        }



        FeedbackInfo IDAL.IFeedback.Get(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<FeedbackInfo> feedbacks = ctx.GetTable<FeedbackInfo>();
            IQueryable<FeedbackInfo> query = from o in feedbacks
                                            where o.Fee_ID == id
                                            select o;
            return query.FirstOrDefault<FeedbackInfo>();
        }
    }
}
