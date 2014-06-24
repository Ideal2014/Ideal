using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
/*
 * author:summer
 */ 

namespace BLLSupport
{
    public class Md5Support
    {
        //将一个字符串进行MD5加密
        public static String GetMd5String(String input)
        {
            MD5 md5Hasher = MD5.Create();
            byte[] data = md5Hasher.ComputeHash(Encoding.GetEncoding("UTF-8").GetBytes(input));
            return BitConverter.ToString(data);
        }

    }
}
