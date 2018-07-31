<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="UpdateProject.aspx.cs" Inherits="eportfolioAssignment.UpdateProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Welcome,</td>
            <td>
                <asp:Label ID="updateProjectStudentID" runat="server" Text="StudentID"></asp:Label>
                , update project details below.</td>
        </tr>
        <tr>
            <td class="auto-style2">Choose Project:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="375px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Title:</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description:</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Project Poster:</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
&nbsp;(image here)</td>
        </tr>
        <tr>
            <td class="auto-style2">Project URL:</td>
            <td>Project URL</td>
        </tr>
        <tr>
            <td class="auto-style2">Update Details,</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Update Title:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Update Description:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="175px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Update Poster:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="375px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Update URL:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Add Reflection:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="175px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Remove Members:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="375px">
                    <asp:ListItem>Member 1</asp:ListItem>
                    <asp:ListItem>Member 2</asp:ListItem>
                    <asp:ListItem>Member 3</asp:ListItem>
                    <asp:ListItem>Member 4</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirmation:</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="(Selected Students)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Add Members:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>(e.g. 0001, 0002, 0003)</td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" Text="Update" />
</asp:Content>
