using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace customer.DLL
{
   public class Dcustomer
    {
         public static string ConnectionString="Data Source=ZH-PC;Initial Catalog=db_shop;Integrated Security=True";

         public static DataTable Retrieve(string name)
        {
            SqlConnection con =  new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            try
            {
               
                con.ConnectionString = Dcustomer.ConnectionString;
                if (con.State != ConnectionState.Open) con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = @"searchProductname";
                //cmd.Parameters.Clear();
                
                cmd.Parameters.Add("@name", SqlDbType.NVarChar ,50);
                
                cmd.Parameters["@name"].Value = name;
              
                DataTable dt = new DataTable();

                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);

               
                return dt;
            }
            finally
            {
                if (con.State != ConnectionState.Closed) con.Close();
            }
        }

         public static DataTable Retrieve2(string name,Int64 cost)
         {
             SqlConnection con = new SqlConnection();
             SqlCommand cmd = new SqlCommand();
             cmd.Connection = con;
             try
             {

                 con.ConnectionString = Dcustomer.ConnectionString;
                 if (con.State != ConnectionState.Open) con.Open();
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.CommandText = @"searchProductnamecost";
                 //cmd.Parameters.Clear();

                 cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50);
                 cmd.Parameters.Add("@cost", SqlDbType.BigInt);

                 cmd.Parameters["@name"].Value = name;
                 cmd.Parameters["@cost"].Value = cost;

                 DataTable dt = new DataTable();

                 SqlDataReader dr = cmd.ExecuteReader();
                 dt.Load(dr);


                 return dt;
             }
             finally
             {
                 if (con.State != ConnectionState.Closed) con.Close();
             }
         }

         public static DataTable Retrieve3(string name, string supplier)
         {
             SqlConnection con = new SqlConnection();
             SqlCommand cmd = new SqlCommand();
             cmd.Connection = con;
             try
             {

                 con.ConnectionString = Dcustomer.ConnectionString;
                 if (con.State != ConnectionState.Open) con.Open();
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.CommandText = @"searchProductnamesupplier";
                 //cmd.Parameters.Clear();

                 cmd.Parameters.Add("@name", SqlDbType.NVarChar, 50);
                 cmd.Parameters.Add("@supplier", SqlDbType.NVarChar, 50);

                 cmd.Parameters["@name"].Value = name;
                 cmd.Parameters["@supplier"].Value = supplier;

                 DataTable dt = new DataTable();

                 SqlDataReader dr = cmd.ExecuteReader();
                 dt.Load(dr);


                 return dt;
             }
             finally
             {
                 if (con.State != ConnectionState.Closed) con.Close();
             }
         }
    }
    
}
