using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VehicleManagement.model;

namespace VehicleManagement.DAL
{
    public class SheduleGatway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;

        public List<Vehicle> GetAllVehicles()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "select * from vehicle";
            SqlCommand command = new SqlCommand(query, connection);
            List<Vehicle> vehicles = new List<Vehicle>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                Vehicle vehicle = new Vehicle();
                vehicle.Vid = Convert.ToInt32(reader["vid"].ToString());
                vehicle.RegNo = reader["reg"].ToString();
                vehicle.EnginNo = reader["engin"].ToString();
                vehicles.Add(vehicle);
            }
            connection.Close();
            return vehicles;
        }

        public int Insert(Shedule shedule)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "insert into shedule (date,shift,bookedBy,address,vid) values (@date,@shift,@bookedBy,@address,@vid)";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.Add("@date", shedule.Date);
            command.Parameters.Add("@shift", shedule.Shift);
            command.Parameters.Add("@bookedBy", shedule.BookedBy);
            command.Parameters.Add("@address", shedule.Address);
            command.Parameters.Add("@vid", shedule.Vid);

            connection.Open();
            int rowAffected = command.ExecuteNonQuery();
            connection.Close();
            return rowAffected;
        }

        public List<View> GetAllShedules(int vid)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "select date,shift from shedule where vid ="+vid;
            SqlCommand command = new SqlCommand(query, connection);
            List<View> views = new List<View>();
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                View view = new View();
                view.Date = (DateTime) reader["date"];
                view.Shift = reader["shift"].ToString();
                views.Add(view);
            }
            connection.Close();
            return views;
        }
        public bool CheckShedule(Shedule shedule)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "select * from shedule where date='" + shedule.Date + "' and shift= '" + shedule.Shift + "' ";
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