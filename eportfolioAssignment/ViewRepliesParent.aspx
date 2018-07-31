<%@ Page Title="" Language="C#" MasterPageFile="~/ParentTemplate.Master" AutoEventWireup="true" CodeBehind="ViewRepliesParent.aspx.cs" Inherits="eportfolioAssignment.ViewRepliesParent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 367px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Welcome! This is Currently A Live Chat and Reply From Your Child&#39;s Lecturer! </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="569px" ImageUrl="Images/chatbox.PNG" Width="552px" />
            </td>
        </tr>
    </table>
</asp:Content>
