<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="AspDotNetProject_Final_Elias.Management.Course" %>

<%@ Register Src="~/UserControls/UpdatedPanelUsrCtrl.ascx" TagPrefix="uc1" TagName="UpdatedPanelUsrCtrl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UpdatedPanelUsrCtrl runat="server" id="UpdatedPanelUsrCtrl" />
</asp:Content>
