using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Feedback : IBLL.IFeedback
    {
        private  IDAL.IFeedback dal = DALFactory.DataAccess.CreateFeedback();

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


        IList<FeedbackInfo> IBLL.IFeedback.GetFeedBackByDate(DateTime dateTime)
        {
            return dal.GetFeedBackByDate(dateTime);
        }


        IList<FeedbackInfo> IBLL.IFeedback.GetFeedBackByLevelTop6()
        {
            return dal.GetFeedBackByLevelTop6();
        }

        //得到为s状态的反馈表，即名人堂的信息
        System.Data.DataSet IBLL.IFeedback.GetSuperFeedbackList()
        {
            return dal.GetSuperFeedbackList();
        }
    }
}
