<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tourist.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.Tourist" %>

<%@ Register Src="~/UserControls/Tourist.ascx" TagPrefix="uc1" TagName="Tourist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Tourist runat="server" ID="Tourist" />
</asp:Content>
