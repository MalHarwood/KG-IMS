<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="RiggingAndElectrical.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="sort" runat="server"/>

    <asp:Label ID="sort_dir" runat="server"/>
    <asp:GridView ID="GridView1" AllowSorting="true" AutoGenerateColumns="True" OnSorting="GridView_Sorting"
      runat="server">
    </asp:GridView>

</asp:Content>
