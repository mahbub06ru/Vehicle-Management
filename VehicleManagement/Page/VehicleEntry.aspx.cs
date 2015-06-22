using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VehicleManagement.BLL;
using VehicleManagement.DAL;
using VehicleManagement.model;

namespace VehicleManagement.Page
{
    public partial class VehicleEntry : System.Web.UI.Page
    {
        EntryManager entryManager = new EntryManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string regNo = regNoTextBox.Text;
            string engineNo = engineNoTextBox.Text;
            if (String.IsNullOrEmpty(regNo))
            {
                errorMessage.InnerText = "Registration Number Cannot Be Empty";
            }
            else if (String.IsNullOrEmpty(engineNo))
            {
                errorMessage.InnerText = "Engine Number Cannot Be Empty";
            }
            else
            {
                Vehicle vehicle = new Vehicle();
                vehicle.EnginNo = engineNo;
                vehicle.RegNo = regNo;
                if (entryManager.Insert(vehicle))
                {
                    errorMessage.InnerText = "Successfully Inserted";
                }
                else
                {
                    errorMessage.InnerText = "Exist Data";
                }
            }

        }
    }
}