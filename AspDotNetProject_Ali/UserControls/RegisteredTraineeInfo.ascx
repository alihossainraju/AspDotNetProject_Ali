<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisteredTraineeInfo.ascx.cs" Inherits="AspDotNetProject_Ali.UserControls.RegisteredTraineeInfo" %>
<br /> <br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ReunionRegistrationID" DataSourceID="SqlDataSource1" ForeColor="Black">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="ReunionRegistrationID" HeaderText="ReunionRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="ReunionRegistrationID" />
        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
        <asp:BoundField DataField="RoundNo" HeaderText="RoundNo" SortExpression="RoundNo" />
        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ReunionRegistration] WHERE [ReunionRegistrationID] = @ReunionRegistrationID" InsertCommand="INSERT INTO [ReunionRegistration] ([FullName], [EmailAddress], [RoundNo], [PhoneNo], [Message]) VALUES (@FullName, @EmailAddress, @RoundNo, @PhoneNo, @Message)" SelectCommand="SELECT * FROM [ReunionRegistration]" UpdateCommand="UPDATE [ReunionRegistration] SET [FullName] = @FullName, [EmailAddress] = @EmailAddress, [RoundNo] = @RoundNo, [PhoneNo] = @PhoneNo, [Message] = @Message WHERE [ReunionRegistrationID] = @ReunionRegistrationID">
    <DeleteParameters>
        <asp:Parameter Name="ReunionRegistrationID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="RoundNo" Type="String" />
        <asp:Parameter Name="PhoneNo" Type="String" />
        <asp:Parameter Name="Message" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="RoundNo" Type="String" />
        <asp:Parameter Name="PhoneNo" Type="String" />
        <asp:Parameter Name="Message" Type="String" />
        <asp:Parameter Name="ReunionRegistrationID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

