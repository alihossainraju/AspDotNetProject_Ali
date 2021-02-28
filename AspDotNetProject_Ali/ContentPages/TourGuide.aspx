<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TourGuide.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.TourGuide" %>

<%@ Register Src="~/UserControls/TourGuide.ascx" TagPrefix="uc1" TagName="TourGuide" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:TourGuide runat="server" ID="TourGuide" />
</asp:Content>
