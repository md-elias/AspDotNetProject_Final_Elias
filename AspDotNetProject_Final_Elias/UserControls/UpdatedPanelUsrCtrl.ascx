<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UpdatedPanelUsrCtrl.ascx.cs" Inherits="AspDotNetProject_Final_Elias.UserControls.UpdatedPanelUsrCtrl" %>
<p>
    List of existing Course</p>
<p>
    &nbsp;</p>
<p>
    Course Name
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource2">

            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                <asp:BoundField DataField="CourseDuration" HeaderText="CourseDuration" SortExpression="CourseDuration" />
                <asp:BoundField DataField="CoursePrice" HeaderText="CoursePrice" SortExpression="CoursePrice" />
            </Columns>

        </asp:GridView>
        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>--%>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = @original_CourseID AND [CourseName]=@original_CourseName AND [CourseDuration]=@original_CourseDuration AND [CoursePrice]=@CoursePrice" InsertCommand="INSERT INTO [Course] ([CourseName], [CourseDuration], [CoursePrice]) VALUES (@CourseName, @CourseDuration, @CoursePrice)" SelectCommand="SELECT * FROM [Course] WHERE [CourseID] = @CourseID" UpdateCommand="UPDATE [Course] SET [CourseName] = @CourseName, [CourseDuration] = @CourseDuration, [CoursePrice] = @CoursePrice WHERE [CourseID] = @original_CourseID AND [CourseName]=@original_CourseName AND [CourseDuration]=@original_CourseDuration AND [CoursePrice]=@original_CoursePrice ">

                <DeleteParameters>
                    <asp:Parameter Name="original_CourseID" Type="Int32" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_CourseDuration" Type="String" />
                    <asp:Parameter Name="original_CoursePrice" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseName" Type="String" /> 
                    <asp:Parameter Name="CourseDuration" Type="String" />
                    <asp:Parameter Name="CoursePrice" Type="Int32" />
                </InsertParameters>

                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CourseID" PropertyName="SelectedValue" Type="Int32" />
                                                                                                                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="CourseDuration" Type="String" />
                    <asp:Parameter Name="CoursePrice" Type="Int32" />


                    <asp:Parameter Name="original_CourseID" Type="Int32" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_CourseDuration" Type="String" />
                    <asp:Parameter Name="original_CoursePrice" Type="Int32" />

                    
                </UpdateParameters>
            </asp:SqlDataSource>
    </ContentTemplate>
</asp:UpdatePanel>



