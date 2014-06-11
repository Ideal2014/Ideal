using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace BLL
{
    public class OrderRecord : IBLL.IOrderRecord
    {
        private static readonly IDAL.IOrderRecord dal = DALFactory.DataAccess.CreateOrderRecord();

        void IBLL.IOrderRecord.Add(OrderRecordInfo orderRecord)
        {
            dal.Add(orderRecord);
        }

        void IBLL.IOrderRecord.Remove(OrderRecordInfo orderRecord)
        {
            dal.Remove(orderRecord);
        }

        void IBLL.IOrderRecord.Modify(OrderRecordInfo orderRecord)
        {
            dal.Modify(orderRecord);
        }

        IList<OrderRecordInfo> IBLL.IOrderRecord.GetAll()
        {
            return dal.GetAll();
        }

        OrderRecordInfo IBLL.IOrderRecord.Get(int id)
        {
            return dal.Get(id);
        }


        DataSet IBLL.IOrderRecord.GetOrderList()
        {
            return dal.GetOrderList();
        }

        DataSet IBLL.IOrderRecord.GetAllOrder(int id)
        {
            return dal.GetAllOrder(id);
        }
    }
}
