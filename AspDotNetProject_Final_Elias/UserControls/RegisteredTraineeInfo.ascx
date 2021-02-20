<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RegisteredTraineeInfo.ascx.cs" Inherits="AspDotNetProject_Final_Elias.UserControls.RegisteredTraineeInfo" %>

<style type="text/css">
    .auto-style1 {
        text-align: center;
    }
</style>

<br /> <br />
<div class="auto-style1">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TraineeRegistrationID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="TraineeRegistrationID" HeaderText="TraineeRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="TraineeRegistrationID" />
        <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:MM/dd/yyyy}" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
</div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TraineeRegistrations] WHERE [TraineeRegistrationID] = @TraineeRegistrationID" InsertCommand="INSERT INTO [TraineeRegistrations] ([TraineeName], [Gender], [Email], [DOB], [MobileNo], [Address], [Password]) VALUES (@TraineeName, @Gender, @Email, @DOB, @MobileNo, @Address, @Password)" SelectCommand="SELECT * FROM [TraineeRegistrations]" UpdateCommand="UPDATE [TraineeRegistrations] SET [TraineeName] = @TraineeName, [Gender] = @Gender, [Email] = @Email, [DOB] = @DOB, [MobileNo] = @MobileNo, [Address] = @Address, [Password] = @Password WHERE [TraineeRegistrationID] = @TraineeRegistrationID">
    <DeleteParameters>
        <asp:Parameter Name="TraineeRegistrationID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TraineeName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="MobileNo" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TraineeName" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter DbType="Date" Name="DOB" />
        <asp:Parameter Name="MobileNo" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="TraineeRegistrationID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>





<%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TraineeRegistrationID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="TraineeRegistrationID" HeaderText="TraineeRegistrationID" InsertVisible="False" ReadOnly="True" SortExpression="TraineeRegistrationID" />
        <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [TraineeRegistrations]"></asp:SqlDataSource>--%>

