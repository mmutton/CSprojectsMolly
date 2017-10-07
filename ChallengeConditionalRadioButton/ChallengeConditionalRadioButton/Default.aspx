<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeConditionalRadioButton.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your Note Taking Preference</div>
        <br />
        <asp:RadioButton ID="pencilRadioButton" runat="server" GroupName="ImplementGroup" Text="Pencil" />
        <br />
        <asp:RadioButton ID="penRadioButton" runat="server" GroupName="ImplementGroup" Text="Pen" />
        <br />
        <asp:RadioButton ID="phoneRadioButton" runat="server" GroupName="ImplementGroup" Text="Phone" />
        <br />
        <asp:RadioButton ID="tabletRadioButton" runat="server" GroupName="ImplementGroup" Text="Tablet" />
        <br />
        <br />
        <br />
        <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="OK" />
        <br />
        <br />
        <br />
        <asp:Image ID="resultImage" runat="server" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
        <br />
    </form>
</body>
</html>
