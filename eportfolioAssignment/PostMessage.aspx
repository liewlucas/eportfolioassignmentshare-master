<%@ Page Title="" Language="C#" MasterPageFile="~/ParentTemplate.Master" AutoEventWireup="true" CodeBehind="PostMessage.aspx.cs" Inherits="eportfolioAssignment.PostMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            width: 570px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">
        <strong>Mentor Enquiry</strong></p>
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style3">Title : </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtParentPMTitle" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">What Message Would You Like to Send To Your Child&#39;s&nbsp; Mentor ? </td>
            <td>Mentor&#39;s Name :
                <asp:Label ID="lblMentorName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtParentMsg" runat="server" Height="236px" Width="630px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                <asp:Label ID="lblSuccessMsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
