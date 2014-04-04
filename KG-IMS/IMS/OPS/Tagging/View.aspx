<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="KG_IMS.IMS.OPS.Tagging.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="sort" runat="server"/>

    <asp:Label ID="sort_dir" runat="server"/>
    <asp:GridView ID="GridView1" AllowSorting="True" AutoGenerateColumns="False" OnSorting="GridView_Sorting"
      runat="server" AllowPaging="True" DataKeyNames="EquipGUID" >
        <Columns>
            <asp:TemplateField HeaderText="EquipGUID" Visible="false">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("EquipGUID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("EquipGUID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="KGID" SortExpression="KGID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("KGID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("KGID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="Category">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location" SortExpression="Location">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SerialNumber" SortExpression="SerialNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SerialNumber") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("SerialNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Supplier" SortExpression="Supplier">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Supplier") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Supplier") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PurchasePrice" SortExpression="PurchasePrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("PurchasePrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("PurchasePrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Certificate" Visible="false">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Certificate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Certificate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="InService" SortExpression="InService">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("InService") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("InService") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PurchaseDate" SortExpression="PurchaseDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PurchaseDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("PurchaseDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type" SortExpression="Type" Visible="false">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ChangedBy" SortExpression="ChangedBy">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("ChangedBy") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("ChangedBy") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ChangedOn" SortExpression="ChangedOn">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("ChangedOn") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("ChangedOn") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TagIsCurrent" SortExpression="TagIsCurrent">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("TagIsCurrent") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("TagIsCurrent") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KG_IMSConnectionString %>" SelectCommand="SELECT * FROM [v_OPS_T_Equipment]"></asp:SqlDataSource>

</asp:Content>
