using System.Collections.Generic;
using VehicleManagement.DAL;
using VehicleManagement.model;

namespace VehicleManagement.BLL
{
    public class SheduleManager
    {
        SheduleGatway sheduleGatway = new SheduleGatway();
        public List<Vehicle> GetAllVehicles()
        {
            return sheduleGatway.GetAllVehicles();
        }

        public bool Insert(Shedule shedule)
        {
            if (sheduleGatway.CheckShedule(shedule))
            {
                return false;
            }
            return sheduleGatway.Insert(shedule) > 0;
        }

        public List<View> GetAllShedules(int vid)
        {
            return sheduleGatway.GetAllShedules(vid);
        }
    }
}