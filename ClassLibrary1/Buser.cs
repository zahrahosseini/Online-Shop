using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using user.DLL;
namespace user.BALL
{
    public class Buser
    {
      public string  username {get;set;}
         public string   password {get;set;}
         public string type { get; set; }
      public int check()
         {
           int c=(int) Duser.checkusername(username,password,type);
            return c;
         }
    }

}
