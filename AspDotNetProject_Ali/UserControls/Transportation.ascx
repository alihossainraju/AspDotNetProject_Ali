<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Transportation.ascx.cs" Inherits="UserControls_Transportation" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        margin-left: 0px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td rowspan="8">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TransportationID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="TransportationID" HeaderText="TransportationID" InsertVisible="False" ReadOnly="True" SortExpression="TransportationID" />
                    <asp:BoundField DataField="TransportationType" HeaderText="TransportationType" SortExpression="TransportationType" />
                    <asp:BoundField DataField="TransportationHelpline" HeaderText="TransportationHelpline" SortExpression="TransportationHelpline" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Transportation] WHERE [TransportationID] = @TransportationID" InsertCommand="INSERT INTO [Transportation] ([TransportationType], [TransportationHelpline]) VALUES (@TransportationType, @TransportationHelpline)" SelectCommand="SELECT * FROM [Transportation]" UpdateCommand="UPDATE [Transportation] SET [TransportationType] = @TransportationType, [TransportationHelpline] = @TransportationHelpline WHERE [TransportationID] = @TransportationID">
                <DeleteParameters>
                    <asp:Parameter Name="TransportationID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TransportationType" Type="String" />
                    <asp:Parameter Name="TransportationHelpline" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TransportationType" Type="String" />
                    <asp:Parameter Name="TransportationHelpline" Type="String" />
                    <asp:Parameter Name="TransportationID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Transportation Type"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTran" runat="server" CssClass="auto-style2" Height="27px" Width="194px">
                <asp:ListItem>Chose anyone</asp:ListItem>
                <asp:ListItem>Bus</asp:ListItem>
                <asp:ListItem>Plane</asp:ListItem>
                <asp:ListItem>Train</asp:ListItem>
                <asp:ListItem>Boat</asp:ListItem>
                <asp:ListItem>Car</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Helpline"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtHelpline" runat="server" Width="195px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes, I am agree" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblTranID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="73px" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="75px" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="63px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

