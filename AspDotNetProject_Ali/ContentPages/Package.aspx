<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.Package" %>

<%@ Register Src="~/UserControls/Package.ascx" TagPrefix="uc1" TagName="Package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Package runat="server" ID="Package" />
</asp:Content>
