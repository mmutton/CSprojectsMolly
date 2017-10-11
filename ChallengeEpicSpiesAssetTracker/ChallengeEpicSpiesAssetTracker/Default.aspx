<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpiesAssetTracker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 150px;
            height: 190px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style3 {
            background-color: #A89083;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            color: #453631;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img alt="" class="auto-style1" src="epic-spies-logo.jpg" /><h2 class="auto-style4">Asset Performance Tracker</h2>
            <p class="auto-style2">
                Asset Name&nbsp; <asp:TextBox ID="assetNameTextBox" runat="server" Width="144px"></asp:TextBox>
            </p>
            <p class="auto-style2">
                Number of
                Elections Rigged&nbsp; <asp:TextBox ID="electionsRiggedTextBox" runat="server" Height="19px" Width="46px"></asp:TextBox>
            </p>
            <p class="auto-style2">
                Number of
                Acts of Subterfuge&nbsp; <asp:TextBox ID="actsOfSubterfugeTextBox" runat="server" Height="19px" Width="46px"></asp:TextBox>
            </p>
            <p class="auto-style2" style="color: #00FFFF">
                <asp:Button ID="addButton" runat="server" CssClass="auto-style3" OnClick="addButton_Click" Text="Add Asset" BorderColor="#453631" BorderStyle="Solid" Height="48px" Width="80px" />
            </p>
        </div>
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
