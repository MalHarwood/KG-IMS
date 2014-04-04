<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="KG_IMS.IMS.ADM.SysAdm_Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ShowFooter="true"
        OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
        DataKeyNames="ProjGUID">

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
                    <asp:ImageButton ID="btnInsertRecord" ImageUrl="~/Images/addnew.gif" ValidationGroup="ValgrpCust" runat="server" CommandName="Insert" />
               </FooterTemplate>
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
