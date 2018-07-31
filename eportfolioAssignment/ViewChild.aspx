<%@ Page Title="" Language="C#" MasterPageFile="~/ParentTemplate.Master" AutoEventWireup="true" CodeBehind="ViewChild.aspx.cs" Inherits="eportfolioAssignment.ViewChild" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 301px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">
                <asp:Image ID="Image1" runat="server" ImageUrl="Images/person.jpg" />
            </td>
            <td>
                <table cellpadding="0" cellspacing="0" class="w-100">
                    <tr>
                        <td>Welcome! Here is the ePortfolio Created by Your Child ! </td>
                    </tr>
                    <tr>
                        <td>Student Name : <asp:Label ID="lblStudentName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Student ID :
                            <asp:Label ID="lblStudentID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>School :
                            <asp:Label ID="lblStudentSch" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Course :
                            <asp:Label ID="lblStudentCourse" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Description : </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStudentDescription" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
