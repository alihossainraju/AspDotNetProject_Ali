<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Reunion_Registration.ascx.cs" Inherits="AspDotNetProject_Ali.UserControls.Reunion_Registration" %>
<asp:Button ID="btnBack" runat="server" Text="Return Home" Width="113px" OnClick="btnBack_Click" />    
<div>
        <h3>Please provide your valid information to proceed registration process.</h3>
        <br />
        <br />
        <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxFullName" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxEmail" runat="server"></asp:TextBox></td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server" Height="19px" Width="176px">
                            <asp:ListItem>Chose anyone</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label9" runat="server" Text="Date of Birth"></asp:Label></td>
                    <td><asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="172px"></asp:TextBox></td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Round No."></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxRoundNo" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxPhoneNumber" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label6" runat="server" Text="Pasword"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxPassword" runat="server"></asp:TextBox></td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label7" runat="server" Text="Confirm Pasword"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxConfirmPassword" runat="server"></asp:TextBox></td>
                    <td>
&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label5" runat="server" Text="Message"></asp:Label></td>
                    <td><asp:TextBox ID="txtBoxMessage" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><asp:CheckBox ID="cBoxAgree" runat="server" Text="Yes, I am Agree." /></td>
                    <td><asp:Label ID="lblMessage" runat="server"></asp:Label>&nbsp;&nbsp; <asp:Label ID="emailSendSuccess" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><asp:Button ID="btnSave" runat="server" Text="Submit" OnClick="btnSave_Click" Width="176px" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </div>