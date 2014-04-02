<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="KG_IMS.IMS.ADM.SysAdm_Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
        AllowPaging="True" AllowSorting="False" AutoGenerateColumns="False" DataKeyNames="ProjGUID"
        Font-Names="Verdana" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ShowFooter="true">
        <FooterStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />

        <PagerStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />

        <HeaderStyle Height="30px" BackColor="#FF9E66" Font-Size="15px" BorderColor="#CCCCCC"
            BorderStyle="Solid" BorderWidth="1px" />

        <RowStyle Height="20px" Font-Size="13px" BorderColor="#CCCCCC" BorderStyle="Solid"
            BorderWidth="1px" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="btEditarGrid" ImageUrl="~/Images/edit.gif" CommandName="Edit" runat="server" AlternateText="Edit Record" />

                    <span onclick="return confirm('Are you sure want to delete?')">
                        <asp:ImageButton ID="btnDelete" AlternateText="Delete Record" runat="server" CommandName="Delete" ImageUrl="~/Images/delete.gif" />
                    </span>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="btnUpdate" CausesValidation="True" runat="server" CommandName="Update" ImageUrl="~/Images/ok.gif" />
                    &nbsp;<asp:ImageButton ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/Images/not_ok.gif" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton ID="btnInsertRecord" ImageUrl="~/Images/addnew.gif" ValidationGroup="ValgrpCust" runat="server" CommandName="Insert" />
                </FooterTemplate>
                <HeaderStyle></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProjGUID" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblProjGUID" runat="server" Text='<%#Eval("ProjGUID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbladd" runat="server"></asp:Label>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Project Name">
                <ItemTemplate>
                    <asp:Label ID="lblProjectName" runat="server" Text='<%#Eval("ProjectName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtProjectName" runat="server" Text='<%#Eval("ProjectName") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddProjectName" runat="server" Width="75%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqProjectName" ValidationGroup="ValgrpProjectName" ControlToValidate="txtAddProjectName" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
                <HeaderStyle></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Project Number">
                <ItemTemplate>
                    <asp:Label ID="lblProjectNumber" runat="server" Text='<%#Eval("ProjectNumber") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtProjectNumber" runat="server" Text='<%#Eval("ProjectNumber") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtProjectNumber" runat="server" Width="75%"></asp:TextBox>
                </FooterTemplate>
                <HeaderStyle></HeaderStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Label ID="lblDescription" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtDescription" runat="server" Text='<%#Eval("Description") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAddDescription" runat="server" Width="75%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqtxtDescription" ValidationGroup="ValgrptxtDescription" ControlToValidate="txtAddDescription" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </FooterTemplate>
                <HeaderStyle></HeaderStyle>
            </asp:TemplateField>

            <asp:BoundField DataField="Client" HeaderText="Client" SortExpression="Client" />
            <asp:BoundField DataField="ClientProject" HeaderText="Client Project" SortExpression="ClientProject" />
            <asp:BoundField DataField="LocationGUID" HeaderText="LocationGUID" SortExpression="LocationGUID" />
            <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDatePlanned" HeaderText="Planned End Date" SortExpression="EndDatePlanned" />
            <asp:BoundField DataField="EndDateActual" HeaderText="Actual End Date" SortExpression="EndDateActual" />
            <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
        </Columns>

    </asp:GridView>


</asp:Content>
