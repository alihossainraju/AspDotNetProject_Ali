using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace AspDotNetProject_Ali.DAL
{
    public class ReuRegistration
    {
        public bool RegisterData(string FullName, string EmailAddress, string Gender, string DOB, string RoundNo, string PhoneNo, string Message)
        {
            conString.con.Open();
            try
            {
                string query = "Insert Into ReunionRegistration Values('" + FullName + "','" + EmailAddress + "','" + Gender + "','" + DOB + "','" + RoundNo + "','" + PhoneNo + "','" + Message + "')";

                SqlCommand cmd = new SqlCommand(query, conString.con);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                conString.con.Close();
            }

        }

       
    }
}