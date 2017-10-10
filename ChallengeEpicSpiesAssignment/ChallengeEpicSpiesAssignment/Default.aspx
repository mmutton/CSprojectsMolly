<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpiesAssignment.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .auto-style4 {
            width: 152px;
            height: 190px;
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <img alt="" class="auto-style4" src="epic-spies-logo.jpg" /></p>
        <h2 class="auto-style2">New Assignment for SPY Information:</h2>
        <p class="auto-style3">
            Spy Code Name:<asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style3">
            New Assignment Name:<asp:TextBox ID="newAssignmentTextBox" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style3">
            End Date of Previous Assignment:</p>
        <p class="auto-style3">
            <asp:Calendar ID="oldCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </p>
        <p class="auto-style3">
            Start Date of New Assignment:</p>
        <p class="auto-style3">
            <asp:Calendar ID="newCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </p>
        <p class="auto-style3">
            Projected End Date of New Assignment:</p>
        <p class="auto-style3">
            <asp:Calendar ID="futureCalendar" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
        </p>
        <p class="auto-style3">
            <asp:Button ID="AssignButton" runat="server" OnClick="AssignButton_Click" Text="Assign A Spy" />
        </p>
        <p class="auto-style3">
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </p>
        <p class="auto-style3">
            &nbsp;</p>
    </form>
    <p class="auto-style2">
        &nbsp;</p>
</body>
</html>
