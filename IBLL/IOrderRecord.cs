﻿using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace IBLL
{
    public interface IOrderRecord
    {
        void Add(OrderRecordInfo orderRecord);
        void Remove(OrderRecordInfo orderRecord);
        void Modify(OrderRecordInfo orderRecord);
        IList<OrderRecordInfo> GetAll();
        OrderRecordInfo Get(int id);
        DataSet GetAllOrder(int id);

        DataSet GetOrderList();
        IList<OrderRecordInfo> GetOrdersByDate(DateTime dateTime);

        DataSet getOrderNumber();

        DataSet getOrderPercent();
    }
}
