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

                <asp:Button runat="server" ID="buttonProfile" Text="Profile" OnClick="onClick_profile" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button runat="server" ID="buttonLogout" Text="Logout" OnClick="onClick_logout" />
                <br /><br />

                <asp:Label runat="server" ID="labelProfileList">Profile List</asp:Label>
                <br />
                <asp:BulletedList runat="server" ID="listProfiles" Style="list-style-type:none;" Width="180px">
                    <asp:ListItem Value="user1"></asp:ListItem>
                    <asp:ListItem Value="dwa"></asp:ListItem>
                    <asp:ListItem Value="useasdr1"></asp:ListItem>
                    <asp:ListItem Value="dwaaa"></asp:ListItem>
                    <asp:ListItem Value="vxdv"></asp:ListItem>
                    <asp:ListItem Value="user1"></asp:ListItem>
                </asp:BulletedList>
                                
            </div>
        </form>
    </body>
</html>
