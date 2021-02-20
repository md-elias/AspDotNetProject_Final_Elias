using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AspDotNetProject_Final_Elias.DAL
{
    public class TraineeRegistration
    {
        public bool RegisterData(string TraineeName, string Gender, string Email, string DOB, string MobileNo, string Address, string Password)
        {
            ConString.con.Open();
            try
            {
                string query = "Insert Into TraineeRegistrations Values('" + TraineeName + "','" + Gender + "','" + Email + "','" + DOB + "','" + MobileNo + "','" + Address + "','" + Password + "')";

                System.Data.SqlClient.SqlCommand cmd = new SqlCommand(query, ConString.con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                ConString.con.Close();
            }

        }

    }
}