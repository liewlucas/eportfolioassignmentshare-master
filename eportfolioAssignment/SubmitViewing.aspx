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
            <td class="auto-style2">How May We Address You? </td>
            <td>
                <asp:DropDownList ID="ddlPDesignation" runat="server">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                    <asp:ListItem>Mdm</asp:ListItem>
                    <asp:ListItem>Dr</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtPName" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtChildStdID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Child&#39;s Field of Study/Course : </td>
            <td>
                <asp:DropDownList ID="ddlChildCourse" runat="server">
                    <asp:ListItem>Financial Informatics</asp:ListItem>
                    <asp:ListItem>Information Security and Forensics</asp:ListItem>
                    <asp:ListItem>Information Technology</asp:ListItem>
                    <asp:ListItem>Animation and 3D Art</asp:ListItem>
                    <asp:ListItem>Immersive Game and Media Design</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Child&#39;s Class of Study </td>
            <td>
                <asp:DropDownList ID="ddlChildClass" runat="server">
                    <asp:ListItem>FI01</asp:ListItem>
                    <asp:ListItem>FI02</asp:ListItem>
                    <asp:ListItem>FI03</asp:ListItem>
                    <asp:ListItem>ISF01</asp:ListItem>
                    <asp:ListItem>ISF02</asp:ListItem>
                    <asp:ListItem>ISF03</asp:ListItem>
                    <asp:ListItem>IT01</asp:ListItem>
                    <asp:ListItem>IT02</asp:ListItem>
                    <asp:ListItem>IT03</asp:ListItem>
                    <asp:ListItem>A3DA01</asp:ListItem>
                    <asp:ListItem>A3DA02</asp:ListItem>
                    <asp:ListItem>A3DA03</asp:ListItem>
                    <asp:ListItem>IMGD01</asp:ListItem>
                    <asp:ListItem>IMGD02</asp:ListItem>
                    <asp:ListItem>IMGD03</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmitViewingRequest" runat="server" Text="Submit" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
