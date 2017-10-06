<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeSimpleCalculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        .auto-style2 {
            background-color: #66CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Simple Calculator</h2>
            <p class="auto-style1">
                First Value:<asp:TextBox ID="firstValueTextBox" runat="server"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Second Value:<asp:TextBox ID="secondValueTextBox" runat="server"></asp:TextBox>
            </p>
        </div>
        <p class="auto-style1">
            &nbsp;</p>
        <asp:Button ID="plusButton" runat="server" Height="30px" OnClick="plusButton_Click1" Text="+" Width="30px" />
&nbsp;
        <asp:Button ID="subtractButton" runat="server" Height="30px" OnClick="subtractButton_Click" Text="-" Width="30px" />
&nbsp;
        <asp:Button ID="multiplyButton" runat="server" Height="30px" OnClick="multiplyButton_Click" Text="*" Width="30px" />
&nbsp;
        <asp:Button ID="divideButton" runat="server" Height="30px" OnClick="divideButton_Click" Text="/" Width="30px" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server" CssClass="auto-style2"></asp:Label>
    </form>
</body>
</html>
