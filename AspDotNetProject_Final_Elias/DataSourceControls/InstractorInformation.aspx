<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InstractorInformation.aspx.cs" Inherits="AspDotNetProject_Final_Elias.DataSourceControls.InstractorInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="auto-style1" style="width: 1763px; height: 411px">
        <tr>
            <td style="height: 52px; font-size: large;" colspan="2">Instractor Information</td>
            <td style="height: 52px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:TextBox ID="txtName" runat="server" Width="336px"></asp:TextBox>
            </td>
            <td rowspan="7">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="InstractorID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="InstractorID" HeaderText="InstractorID" InsertVisible="False" ReadOnly="True" SortExpression="InstractorID" />
                        <asp:BoundField DataField="InstractorName" HeaderText="InstractorName" SortExpression="InstractorName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Instractor]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:TextBox ID="txtEmail" runat="server" Height="22px" Width="335px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:DropDownList ID="ddlGender" runat="server" Height="17px" Width="286px">
                    <asp:ListItem>Choose Any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblDOB" runat="server" Text="BirthDate"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="285px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:TextBox ID="txtPassword" runat="server" Height="23px" Width="332px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:TextBox ID="txtConfirmPass" runat="server" Width="336px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">&nbsp;</td>
            <td class="modal-sm" style="width: 340px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 159px">
                <asp:Label ID="lblTid" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 340px">
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
