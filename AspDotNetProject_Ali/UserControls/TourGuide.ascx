<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TourGuide.ascx.cs" Inherits="UserControls_TourGuide" %>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GuideID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="GuideID" HeaderText="GuideID" InsertVisible="False" ReadOnly="True" SortExpression="GuideID" />
                    <asp:BoundField DataField="GuideName" HeaderText="GuideName" SortExpression="GuideName" />
                    <asp:BoundField DataField="GuideAddress" HeaderText="GuideAddress" SortExpression="GuideAddress" />
                    <asp:BoundField DataField="GuidePhone" HeaderText="GuidePhone" SortExpression="GuidePhone" />
                    <asp:BoundField DataField="GuideGender" HeaderText="GuideGender" SortExpression="GuideGender" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Guide] WHERE [GuideID] = @GuideID" InsertCommand="INSERT INTO [Guide] ([GuideName], [GuideAddress], [GuidePhone], [GuideGender]) VALUES (@GuideName, @GuideAddress, @GuidePhone, @GuideGender)" SelectCommand="SELECT * FROM [Guide]" UpdateCommand="UPDATE [Guide] SET [GuideName] = @GuideName, [GuideAddress] = @GuideAddress, [GuidePhone] = @GuidePhone, [GuideGender] = @GuideGender WHERE [GuideID] = @GuideID">
                <DeleteParameters>
                    <asp:Parameter Name="GuideID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="GuideName" Type="String" />
                    <asp:Parameter Name="GuideAddress" Type="String" />
                    <asp:Parameter Name="GuidePhone" Type="String" />
                    <asp:Parameter Name="GuideGender" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="GuideName" Type="String" />
                    <asp:Parameter Name="GuideAddress" Type="String" />
                    <asp:Parameter Name="GuidePhone" Type="String" />
                    <asp:Parameter Name="GuideGender" Type="String" />
                    <asp:Parameter Name="GuideID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Guide Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Guide Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Guide Phone Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPhone" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlGender" runat="server" Height="29px" Width="229px">
                <asp:ListItem>Chose anyone</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tstpass" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtComPass" runat="server" Width="230px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblGuideID" runat="server" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes, Iam agree," />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="73px" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="78px" />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="81px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

