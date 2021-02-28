<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Package.ascx.cs" Inherits="UserControls_Package" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td rowspan="10">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PackageID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="PackageID" HeaderText="PackageID" InsertVisible="False" ReadOnly="True" SortExpression="PackageID" />
                    <asp:BoundField DataField="PackageName" HeaderText="PackageName" SortExpression="PackageName" />
                    <asp:BoundField DataField="PackageDuration" HeaderText="PackageDuration" SortExpression="PackageDuration" />
                    <asp:BoundField DataField="PackagePrice" HeaderText="PackagePrice" SortExpression="PackagePrice" />
                    <asp:BoundField DataField="AgentID" HeaderText="AgentID" SortExpression="AgentID" />
                    <asp:BoundField DataField="TransportationID" HeaderText="TransportationID" SortExpression="TransportationID" />
                    <asp:BoundField DataField="HotelID" HeaderText="HotelID" SortExpression="HotelID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Package] WHERE [PackageID] = @PackageID" InsertCommand="INSERT INTO [Package] ([PackageName], [PackageDuration], [PackagePrice], [AgentID], [TransportationID], [HotelID]) VALUES (@PackageName, @PackageDuration, @PackagePrice, @AgentID, @TransportationID, @HotelID)" SelectCommand="SELECT * FROM [Package]" UpdateCommand="UPDATE [Package] SET [PackageName] = @PackageName, [PackageDuration] = @PackageDuration, [PackagePrice] = @PackagePrice, [AgentID] = @AgentID, [TransportationID] = @TransportationID, [HotelID] = @HotelID WHERE [PackageID] = @PackageID">
                <DeleteParameters>
                    <asp:Parameter Name="PackageID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PackageName" Type="String" />
                    <asp:Parameter Name="PackageDuration" Type="String" />
                    <asp:Parameter Name="PackagePrice" Type="Decimal" />
                    <asp:Parameter Name="AgentID" Type="Int32" />
                    <asp:Parameter Name="TransportationID" Type="Int32" />
                    <asp:Parameter Name="HotelID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PackageName" Type="String" />
                    <asp:Parameter Name="PackageDuration" Type="String" />
                    <asp:Parameter Name="PackagePrice" Type="Decimal" />
                    <asp:Parameter Name="AgentID" Type="Int32" />
                    <asp:Parameter Name="TransportationID" Type="Int32" />
                    <asp:Parameter Name="HotelID" Type="Int32" />
                    <asp:Parameter Name="PackageID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Package Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="231px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Package Duration"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlDuration" runat="server" Height="18px" Width="223px">
                <asp:ListItem>Chose anyone</asp:ListItem>
                <asp:ListItem>7-days</asp:ListItem>
                <asp:ListItem>10-days</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Package Price"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlPrice" runat="server" Height="18px" Width="223px">
                <asp:ListItem>Chose anyone</asp:ListItem>
                <asp:ListItem>10000.00</asp:ListItem>
                <asp:ListItem>12000.00</asp:ListItem>
                <asp:ListItem>15000.00</asp:ListItem>
                <asp:ListItem>20000.00</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="AgentID"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlAgentID" runat="server" Height="18px" Width="223px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="AgentName" DataValueField="AgentID">
                <asp:ListItem>Chose anyone</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [TravelAgent]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="TransportationId"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTransportationID" runat="server" Height="18px" Width="223px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="TransportationType" DataValueField="TransportationID">
                <asp:ListItem>Chose anyone</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Transportation]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="HotelID"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlHotelID" runat="server" Height="18px" Width="223px" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="HotelName" DataValueField="HotelID">
                <asp:ListItem>Chose anyone</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Hotel]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes, I am agree" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPackageID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="82px" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="77px" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" style="height: 26px" Text="Delete" Width="77px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

