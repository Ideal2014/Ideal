using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Text;

namespace BLLFactory
{
    public sealed class DataAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["BLL"];

        public static IBLL.IStudent CreateStudent()
        {
            string className = path + ".Student";
            return (IBLL.IStudent)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IAdmin CreateAdmin()
        {
            string className = path + ".Admin";
            return (IBLL.IAdmin)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IBalance CreateBalance()
        {
            string className = path + ".Balance";
            return (IBLL.IBalance)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IBook CreateBook()
        {
            string className = path + ".Book";
            return (IBLL.IBook)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IClassRecord CreateClassRecord()
        {
            string className = path + ".ClassRecord";
            return (IBLL.IClassRecord)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IFeedback CreateFeedback()
        {
            string className = path + ".Feedback";
            return (IBLL.IFeedback)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IOrderRecord CreateOrderRecord()
        {
            string className = path + ".OrderRecord";
            return (IBLL.IOrderRecord)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.ITeacher CreateTeacher()
        {
            string className = path + ".Teacher";
            return (IBLL.ITeacher)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.ITest CreateTest()
        {
            string className = path + ".Test";
            return (IBLL.ITest)Assembly.Load(path).CreateInstance(className);
        }
    }
}
