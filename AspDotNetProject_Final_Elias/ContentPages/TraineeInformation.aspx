<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TraineeInformation.aspx.cs" Inherits="AspDotNetProject_Final_Elias.ContentPages.TraineeInformation" %>

<%@ Register Src="~/UserControls/TraineeInfoUsrCtrl.ascx" TagPrefix="uc1" TagName="TraineeInfoUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:traineeinfousrctrl runat="server" id="TraineeInfoUsrCtrl" />
</asp:Content>
