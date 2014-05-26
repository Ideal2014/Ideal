using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace IBLL
{
    public interface IFeedback
    {
        void Add(FeedbackInfo feedback);
        void Remove(FeedbackInfo feedback);
        void Modify(FeedbackInfo feedback);
        IList<FeedbackInfo> GetAll();
        FeedbackInfo Get(int id);

        DataSet GetFeedbackList();
    }
}
