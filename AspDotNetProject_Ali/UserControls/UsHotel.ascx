<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UsHotel.ascx.cs" Inherits="AspDotNetProject_Ali.UserControls.UsHotel" %>
<style type="text/css">
    .auto-style1 {
        width: 1458px;
        height: 383px;
    }
    .auto-style3 {
        width: 4px;
    }
    .auto-style6 {
        width: 195px;
    }
    .auto-style7 {
        width: 195px;
        height: 32px;
    }
    .auto-style8 {
        width: 138px;
    }
    .auto-style9 {
        width: 138px;
        height: 32px;
    }
    .auto-style11 {
        width: 138px;
        height: 2px;
    }
    .auto-style12 {
        width: 195px;
        height: 2px;
    }
    .auto-style14 {
        width: 138px;
        height: 25px;
    }
    .auto-style15 {
        width: 195px;
        height: 25px;
    }
    .auto-style16 {
        width: 141px;
    }
    .auto-style17 {
        width: 141px;
        height: 32px;
    }
    .auto-style18 {
        width: 141px;
        height: 25px;
    }
    .auto-style19 {
        width: 141px;
        height: 2px;
    }
</style>
<div>
        <h3>Please provide your valid information to proceed registration process.</h3>
        <br />
        <br />
        <table class="auto-style1">
                <tr>
                    <td class="auto-style16"><asp:Label ID="Label1" runat="server" Text="Hotel Name"></asp:Label></td>
                    <td class="auto-style8"><asp:TextBox ID="txtHotelName" runat="server" Width="200px"></asp:TextBox></td>
                    <td class="auto-style6"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHotelName" ErrorMessage="Hotel name is required" ForeColor="#CC0000"></asp:RequiredFieldValidator></td>
                    <td class="auto-style3" rowspan="9">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HotelID" DataSourceID="SqlDataSource1" Height="136px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="485px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="HotelID" HeaderText="HotelID" InsertVisible="False" ReadOnly="True" SortExpression="HotelID" />
                                <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                                <asp:BoundField DataField="HotelRoomType" HeaderText="HotelRoomType" SortExpression="HotelRoomType" />
                                <asp:BoundField DataField="HotelAddress" HeaderText="HotelAddress" SortExpression="HotelAddress" />
                                <asp:BoundField DataField="HotelPhoneNumber" HeaderText="HotelPhoneNumber" SortExpression="HotelPhoneNumber" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Hotel] WHERE [HotelID] = @HotelID" InsertCommand="INSERT INTO [Hotel] ([HotelName], [HotelRoomType], [HotelAddress], [HotelPhoneNumber]) VALUES (@HotelName, @HotelRoomType, @HotelAddress, @HotelPhoneNumber)" SelectCommand="SELECT * FROM [Hotel]" UpdateCommand="UPDATE [Hotel] SET [HotelName] = @HotelName, [HotelRoomType] = @HotelRoomType, [HotelAddress] = @HotelAddress, [HotelPhoneNumber] = @HotelPhoneNumber WHERE [HotelID] = @HotelID">
                            <DeleteParameters>
                                <asp:Parameter Name="HotelID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="HotelName" Type="String" />
                                <asp:Parameter Name="HotelRoomType" Type="String" />
                                <asp:Parameter Name="HotelAddress" Type="String" />
                                <asp:Parameter Name="HotelPhoneNumber" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="HotelName" Type="String" />
                                <asp:Parameter Name="HotelRoomType" Type="String" />
                                <asp:Parameter Name="HotelAddress" Type="String" />
                                <asp:Parameter Name="HotelPhoneNumber" Type="String" />
                                <asp:Parameter Name="HotelID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><asp:Label ID="Label2" runat="server" Text="Hotel Room Type"></asp:Label></td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlRoomtype" runat="server" Height="20px" Width="200px">
                            <asp:ListItem>Chose anyone</asp:ListItem>
                            <asp:ListItem>AC</asp:ListItem>
                            <asp:ListItem>Non AC</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlRoomtype" ErrorMessage="Hotel room type is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><asp:Label ID="Label3" runat="server" Text="Hotel Address"></asp:Label></td>
                    <td class="auto-style8"><asp:TextBox ID="txtHotelAddress" runat="server" Width="200px"></asp:TextBox></td>
                    <td class="auto-style6"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtHotelAddress" ErrorMessage="Hotel is required" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style16"><asp:Label ID="Label4" runat="server" Text="Hotel Phone Number"></asp:Label></td>
                    <td class="auto-style8"><asp:TextBox ID="txtBoxPhoneNumber" runat="server" Width="200px"></asp:TextBox></td>
                    <td class="auto-style6"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBoxPhoneNumber" ErrorMessage="Phone is required" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style16"><asp:Label ID="Label6" runat="server" Text="Pasword"></asp:Label></td>
                    <td class="auto-style8"><asp:TextBox ID="txtBoxPassword" runat="server" Width="200px"></asp:TextBox></td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBoxPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><asp:Label ID="Label7" runat="server" Text="Confirm Pasword"></asp:Label></td>
                    <td class="auto-style8"><asp:TextBox ID="txtBoxConfirmPassword" runat="server" Width="200px"></asp:TextBox></td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBoxConfirmPassword" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;<br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtBoxPassword" ControlToValidate="txtBoxConfirmPassword" ErrorMessage="Does not match your password" ForeColor="#FF3300"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18"><asp:Label ID="Label5" runat="server" Text="Message"></asp:Label></td>
                    <td class="auto-style14"><asp:TextBox ID="txtBoxMessage" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style8"><asp:CheckBox ID="cBoxAgree" runat="server" Text="Yes, I am Agree." /></td>
                    <td class="auto-style6"><asp:Label ID="lblMessage" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    
                    <td class="auto-style11">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="57px" />
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                    </td>
                    <td class="auto-style12"><asp:Label ID="lblHotelID" runat="server" Visible="False"></asp:Label></td>
                </tr>
            </table>
    </div>