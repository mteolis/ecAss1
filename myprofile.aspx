<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - My Profile</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Underline="true" Font-Size="XX-Large">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelProfile" Font-Bold="true" Font-Size="X-Large">My Profile</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelUsername">Username:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelPassword">Password:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelFirstName">First name:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelLastName">Last name:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelGender">Gender:</asp:Label>
                <br />
          
                <asp:Label runat="server" ID="labelDOB">Date of Birth:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelPhone">Phone number:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelStreetAddress">Street address:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelCity">City:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelState">Province/State</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelCountry">Country:</asp:Label>
                <br />

                <asp:Label runat="server" ID="labelZip">Zip/Postal code:</asp:Label>
                <br /><br />

                <asp:Button runat="server" ID="buttonCancel" Text="Cancel" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonSave" Text="Save" />
            </div>
        </form>
    </body>
</html>
