<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeSimpleDarts.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="okButton" runat="server" CssClass="auto-style1" OnClick="okButton_Click" Text="OK" />
        </div>
        <p>
            &nbsp;</p>
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
