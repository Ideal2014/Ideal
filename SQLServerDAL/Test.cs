﻿
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
    public class Test : IDAL.ITest
    {
        private  string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        void IDAL.ITest.Add(TestInfo test)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable tests = ctx.GetTable<TestInfo>();
                tests.InsertOnSubmit(test);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.ITest.Remove(TestInfo test)
        {

            try
            {
                DataContext ctx = new DataContext(connection);

                ITable tests = ctx.GetTable<TestInfo>();
                tests.Attach(test);
                tests.DeleteOnSubmit(test);
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }

        void IDAL.ITest.Modify(TestInfo test)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TestInfo> tests = ctx.GetTable<TestInfo>();
                IQueryable<TestInfo> query = from o in tests
                                             where o.Tes_ID == test.Tes_ID
                                             select o;
                foreach (TestInfo o in query)
                {
                    o.Tes_A = test.Tes_A;
                    o.Tes_Answer = test.Tes_Answer;
                    o.Tes_B = test.Tes_B;
                    o.Tes_C = test.Tes_C;
                    o.Tes_D = test.Tes_D;
                    o.Tes_Detail = test.Tes_Detail;
                    o.Tes_Type = test.Tes_Type;
                }
                ctx.SubmitChanges();
            }
            finally
            {
            }
        }
        IList<TestInfo> IDAL.ITest.GetAll()
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TestInfo> tests = ctx.GetTable<TestInfo>();
                return tests.ToList<TestInfo>(); ;
            }
            finally
            {
            }
        }



        TestInfo IDAL.ITest.Get(int id)
        {
            try
            {
                DataContext ctx = new DataContext(connection);
                ITable<TestInfo> tests = ctx.GetTable<TestInfo>();
                IQueryable<TestInfo> query = from s in tests
                                             where s.Tes_ID == id
                                             select s;
                return query.FirstOrDefault<TestInfo>();
            }
            finally
            {
            }
        }
        DataSet IDAL.ITest.GetTestList()
        {
            SqlConnection sqlcon = null;
            try
            {
                sqlcon = new SqlConnection(connection);
                string sqlstr = "SELECT   Tes_ID, Tes_Type, Tes_Detail, Tes_A, Tes_C, Tes_B, Tes_D, Tes_Answer FROM  TestInfo";
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
    }

}
