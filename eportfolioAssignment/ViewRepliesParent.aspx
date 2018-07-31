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
            <td class="auto-style2">Welcome! These are the Replies from your Child&#39;s Mentor!</td>
            <td>
                <asp:GridView ID="gvMentorReply" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="Text" HeaderText="Mentor Reply" />
                        <asp:BoundField DataField="DateTimePosted" HeaderText="Time and Date" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <br />
                <asp:TextBox ID="txtParentReply" runat="server" Height="138px" Width="368px"></asp:TextBox>
                <br />
                <asp:Button ID="rplyParent" runat="server" OnClick="rplyParent_Click" Text="Reply" />
                <asp:Label ID="lblConfirmMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
