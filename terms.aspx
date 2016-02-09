<%@ Page Language="C#" AutoEventWireup="true" CodeFile="terms.aspx.cs" Inherits="Terms" %>
<%@ Reference Control="~/UserInfoBoxControl.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - Terms and Conditions</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:PlaceHolder runat="server" ID="phUserInfoBox" />
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Size="XX-Large" Font-Underline="true">Vanier Faces</asp:Label>
                <br /><br />
                <asp:Label runat="server" ID="labelRegister" Font-Bold="true" Font-Size="X-Large">Terms and Conditions</asp:Label>
                <br /><br />
                <asp:Label runat="server" ID="labelTermsAndConditions">The creators of this website are not responsible for any problems the user may encounter.</asp:Label>
                <br />
                <asp:Label runat="server" ID="labelTermsAndConditions1">By clicking the "Accept" button the user is taking full responsibility for anything that happens regardless of the issue.</asp:Label>
                <br /><br />
                <asp:Button runat="server" ID="buttonDecline" Text="Decline" OnClick="onClick_decline" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <asp:Button runat="server" ID="buttonAccept" Text="Accept" OnClick="onClick_accept" />
                <br />
                <br />
                <br />
            </div>
        </form>
    </body>
</html>
