<%@ Page Title="" Language="C#" MasterPageFile="~/ParentTemplate.Master" AutoEventWireup="true" CodeBehind="SubmitViewing.aspx.cs" Inherits="eportfolioAssignment.SubmitViewing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 314px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblWelcomeMessage" runat="server" Text="Welcome! To Submit Viewing Request for your Child's ePortfolio, Please Fill in the Form Below. Thank You!  "></asp:Label>
    <br />
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Parent ID </td>
            <td>
                <asp:TextBox ID="txtPName" runat="server" OnTextChanged="txtPName_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Child&#39;s Full Name : </td>
            <td>
                <asp:TextBox ID="txtChildName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Child&#39;s Student ID :</td>
            <td>
                <asp:TextBox ID="txtChildStdID" runat="server" OnTextChanged="txtChildStdID_TextChanged"></asp:TextBox>
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
                <asp:Button ID="btnSubmitViewingRequest" runat="server" Text="Submit" OnClick="btnSubmitViewingRequest_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="lblConfirmation" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
