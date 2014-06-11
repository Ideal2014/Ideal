using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Text;

namespace DALFactory
{
    public sealed class DataAccess
    {
        private static  string path = ConfigurationManager.AppSettings["DAL"];

        public static IDAL.IStudent CreateStudent()
        {
            string className = path + ".Student";
            return (IDAL.IStudent)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IAdmin CreateAdmin()
        {
            string className = path + ".Admin";
            return (IDAL.IAdmin)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IBalance CreateBalance()
        {
            string className = path + ".Balance";
            return (IDAL.IBalance)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IBook CreateBook()
        {
            string className = path + ".Book";
            return (IDAL.IBook)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IClassRecord CreateClassRecord()
        {
            string className = path + ".ClassRecord";
            return (IDAL.IClassRecord)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IFeedback CreateFeedback()
        {
            string className = path + ".Feedback";
            return (IDAL.IFeedback)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IOrderRecord CreateOrderRecord()
        {
            string className = path + ".OrderRecord";
            return (IDAL.IOrderRecord)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.ITeacher CreateTeacher()
        {
            string className = path + ".Teacher";
            return (IDAL.ITeacher)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.ITest CreateTest()
        {
            string className = path + ".Test";
            return (IDAL.ITest)Assembly.Load(path).CreateInstance(className);
        }
    }
}
