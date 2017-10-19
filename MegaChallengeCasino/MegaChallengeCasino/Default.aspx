<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MegaChallengeCasino.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 17px;
        }
        .auto-style2 {
            background-color: #66FF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" />
            <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
            <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
        </div>
        <p>
            Your Bet:&nbsp;
            <asp:TextBox ID="yourBetTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="leverButton" runat="server" CssClass="auto-style2" OnClick="leverButton_Click" Text="Pull the Lever!" />
        </p>
        <p>
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="moneyLabel" runat="server"></asp:Label>
        </p>
        <p class="auto-style1">
            1 Cherry - x2 Your Bet</p>
        <p class="auto-style1">
            2 Cherries - x3 Your Bet</p>
        <p>
            3 Cherries - x4 Your Bet</p>
        3 7&#39;s - Jackpot - x100 Your Bet<p class="auto-style1">
            &nbsp;HOWEVER ... if there&#39;s even one BAR, you win nothing.</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
