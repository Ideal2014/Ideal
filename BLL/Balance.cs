using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;

namespace BLL
{
    public class Balance : IBLL.IBalance
    {
        private  IDAL.IBalance dal = DALFactory.DataAccess.CreateBalance();

        void IBLL.IBalance.Add(BalanceInfo balance)
        {
            dal.Add(balance);
        }

        void IBLL.IBalance.Remove(BalanceInfo balance)
        {
            dal.Remove(balance);
        }

        void IBLL.IBalance.Modify(BalanceInfo balance)
        {
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
    }
}
