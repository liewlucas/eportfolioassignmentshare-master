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
        <strong>Product Enquiry</strong></p>
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style3">Name : </td>
            <td>Parent Of : ( Child&#39;s Full Name) </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtParentPMName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtParentOf" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>Mentor&#39;s Name :
                <asp:Label ID="lblMentorName" runat="server" Text="Wee Nam Kee  "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">What Message Would You Like to Send To Your Child&#39;s&nbsp; Mentor ? </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtParentMsg" runat="server" Height="236px" Width="630px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
