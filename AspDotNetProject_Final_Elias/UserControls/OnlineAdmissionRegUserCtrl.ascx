<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OnlineAdmissionRegUserCtrl.ascx.cs" Inherits="AspDotNetProject_Final_Elias.UserControls.OnlineAdmissionRegUserCtrl" %>
<style type="text/css">


    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        text-align: left;
    }
    .auto-style2 {
        width: 287px;
    }
    .auto-style4 {
        width: 297px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td class="auto-style3" colspan="3"><strong>
            <asp:Label ID="lblTitle" runat="server" Text="Trainee Registration"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblCustName" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtName" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:DropDownList ID="ddlGender" runat="server" Height="16px" Width="130px">
                <asp:ListItem Value="0">Choose Any</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="ddlGender" ErrorMessage="Pick a Valid Gender value [Male,Female or Others]" InitialValue="0">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Format Is Not Valid!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblDOB" runat="server" Text="Birth Date"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of birth Should be in Between 1950-2020" MaximumValue="12/12/2020" MinimumValue="01/01/1950" Type="Date">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblMobile" runat="server" Text="Mobile No"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtMobile" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile Number Is Required">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtAddress" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Is Required!">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Is Required!">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidatorConfirmPass" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ErrorMessage="Password Not Matched!">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I Agree!" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

