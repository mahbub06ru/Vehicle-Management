<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VehicleEntry.aspx.cs" Inherits="VehicleManagement.Page.VehicleEntry" %>

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
                <li class="active"><a href="VehicleEntry.aspx">Vehicle Entry</a></li>
                <li><a href="SheduleEntry.aspx">Shedule of Vehicle</a></li>                
                <li><a href="ViewShedule.aspx">View Result</a></li>
            </ul>   
          <br/><br/>

        <div>
            <h1>Vehicle Information Details</h1>
            <label id="errorMessage" runat="server"></label><br/>
            <label> Reg No</label>
            <asp:TextBox ID="regNoTextBox" runat="server"></asp:TextBox><br/>
            <label> Engine No</label>
            <asp:TextBox ID="engineNoTextBox" runat="server"></asp:TextBox><br/>
            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
        </div>
       </div>
    </form>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
