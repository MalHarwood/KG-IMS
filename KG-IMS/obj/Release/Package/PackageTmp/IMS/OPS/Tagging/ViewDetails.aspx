<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="RiggingAndElectrical.ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table runat="server" Width="100%">
        <asp:TableRow>
            <asp:TableCell Width="50%">
                <asp:Table runat="server" Width="100%">
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >ID</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Description</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Category</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Location</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Serial Number</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Supplier</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Purchase Price</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Purchase Date</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Service Status</label>
                        </asp:TableCell>
                        <asp:TableCell>

                            <asp:RadioButtonList ID="rblMeasurementSystem" runat="server">
                                <asp:ListItem Text="In Service" Value="metric" />
                                <asp:ListItem Text="Out of Service" Value="us" />
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            <label >Certificate</label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell Width="20%" HorizontalAlign="Right">
                            
                        </asp:TableCell>
                        <asp:TableCell>
                            <label >ITEM REQUIRES INSPECTION</label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
            <asp:TableCell>
                SERVICE / INSPECTION RECORD<br />
                <asp:GridView ID="GridView1" AutoGenerateColumns="True" 
                    runat="server">
                </asp:GridView>

            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
