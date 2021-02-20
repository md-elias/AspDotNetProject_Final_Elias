<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CoursesInfoCrudUsrCtrl.ascx.cs" Inherits="AspDotNetProject_Final_Elias.UserControls.CoursesInfoCrudUsrCtrl" %>

<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>


<table class="auto-style1">
    <tr>
        <td colspan="2"><strong>Course Details Information</strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblName" runat="server" Text="Course Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td colspan="2" rowspan="9">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                    <asp:BoundField DataField="CourseDuration" HeaderText="CourseDuration" SortExpression="CourseDuration" />
                    <asp:BoundField DataField="CoursePrice" HeaderText="CoursePrice" SortExpression="CoursePrice" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblCourseDuration" runat="server" Text="Course Duration"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCourseDuration" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblCoursePrice" runat="server" Text="Course Price"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCoursePrice" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text=" IsConfirmed!!!" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td rowspan="3">
            <asp:Button ID="btnAdd" runat="server" Height="50px" OnClick="btnAdd_Click" Text="Add" Width="95px" />
&nbsp;
            <asp:Button ID="btnDelete" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Height="50px" OnClick="btnDelete_Click" Text="Delete" Width="95px" />
&nbsp;<asp:Button ID="btnUpdate" runat="server" Height="50px" OnClick="btnUpdate_Click" Text="Update" Width="95px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lilTid" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>


