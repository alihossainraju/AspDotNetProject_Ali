<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="ReunionRegistration.aspx.cs" Inherits="AspDotNetProject_Ali.ContentPages.ReunionRegistration" %>

<%@ Register Src="~/UserControls/Reunion_Registration.ascx" TagPrefix="uc1" TagName="Reunion_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Reunion_Registration runat="server" id="Reunion_Registration" />
</asp:Content>
