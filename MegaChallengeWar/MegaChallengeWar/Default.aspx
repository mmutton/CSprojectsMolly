<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MegaChallengeWar.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            background-color: #FFFF00;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <h1 class="auto-style5">Play War!</h1>
            <asp:Button ID="playButton" runat="server" CssClass="auto-style2" Height="49px" OnClick="playButton_Click" Text="Play" Width="82px" />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
