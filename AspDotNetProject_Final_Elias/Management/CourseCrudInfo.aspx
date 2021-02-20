<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseCrudInfo.aspx.cs" Inherits="AspDotNetProject_Final_Elias.Management.CourseCrudInfo" %>

<%@ Register Src="~/UserControls/CoursesInfoCrudUsrCtrl.ascx" TagPrefix="uc1" TagName="CoursesInfoCrudUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:CoursesInfoCrudUsrCtrl runat="server" ID="CoursesInfoCrudUsrCtrl" />
</asp:Content>
