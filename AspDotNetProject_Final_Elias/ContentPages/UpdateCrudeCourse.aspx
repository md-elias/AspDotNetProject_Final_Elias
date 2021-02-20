<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="UpdateCrudeCourse.aspx.cs" Inherits="AspDotNetProject_Final_Elias.ContentPages.UpdateCrudeCourse" %>

<%@ Register Src="~/UserControls/EmployeesRoleUsrCtrl.ascx" TagPrefix="uc1" TagName="EmployeesRoleUsrCtrl" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:EmployeesRoleUsrCtrl runat="server" ID="EmployeesRoleUsrCtrl" />

</asp:Content>
