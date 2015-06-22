using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VehicleManagement.BLL;
using VehicleManagement.model;

namespace VehicleManagement.Page
{
    public partial class SheduleEntry : System.Web.UI.Page
    {
        SheduleManager sheduleManager = new SheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            vehicleDrop.DataSource = sheduleManager.GetAllVehicles();
            vehicleDrop.DataTextField = "EnginNo";
            vehicleDrop.DataValueField = "Vid";
            vehicleDrop.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            int vid = Convert.ToInt32(vehicleDrop.SelectedValue);
            DateTime date = calender.SelectedDate;
            string shift = shiftDrop.SelectedValue;
            string bookedBy = bookedByTextBox.Text;
            string address = addressArea.InnerText;

            if (date.Year.ToString().Equals("1"))
            {
                errorMessage.InnerText = "Please Select A date";
            }
            else if (String.IsNullOrEmpty(bookedBy))
            {
                errorMessage.InnerText = "Give Your Name First";
            }
            else if (String.IsNullOrEmpty(address))
            {
                errorMessage.InnerText = "Give Your Address First";
            }
            else
            {
                Shedule shedule = new Shedule();
                shedule.Address = address;
                shedule.BookedBy = bookedBy;
                shedule.Date = date;
                shedule.Shift = shift;
                shedule.Vid = vid;
                if (sheduleManager.Insert(shedule))
                {
                    errorMessage.InnerText = "Successfully Shedule Add";
                }
                else
                {
                    errorMessage.InnerText = "Shedule already Exist";
                }
            }
        }
    }
}