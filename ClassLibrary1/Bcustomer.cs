using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using customer.DLL;
using System.Data;
namespace customer.BALL
{
   public class Bcustomer
    {
        public string name;
        public DataTable GetEntries(string name)
        {
           return DLL.Dcustomer.Retrieve(name);
        }
        public DataTable GetEntries2(string name,Int64 cost)
        {
            return DLL.Dcustomer.Retrieve2(name,cost);
        }
        public DataTable GetEntries3(string name, string supplier)
        {
            return DLL.Dcustomer.Retrieve3(name, supplier);
        }
    }
}
