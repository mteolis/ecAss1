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
            <asp:GridView ID="GridViewMyProfile" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="16px" Width="872px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </form>
    </body>
</html>
