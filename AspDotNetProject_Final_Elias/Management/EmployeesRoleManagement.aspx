<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="EmployeesRoleManagement.aspx.cs" Inherits="AspDotNetProject_Final_Elias.Management.EmployeesRoleManagement" %>

<%@ Register Src="~/UserControls/EmployeesRoleUsrCtrl.ascx" TagPrefix="uc1" TagName="EmployeesRoleUsrCtrl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:EmployeesRoleUsrCtrl runat="server" id="EmployeesRoleUsrCtrl" />
</asp:Content>
