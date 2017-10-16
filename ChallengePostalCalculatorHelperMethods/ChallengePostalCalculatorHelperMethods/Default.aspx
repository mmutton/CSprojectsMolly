<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengePostalCalculatorHelperMethods.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1">Postal Calculator</span><br />
            <br />
            Width:&nbsp;&nbsp;
            <asp:TextBox ID="widthTextBox" runat="server" AutoPostBack="True" Height="22px" OnTextChanged="handleChange" Width="69px"></asp:TextBox>
            <br />
            <br />
            Height:&nbsp;&nbsp; <asp:TextBox ID="heightTextBox" runat="server" AutoPostBack="True" Height="22px" OnTextChanged="handleChange" Width="69px"></asp:TextBox>
            <br />
            <br />
            Length:&nbsp;
            <asp:TextBox ID="lengthTextBox" runat="server" AutoPostBack="True" Height="22px" OnTextChanged="handleChange" Width="69px"></asp:TextBox>
            <br />
        </div>
        <asp:RadioButton ID="groundRadioButton" runat="server" GroupName="ShippingGroup" Text="Ground" AutoPostBack="True" OnCheckedChanged="handleChange" />
        <br />
        <asp:RadioButton ID="airRadioButton" runat="server" GroupName="ShippingGroup" Text="Air" AutoPostBack="True" OnCheckedChanged="handleChange" />
        <br />
        <asp:RadioButton ID="nextDayRadioButton" runat="server" GroupName="ShippingGroup" Text="Next Day" AutoPostBack="True" OnCheckedChanged="handleChange" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
