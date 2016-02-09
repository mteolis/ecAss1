<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Vanier Faces - My Profile</title>
        <style type="text/css">
            .auto-style1 {
                margin-left: 412px;
            }
            .auto-style2 {
                width: 100%;
            }
            .auto-style3 {
                width: 381px;
                text-align: right;
            }
            .auto-style4 {
                margin-left: 68px;
            }
            .auto-style5 {
                margin-left: 0px;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Label runat="server" ID="labelVanierFaces" Font-Bold="true" Font-Underline="true" Font-Size="XX-Large">Vanier Faces</asp:Label>
                <br /><br />

                <asp:Label runat="server" ID="labelProfile" Font-Bold="true" Font-Size="X-Large">My Profile</asp:Label>
                <br /><br />
                
                <asp:Button runat="server" ID="buttonMain" Text="Back to Main" OnClick="onClick_main" />
                <br /><br />

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
                <br />

                <asp:Label runat="server" ID="success" Style="margin-left:393px;">Load Successful.</asp:Label>
                <br />

                <asp:Button ID="buttonUpdate" runat="server" CssClass="auto-style1" CausesValidation="false" OnClick="onClick_update" Text="Update" Width="68px"/>
                <br />

                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelPassword" Visible="false">Password:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputPassword" runat="server" CssClass="auto-style5" visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqPassword" ControlToValidate="inputPassword" ErrorMessage="* Invalid: enter a value." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelFirstName" Visible="false">First name: </asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputFirstName" runat="server" CssClass="auto-style5" visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqFirstName" ControlToValidate="inputFirstName" ErrorMessage="* Invalid: enter a value." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelLastName" Visible="false">Last name:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputLastName" runat="server" Visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqLastName" ControlToValidate="inputLastName" ErrorMessage="* Invalid: enter a value." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelGender" Visible="false">Gender:</asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList runat="server" ID="inputGender" Visible="false">
                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                <asp:ListItem Value="Female">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelDOB" Visible="false">Date of Birth:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputDOB" runat="server" Visible="false"></asp:TextBox>
                            <asp:RangeValidator runat="server" ID="validateDOB" ControlToValidate="inputDOB" Type="Date" MinimumValue="1900-01-01" MaximumValue="2020-12-31" ErrorMessage="* Please enter a valid date (YYYY-MM-DD)." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelStreetAddress" Visible="false" >Street address:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputAddress" runat="server" Visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqAddress" ControlToValidate="inputAddress" ErrorMessage="* Invalid: enter a value." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelState" Visible="false">Province/State</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputState" runat="server" Visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqState" ControlToValidate="inputState" ErrorMessage="* Invalid: enter a value." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelCountry" Visible="false">Country:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputCountry" runat="server" Visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqCountry" ControlToValidate="inputCountry" ErrorMessage="* Invalid: enter a value." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Label runat="server" ID="labelZip" Visible="false">Zip/Postal code:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="inputZip" runat="server" Visible="false"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ID="reqZip" ControlToValidate="inputZip" ErrorMessage="* Invalid: enter a value." />
                            <br />
                            <asp:RegularExpressionValidator runat="server" ID="regInputZip" ControlToValidate="inputZip" ValidationExpression="(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)" ErrorMessage="* Please enter a valid Zip/Postal code (case-sensitive)." />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style3">
                            <asp:Button runat="server" ID="buttonCancel" Text="Cancel" CssClass="auto-style5" Visible="false" CausesValidation="false" OnClick="onClick_cancel" />
                        </td>
                        <td>
                            <asp:Button runat="server" ID="buttonSave" Text="Save" CssClass="auto-style4" Width="61px" Visible="false" OnClick="onClick_save" />
                        </td>
                    </tr>
                </table>
                <br />
            </div>
        </form>
    </body>
</html>
