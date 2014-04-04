<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WBS.aspx.cs" Inherits="KG_IMS.IMS.ADM.SysAdm_WBS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="ProjectSelector" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ProjectName" DataValueField="ProjGUID">

    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KG_IMSConnectionString %>" SelectCommand="SELECT [ProjGUID], [ProjectName], [ProjectNumber] FROM [s_Projects]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="True"
        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
        DataKeyNames="WBSGUID">

        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:ImageButton ID="btnUpdate" CausesValidation="True" runat="server" CommandName="Update" ImageUrl="~/Images/ok.gif" />
                    &nbsp;<asp:ImageButton ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/Images/not_ok.gif"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="btEditarGrid" ImageUrl="~/Images/edit.gif" CommandName="Edit" runat="server" AlternateText="Edit Record" />

                    <span onclick="return confirm('Are you sure want to delete?')">
                        <asp:ImageButton ID="btnDelete" AlternateText="Delete Record" runat="server" CommandName="Delete" ImageUrl="~/Images/delete.gif" />
                    </span>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton ID="btnInsertRecord" ImageUrl="~/Images/addnew.gif" ValidationGroup="Valgrp" runat="server" CommandName="Insert" />
               </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="WBSGUID" SortExpression="WBSGUID" Visible="False">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("WBSGUID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("WBSGUID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProjGUID" SortExpression="ProjGUID" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProjGUID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProjGUID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Level" SortExpression="Level">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Level") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Level") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddLevel" runat="server" Width="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqLevel" ValidationGroup="Valgrp" ControlToValidate="txtAddLevel" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SortOrder" SortExpression="SortOrder">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SortOrder") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("SortOrder") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddSortOrder" runat="server" Width="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqSortOrder" ValidationGroup="Valgrp" ControlToValidate="txtAddSortOrder" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddDescription" runat="server" Width="80%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqDescription" ValidationGroup="Valgrp" ControlToValidate="txtAddDescription" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Start Date" SortExpression="StartDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("StartDate", "{0:dd-MMM-yy}") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("StartDate", "{0:dd-MMM-yy}") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddStartDate" runat="server" Width="80%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqStartDate" ValidationGroup="Valgrp" ControlToValidate="txtAddStartDate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Due Date" SortExpression="DueDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("DueDate", "{0:dd-MMM-yy}") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("DueDate", "{0:dd-MMM-yy}") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddDueDate" runat="server" Width="80%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqDueDate" ValidationGroup="Valgrp" ControlToValidate="txtAddDueDate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Completed Date" SortExpression="CompletedDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("CompletedDate", "{0:dd-MMM-yy}") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("CompletedDate", "{0:dd-MMM-yy}") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddCompletedDate" runat="server" Width="80%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqCompletedDate" ValidationGroup="Valgrp" ControlToValidate="txtAddCompletedDate" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>
