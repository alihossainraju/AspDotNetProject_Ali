<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Tourist.ascx.cs" Inherits="UserControls_Tourist" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 167px;
    }
    .auto-style3 {
        width: 259px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td rowspan="11">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TouristID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TouristID" HeaderText="TouristID" InsertVisible="False" ReadOnly="True" SortExpression="TouristID" />
                    <asp:BoundField DataField="TouristName" HeaderText="TouristName" SortExpression="TouristName" />
                    <asp:BoundField DataField="TouristPhoneNumber" HeaderText="TouristPhoneNumber" SortExpression="TouristPhoneNumber" />
                    <asp:BoundField DataField="TouristAddress" HeaderText="TouristAddress" SortExpression="TouristAddress" />
                    <asp:BoundField DataField="TouristNid_PassportNumber" HeaderText="TouristNid_PassportNumber" SortExpression="TouristNid_PassportNumber" />
                    <asp:BoundField DataField="Nationlity" HeaderText="Nationlity" SortExpression="Nationlity" />
                    <asp:BoundField DataField="GuideID" HeaderText="GuideID" SortExpression="GuideID" />
                    <asp:BoundField DataField="PackageID" HeaderText="PackageID" SortExpression="PackageID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Tourist] WHERE [TouristID] = @TouristID" InsertCommand="INSERT INTO [Tourist] ([TouristName], [TouristPhoneNumber], [TouristAddress], [TouristNid_PassportNumber], [Nationlity], [GuideID], [PackageID]) VALUES (@TouristName, @TouristPhoneNumber, @TouristAddress, @TouristNid_PassportNumber, @Nationlity, @GuideID, @PackageID)" SelectCommand="SELECT * FROM [Tourist]" UpdateCommand="UPDATE [Tourist] SET [TouristName] = @TouristName, [TouristPhoneNumber] = @TouristPhoneNumber, [TouristAddress] = @TouristAddress, [TouristNid_PassportNumber] = @TouristNid_PassportNumber, [Nationlity] = @Nationlity, [GuideID] = @GuideID, [PackageID] = @PackageID WHERE [TouristID] = @TouristID">
                <DeleteParameters>
                    <asp:Parameter Name="TouristID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TouristName" Type="String" />
                    <asp:Parameter Name="TouristPhoneNumber" Type="String" />
                    <asp:Parameter Name="TouristAddress" Type="String" />
                    <asp:Parameter Name="TouristNid_PassportNumber" Type="Int32" />
                    <asp:Parameter Name="Nationlity" Type="String" />
                    <asp:Parameter Name="GuideID" Type="Int32" />
                    <asp:Parameter Name="PackageID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TouristName" Type="String" />
                    <asp:Parameter Name="TouristPhoneNumber" Type="String" />
                    <asp:Parameter Name="TouristAddress" Type="String" />
                    <asp:Parameter Name="TouristNid_PassportNumber" Type="Int32" />
                    <asp:Parameter Name="Nationlity" Type="String" />
                    <asp:Parameter Name="GuideID" Type="Int32" />
                    <asp:Parameter Name="PackageID" Type="Int32" />
                    <asp:Parameter Name="TouristID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Tourist Name"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtName" runat="server" Width="252px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Phone Number"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPhone" runat="server" Width="252px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtAddress" runat="server" Width="252px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="NID / Pasport"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtNidPas" runat="server" Width="252px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Text="Nationlity"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtNationlity" runat="server" Width="252px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Text="GuideID"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlGuideID" runat="server" Width="246px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="GuideName" DataValueField="GuideID" Height="25px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Guide]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label7" runat="server" Text="PackageID"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlPackageID" runat="server" Height="25px" Width="246px" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="PackageName" DataValueField="PackageID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Package]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes, I am agree" />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="67px" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="72px" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="74px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblTouristID" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>

