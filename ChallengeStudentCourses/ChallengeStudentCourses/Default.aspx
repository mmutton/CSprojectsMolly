<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeStudentCourses.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #99FFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="assignment1Button" runat="server" OnClick="assignment1Button_Click" Text="Assignment 1" CssClass="auto-style1" />
        <br />
        <br />
        <asp:Button ID="assignment2Button" runat="server" OnClick="assignment2Button_Click" Text="Assignment 2" CssClass="auto-style1" />
        <br />
        <br />
        <asp:Button ID="assignment3Button" runat="server" OnClick="assignment3Button_Click" Text="Assignment 3" CssClass="auto-style1" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
