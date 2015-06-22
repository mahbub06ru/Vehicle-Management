using VehicleManagement.model;

namespace VehicleManagement.BLL
{
    public class EntryManager
    {
        EntryGatway entryGatway = new EntryGatway();
        public bool Insert(Vehicle vehicle)
        {
            if (entryGatway.CheckVehicle(vehicle))
            {
                return false;
            }
            return entryGatway.Insert(vehicle) > 0;
        }
    }
}