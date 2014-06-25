using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace BLL
{
    public class Balance : IBLL.IBalance
    {
        private  IDAL.IBalance dal = DALFactory.DataAccess.CreateBalance();

        void IBLL.IBalance.Add(BalanceInfo balance)
        {
            if(balance == null)
                throw new Exception();
            dal.Add(balance);
        }

        void IBLL.IBalance.Remove(BalanceInfo balance)
        {
            if(balance == null)
                throw new Exception();
            dal.Remove(balance);
        }

        void IBLL.IBalance.Modify(BalanceInfo balance)
        {
            if(balance == null)
                throw new Exception();
            dal.Modify(balance);
        }

        IList<BalanceInfo> IBLL.IBalance.GetAll()
        {
            return dal.GetAll();
        }

        BalanceInfo IBLL.IBalance.Get(int id)
        {
            return dal.Get(id);
        }

        BalanceInfo IBLL.IBalance.GetbyTidSid(int tid, int sid)
        {
            return dal.GetbyTidSid(tid, sid);
        }

        DataSet IBLL.IBalance.GetBalanceWithTea(int id)
        {
            return dal.GetBalanceWithTea(id);
        }
    }
}
