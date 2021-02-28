<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.Hotel" %>

<%@ Register Src="~/UserControls/UsHotel.ascx" TagPrefix="uc1" TagName="UsHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UsHotel runat="server" id="UsHotel" />
</asp:Content>
