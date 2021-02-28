<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TravelAgent.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.TravelAgent" %>

<%@ Register Src="~/UserControls/UsTravelAgent.ascx" TagPrefix="uc1" TagName="UsTravelAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UsTravelAgent runat="server" ID="UsTravelAgent" />
</asp:Content>
