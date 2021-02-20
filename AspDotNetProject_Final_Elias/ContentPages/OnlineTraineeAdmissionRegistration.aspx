<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OnlineTraineeAdmissionRegistration.aspx.cs" Inherits="AspDotNetProject_Final_Elias.ContentPages.OnlineTraineeAdmissionRegistration" %>

<%@ Register Src="~/UserControls/OnlineAdmissionRegUserCtrl.ascx" TagPrefix="uc1" TagName="OnlineAdmissionRegUserCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:OnlineAdmissionRegUserCtrl runat="server" ID="OnlineAdmissionRegUserCtrl" />
</asp:Content>
