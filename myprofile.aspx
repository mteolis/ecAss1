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
                <br />
                <br />
                <br />
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
                <asp:Button ID="buttonUpdate" runat="server" CssClass="auto-style1" OnClick="ButtonUpdate_Click" Text="Update" Width="68px"/>
                <br />
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelPassword" Visible="false">Password:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="auto-style5" OnTextChanged="TextBox1_TextChanged" visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelFirstName" Visible="false">First name: </asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxFirstName" runat="server" CssClass="auto-style5" OnTextChanged="TextBox1_TextChanged" visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelLastName" Visible="false">Last name:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxLastName" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelGender" Visible="false">Gender:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextGender" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
          
                <asp:Label runat="server" ID="labelDOB" Visible="false">Date of Birth:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxDOB" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelPhone" Visible="false">Phone number:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxPhone" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelStreetAddress" Visible="false" >Street address:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxStreetAddress" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelCity" Visible="false" >City:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxCity" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelState" Visible="false">Province/State</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxlabelState" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelCountry" Visible="false">Country:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxCountry" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Label runat="server" ID="labelZip" Visible="false">Zip/Postal code:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxZip" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">

                <asp:Button runat="server" ID="buttonCancel" Text="Cancel" CssClass="auto-style5" Visible="false"/>
                        </td>
                        <td>
                <asp:Button runat="server" ID="buttonSave" Text="Save" CssClass="auto-style4" Width="61px" Visible="false"/>
                        </td>
                    </tr>
                </table>
                <br />
                <br />

                <br />

                <br />

                <br />

                <br />
          
                <br />

                <br />

                <br />

                <br />

                <br />

                <br />

                <br /><br />

                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </div>
        </form>
    </body>
</html>
