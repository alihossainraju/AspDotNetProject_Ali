<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="All.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.All" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Tourist and Hospitality Management</h1><br />
        <p class="lead">Hospitality Management, Tourism Management Prepares students to work in the fields of accommodation and catering. Emphasises all activities involved in tourism and students have opportunities to work as travel guides, tourist managers or tourist representatives.</p>
        <br />
        <p><a href="http://www.hotelmanagementbd.com/" class="btn btn-primary btn-lg">Click Learn More &raquo;</a></p>
    </div>

    <br />
    <asp:Button ID="btnAgent" runat="server" Text="Travel Agent" Height="90px" Width="183px" OnClick="btnAgent_Click" />                       
    <asp:Button ID="btnTourGuide" runat="server" Text="Tour Guide" Height="90px" Width="183px" OnClick="btnStaff_Click" /> 
    <asp:Button ID="btnTransportation" runat="server" Text="Transportation" Height="90px" Width="183px" OnClick="btnTransportation_Click" />
    <asp:Button ID="btnHotel" runat="server" Text="Hotel" Height="90px" Width="183px" OnClick="btnHotel_Click" /> 
    <asp:Button ID="btnPackage" runat="server" Text="Package" Height="90px" Width="183px" OnClick="btnPackage_Click" />
  <asp:Button ID="btnTourist" runat="server" Text="Tourist" Height="90px" Width="183px" OnClick="btnTourist_Click" /> 
</asp:Content>
