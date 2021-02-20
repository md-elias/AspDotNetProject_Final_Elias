<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisteredTraineeInformation.aspx.cs" Inherits="AspDotNetProject_Final_Elias.Management.RegisteredTraineeInformation" %>

<%@ Register Src="~/UserControls/RegisteredTraineeInfo.ascx" TagPrefix="uc1" TagName="RegisteredTraineeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:RegisteredTraineeInfo runat="server" ID="RegisteredTraineeInfo" />
</asp:Content>
