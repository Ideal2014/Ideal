using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Feedback : IBLL.IFeedback
    {
        private static readonly IDAL.IFeedback dal = DALFactory.DataAccess.CreateFeedback();

        void IBLL.IFeedback.Add(FeedbackInfo student)
        {
            dal.Add(student);
        }

        void IBLL.IFeedback.Remove(FeedbackInfo student)
        {
            dal.Remove(student);
        }

        void IBLL.IFeedback.Modify(FeedbackInfo student)
        {
            dal.Modify(student);
        }

        IList<FeedbackInfo> IBLL.IFeedback.GetAll()
        {
            return dal.GetAll();
        }

        FeedbackInfo IBLL.IFeedback.Get(int id)
        {
            return dal.Get(id);
        }


        System.Data.DataSet IBLL.IFeedback.GetFeedbackList()
        {
            return dal.GetFeedbackList();
        }
    }
}
