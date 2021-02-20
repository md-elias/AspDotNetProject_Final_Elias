<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TraineeInfoUsrCtrl.ascx.cs" Inherits="AspDotNetProject_Final_Elias.UserControls.TraineeInfoUsrCtrl" %>

<style type="text/css">

.nav-justified {
  width: 100%;
}
table {
  background-color: transparent;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
  tr {
    page-break-inside: avoid;
  }
  .text-center {
  text-align: center;
}
td {
  padding: 0;
}
strong {
  font-weight: bold;
}
  .modal-sm {
    width: 300px;
  }
    .auto-style2 {
        height: 25px;
    }
    .auto-style3 {
        height: 37px;
    }
</style>


<table class="nav-justified" style="height: 270px">
    <tr>
        <td class="text-center" colspan="2"><strong>Trainee Information Management</strong></td>
        <td class="text-center">&nbsp;</td>
        <td class="text-center">&nbsp;</td>
        <td class="text-center">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 208px">
            <asp:Label ID="lblName" runat="server" Text="Trainee Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td colspan="2" rowspan="9">
            <asp:GridView ID="GridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="TraineeId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="TraineeId" HeaderText="TraineeId" InsertVisible="False" ReadOnly="True" SortExpression="TraineeId" />
                    <asp:BoundField DataField="TraineeName" HeaderText="TraineeName" SortExpression="TraineeName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [TraineeInformation] WHERE [TraineeId] = @TraineeId" InsertCommand="INSERT INTO [TraineeInformation] ([TraineeName], [Email], [Gender], [DOB], [CourseID]) VALUES (@TraineeName, @Email, @Gender, @DOB, @CourseID)" SelectCommand="SELECT * FROM [TraineeInformation]" UpdateCommand="UPDATE [TraineeInformation] SET [TraineeName] = @TraineeName, [Email] = @Email, [Gender] = @Gender, [DOB] = @DOB, [CourseID] = @CourseID WHERE [TraineeId] = @TraineeId">
                <DeleteParameters>
                    <asp:Parameter Name="TraineeId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TraineeName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="CourseID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TraineeName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="CourseID" Type="Int32" />
                    <asp:Parameter Name="TraineeId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 208px">
            <asp:Label ID="lblEmail" runat="server" Text="Email Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 208px">
            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem>Choose Anyone</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="height: 25px; width: 208px">
            <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="287px"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="height: 25px; width: 208px">
            <asp:Label ID="lblCourseId" runat="server" Text="Course ID"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtCourseId" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 208px">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkAgree" runat="server" Text="Yes ,I am Agree" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 208px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="height: 37px; width: 208px">
            <asp:Label ID="lblTid" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            &nbsp;
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            &nbsp;
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 208px">&nbsp;</td>
        <td>
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel Operation" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>


