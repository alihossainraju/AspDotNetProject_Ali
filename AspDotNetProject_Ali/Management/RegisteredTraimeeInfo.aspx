<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisteredTraimeeInfo.aspx.cs" Inherits="AspDotNetProject_Ali.Management.RegisteredTraimeeInfo" %>

<%@ Register Src="~/UserControls/RegisteredTraineeInfo.ascx" TagPrefix="uc1" TagName="RegisteredTraineeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:RegisteredTraineeInfo runat="server" id="RegisteredTraineeInfo" />
</asp:Content>
