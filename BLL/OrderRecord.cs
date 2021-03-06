﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace BLL
{
    public class OrderRecord : IBLL.IOrderRecord
    {
        private  IDAL.IOrderRecord dal = DALFactory.DataAccess.CreateOrderRecord();

        void IBLL.IOrderRecord.Add(OrderRecordInfo orderRecord)
        {
            if (orderRecord == null)
                throw new Exception();
            dal.Add(orderRecord);
        }

        void IBLL.IOrderRecord.Remove(OrderRecordInfo orderRecord)
        {
            if (orderRecord == null)
                throw new Exception();
            dal.Remove(orderRecord);
        }

        void IBLL.IOrderRecord.Modify(OrderRecordInfo orderRecord)
        {
            if (orderRecord == null)
                throw new Exception();
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

        IList<OrderRecordInfo> IBLL.IOrderRecord.GetOrdersByDate(DateTime dateTime)
        {
            return dal.GetOrdersByDate(dateTime);
        }


        DataSet IBLL.IOrderRecord.getOrderNumber()
        {
            return dal.getOrderNumber();
        }


        DataSet IBLL.IOrderRecord.getOrderPercent()
        {
            return dal.getOrderPercent();
        }
    }
}
