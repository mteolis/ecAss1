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
            <asp:GridView ID="GridViewProfile" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="66px" Width="1264px">
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
