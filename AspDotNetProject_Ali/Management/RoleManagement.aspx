<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="AspDotNetProject_Ali.Management.RoleManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br /> <br />
     <h1>Manage User And Roles</h1>
    <h3>[Only Users associated with the admin role can access this page]</h3>
    <br />

    <div class="row">
        <div class="col-sm-12 table-responsive">
            <h2>Users</h2>
            <asp:GridView ID="grdUsers" runat="server" DataKeyNames="Id"
                AutoGenerateColumns="False" SelectMethod="grdUsers_GetData" 
                ItemType="AspDotNetProject_Ali.Models.ApplicationUser" 
                CssClass="table table-bordered table-striped table-condensed" 
                OnPreRender="GridView_PreRender" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="User Name" DataField="UserName" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:TemplateField HeaderText="Roles">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# ListRoles(Item.Roles) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>        
        </div>
        <div class="col-sm-6">
            <asp:DetailsView ID="dvUsers" runat="server" DataKeyNames="Id" 
                AutoGenerateRows="False" CssClass="table table-bordered table-condensed" 
                SelectMethod="dvUsers_GetItem" UpdateMethod="dvUsers_UpdateItem" 
                InsertMethod="dvUsers_InsertItem" DeleteMethod="dvUsers_DeleteItem" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" 
                        ShowDeleteButton="true" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <h2>Roles</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateColumns="False" SelectMethod="grdRoles_GetData"
                CssClass="table table-bordered table-striped table-condensed" 
                OnPreRender="GridView_PreRender" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
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
            <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" 
                AutoGenerateRows="False" CssClass="table table-bordered table-condensed" 
                SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" 
                InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" 
                        ShowDeleteButton="true" />
                </Fields>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
            </asp:DetailsView>
        </div>
        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-label">Select a user:</label>
                <asp:DropDownList ID="ddlUsers" runat="server" 
                    SelectMethod="grdUsers_GetData" DataValueField="Id"
                    DataTextField="UserName" CssClass="form-control">
                </asp:DropDownList> 
            </div>
            <div class="form-group">
                <label class="control-label">Add one or more roles:</label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" 
                    SelectMethod="grdRoles_GetData" DataValueField="Id"
                    DataTextField="Name" CssClass="form-control"></asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" 
                CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>

</asp:Content>
