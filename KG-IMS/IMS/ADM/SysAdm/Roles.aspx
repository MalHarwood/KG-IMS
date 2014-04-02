<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="KG_IMS.IMS.ADM.SysAdm_Roles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GUID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="GUID" HeaderText="GUID" ReadOnly="True" SortExpression="GUID" />
            <asp:BoundField DataField="SecurityLevel" HeaderText="SecurityLevel" SortExpression="SecurityLevel" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ChangedBy" HeaderText="ChangedBy" SortExpression="ChangedBy" />
            <asp:BoundField DataField="ChangedOn" HeaderText="ChangedOn" SortExpression="ChangedOn" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KG_IMSConnectionString %>" SelectCommand="SELECT * FROM [s_SecurityLevels]"></asp:SqlDataSource>
</asp:Content>
