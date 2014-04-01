<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RiggingAndElectrical.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table ID="Table2" runat="server" Width="100%">
        <asp:TableHeaderRow>
            <asp:TableCell>RIGGING GEAR</asp:TableCell>
            <asp:TableCell>ELECTRICAL</asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="Button1" runat="server" Text="NEW ITEM / VIEW DETAILS" OnClick="Button1_Click"/>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="Button2" runat="server" Text="NEW ITEM / VIEW DETAILS" OnClick="Button2_Click" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="Button3" runat="server" Text="VIEW LIST" OnClick="Button3_Click" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="Button4" runat="server" Text="VIEW LIST" OnClick="Button4_Click" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="Button5" runat="server" Text="PRINT REGISTER" OnClick="Button5_Click" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="Button6" runat="server" Text="PRINT REGISTER" OnClick="Button6_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>
