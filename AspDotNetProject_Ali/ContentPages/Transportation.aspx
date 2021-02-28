<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transportation.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.Transportation" %>

<%@ Register Src="~/UserControls/Transportation.ascx" TagPrefix="uc1" TagName="Transportation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:Transportation runat="server" ID="Transportation" />
</asp:Content>
