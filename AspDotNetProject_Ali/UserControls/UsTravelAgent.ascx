<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UsTravelAgent.ascx.cs" Inherits="UserControls_UsTravelAgent" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td rowspan="8">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AgentID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="AgentID" HeaderText="AgentID" InsertVisible="False" ReadOnly="True" SortExpression="AgentID" />
                    <asp:BoundField DataField="AgentName" HeaderText="AgentName" SortExpression="AgentName" />
                    <asp:BoundField DataField="AgentAddress" HeaderText="AgentAddress" SortExpression="AgentAddress" />
                    <asp:BoundField DataField="AgentPhoneNumber" HeaderText="AgentPhoneNumber" SortExpression="AgentPhoneNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TravelAgent] WHERE [AgentID] = @AgentID" InsertCommand="INSERT INTO [TravelAgent] ([AgentName], [AgentAddress], [AgentPhoneNumber]) VALUES (@AgentName, @AgentAddress, @AgentPhoneNumber)" SelectCommand="SELECT * FROM [TravelAgent]" UpdateCommand="UPDATE [TravelAgent] SET [AgentName] = @AgentName, [AgentAddress] = @AgentAddress, [AgentPhoneNumber] = @AgentPhoneNumber WHERE [AgentID] = @AgentID">
                <DeleteParameters>
                    <asp:Parameter Name="AgentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AgentName" Type="String" />
                    <asp:Parameter Name="AgentAddress" Type="String" />
                    <asp:Parameter Name="AgentPhoneNumber" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AgentName" Type="String" />
                    <asp:Parameter Name="AgentAddress" Type="String" />
                    <asp:Parameter Name="AgentPhoneNumber" Type="String" />
                    <asp:Parameter Name="AgentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Agent Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAgentName" runat="server" Width="198px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAgentName" ErrorMessage="Agent name is required" ForeColor="#FF5050"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Agent Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAgentAddress" runat="server" Width="198px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAgentAddress" ErrorMessage="Agent address is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Agent Phone Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAgentPhoneNumber" runat="server" Width="198px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAgentPhoneNumber" ErrorMessage="Agent phone number is required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="label" runat="server">Password</asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="198px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="label4" runat="server">Confirm Password</asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" Width="198px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Does not match your password" ForeColor="#FF5050"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblAgentID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkAggree" runat="server" Text="Yes, I am agree" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="79px" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="68px" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
    </tr>
</table>

