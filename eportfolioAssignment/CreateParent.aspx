<%@ Page Title="" Language="C#" MasterPageFile="~/loginTemplate.Master" AutoEventWireup="true" CodeBehind="CreateParent.aspx.cs" Inherits="eportfolioAssignment.CreateParent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td><em><strong>Create Parent Account </strong></em></td>
        </tr>
        <tr>
            <td class="auto-style2">Name </td>
            <td>
                <asp:TextBox ID="txtParentName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvParentName" runat="server" ControlToValidate="txtParentName" ErrorMessage="Please Enter your Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email Address</td>
            <td>
                <asp:TextBox ID="txtParentEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvParentEmail" runat="server" ControlToValidate="txtParentEmail" ErrorMessage="Please Enter your Email "></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revParentEmail" runat="server" ErrorMessage="Please Specify a Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtParentEmail"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password</td>
            <td>
                <asp:TextBox ID="txtParentPassword" runat="server"></asp:TextBox>
                <asp:Label ID="lblParentPass" runat="server" Text="Please Enter Your Designated Password"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmitCreateParent" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="lblConfirmed" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
