using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VehicleManagement.model;

namespace VehicleManagement.BLL
{
    public class EntryGatway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public int Insert(Vehicle vehicle)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "insert into vehicle (reg,engin) values (@reg,@engin)";
            SqlCommand command = new SqlCommand(query,connection);
            command.Parameters.Add("@reg", vehicle.RegNo);
            command.Parameters.Add("@engin", vehicle.EnginNo);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }
        public bool CheckVehicle(Vehicle vehicle)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "select * from vehicle where reg='"+vehicle.RegNo+"' or engin= '"+vehicle.EnginNo+"' ";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                connection.Close();
                return true;
            }
            connection.Close();
            return false;
        }
    }
    
}