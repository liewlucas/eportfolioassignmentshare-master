<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="eportfolioAssignment.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 357px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Welcome,</td>
            <td>
                <asp:Label ID="studentID" runat="server" Text="StudentID"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="175px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Achievements:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="175px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Skill Sets:</td>
            <td>
                <asp:CheckBoxList ID="updateProfileSkillList" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>SkillSetName1</asp:ListItem>
                    <asp:ListItem>SkillSetName2</asp:ListItem>
                    <asp:ListItem>SkillSetName3</asp:ListItem>
                    <asp:ListItem>SkillSetName4</asp:ListItem>
                    <asp:ListItem>SkillSetName5</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
    </table>
    <asp:Button ID="updateProfileUpdate" runat="server" Text="Update" />
</asp:Content>
