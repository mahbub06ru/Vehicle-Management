<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewShedule.aspx.cs" Inherits="VehicleManagement.Page.ViewShedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
</head>
<body>
    <form id="form1" runat="server">

         <div class="container">           
                <ul class="nav nav-pills">
                <li><a href="VehicleEntry.aspx">Vehicle Entry</a></li>
                <li><a href="SheduleEntry.aspx">Shedule of Vehicle</a></li>                
                <li class="active"><a href="ViewShedule.aspx">View Result</a></li>
            </ul>               
        <br/><br/>

        <div>
            <h1>View Schedule of a vehicle</h1>
            <label>Select Vehicle</label>
            <asp:DropDownList ID="vehicleDrop" runat="server">
            </asp:DropDownList> <asp:Button ID="showButton" runat="server" Text="Show" OnClick="showButton_Click" /><br />
            <asp:GridView ID="gridView" runat="server"></asp:GridView>
        </div>
      </div>
    </form>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
