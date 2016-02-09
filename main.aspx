<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - Main</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Underline="true" Font-Size="XX-Large">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelMain" Font-Bold="true" Font-Size="X-Large">Main</asp:Label>
                <br /><br />

                <asp:Button runat="server" ID="buttonProfile" Text="Profile" CausesValidation="false" OnClick="onClick_profile" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonLogout" Text="Logout" CausesValidation="false" OnClick="onClick_logout" />
                <br /><br />

                <asp:Label runat="server" ID="labelProfileList">Profile List</asp:Label>
                <br />
            </div>
            <asp:GridView ID="GridViewProfile" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="60px" Width="1157px">
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
            <br />

            <asp:Label runat="server" ID="labelUserProfileView">Enter user whose profile you wish to view:</asp:Label> 
            <br />
            <asp:TextBox runat="server" ID="inputUserNavigation"></asp:TextBox>
            <asp:Button runat="server" ID="buttonNavigate" Text="View Profile" OnClick="onClick_navigate" />
            <br />
            <asp:RequiredFieldValidator runat="server" ID="reqUserNavigation" ControlToValidate="inputUserNavigation" ErrorMessage="* Please enter a username." />
            <br />
            <asp:Label runat="server" ID="errorUserNotFound">* Invalid: user does not exist.</asp:Label>
        </form>
    </body>
</html>
