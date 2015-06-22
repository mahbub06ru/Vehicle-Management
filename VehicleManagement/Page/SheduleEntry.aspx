<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SheduleEntry.aspx.cs" Inherits="VehicleManagement.Page.SheduleEntry" %>

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
                <li class="active"><a href="SheduleEntry.aspx">Shedule of Vehicle</a></li>                
                <li><a href="ViewShedule.aspx">View Result</a></li>
            </ul>               
        <br/><br/>


        <div>
            <h1>Shedule Vehicle</h1>
            <label runat="server" id="errorMessage"></label><br/>
            <label>Select Vehicle</label>
            <asp:DropDownList ID="vehicleDrop" runat="server">
            </asp:DropDownList><br />
            <label>Select Date</label>
            <asp:Calendar ID="calender" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="109px" Width="208px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br />
            <label>Select Shift</label>
            <asp:DropDownList ID="shiftDrop" runat="server">
                <asp:ListItem Text="Morning" Value="Morning"></asp:ListItem>
                <asp:ListItem Text="Evening" Value="Evening"></asp:ListItem>
            </asp:DropDownList><br />
            <label>Booked By</label>
            <asp:TextBox ID="bookedByTextBox" runat="server"></asp:TextBox><br />
            <label>Address</label>
            <textarea id="addressArea" runat="server" cols="20" rows="2"></textarea><br/>
            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />

        </div>
      </div>
    </form>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
