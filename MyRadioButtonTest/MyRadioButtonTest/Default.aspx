<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyRadioButtonTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            What&#39;s your favorite food?<br />
            <br />
            <asp:RadioButton ID="pizzaRadioButton" runat="server" GroupName="FoodGroup" Text="Pizza" />
            <br />
            <asp:RadioButton ID="tacoRadioButton" runat="server" GroupName="FoodGroup" Text="Tacos" />
            <br />
            <br />
            <asp:Button ID="showMeButton" runat="server" OnClick="showMeButton_Click" Text="Show Me" />
            <br />
            <br />
            <br />
            <asp:Image ID="resultImage" runat="server" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
