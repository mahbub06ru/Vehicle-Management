using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VehicleManagement.BLL;

namespace VehicleManagement.Page
{
    public partial class ViewShedule : System.Web.UI.Page
    {
        SheduleManager sheduleManager = new SheduleManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                vehicleDrop.DataSource = sheduleManager.GetAllVehicles();
                vehicleDrop.DataTextField = "EnginNo";
                vehicleDrop.DataValueField = "Vid";
                vehicleDrop.DataBind();
            }
            
        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            int vid = Convert.ToInt32(vehicleDrop.SelectedValue);
            gridView.DataSource = sheduleManager.GetAllShedules(vid);
            gridView.DataBind();
        }
    }
}