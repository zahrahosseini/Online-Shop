using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

using System.ComponentModel;


namespace user.DLL
{
    public class Duser
    {
        public static string ConnectionString="Data Source=ZH-PC;Initial Catalog=db_shop;Integrated Security=True";
        
        
        public static int checkusername(string _username,string _pass,string _type)
        {
            SqlConnection con = new SqlConnection(Duser.ConnectionString);
           

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("checkusernamepass", con);
                cmd.CommandType = CommandType.StoredProcedure;

                // add parameter for return value
                SqlParameter rv = new SqlParameter("@returnvalue", SqlDbType.Int);
                rv.Direction = ParameterDirection.ReturnValue;

                cmd.Parameters.Add(rv);

                // add input parameter
                cmd.Parameters.AddWithValue("@username", _username);
                cmd.Parameters.AddWithValue("@password",_pass);
                cmd.Parameters.AddWithValue("@type",_type);

                cmd.ExecuteNonQuery();

                // return value is in the parameter @returnvalue
                object find = cmd.Parameters["@returnvalue"].Value;

                // If return value is not null then use value
                if (0 != (int)find)
                    return 1;
                else
                    return 0;
            }
            catch (Exception ex)
            {
               
            }
            finally
            {
                con.Close();
            }
            return -1;
        }
    }
}
