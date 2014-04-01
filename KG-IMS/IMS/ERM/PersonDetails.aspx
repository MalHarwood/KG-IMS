<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonDetails.aspx.cs" Inherits="KG_IMS.IMS.HSE.PersonDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<input id="hdnCeased" type="hidden" value="" runat="server" name="hdnCeased" />

    <div class="pageTitleArea">
        <span class="pageTitle">Personal Profile</span>
    </div>
    <span class="error" id="lblDeleteStatus" runat="server"></span>

    <table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tr>
            <td valign="top">
            </td>
        </tr>
    </table>
    <div id="toolbar">
        <asp:ImageButton ID="btnSave" runat="server" CssClass="toolbarButton" AlternateText="Save" OnClick="btnSave_Click" ImageUrl="~/Images/btn_save.gif" />
        <asp:ImageButton id="btnCopy" runat="server" CssClass="toolbarButton" AlternateText="Copy" Visible="False" onclick="btnCopy_Click" ImageUrl="~/Images/btn_copy.gif" />
        <asp:ImageButton ID="btnDelete" runat="server" Visible="False" CssClass="toolbarButton" AlternateText="Delete" OnClick="btnDelete_Click" ImageUrl="~/Images/btn_delete.gif" />
        <input id="txtPersonGUID" type="hidden" name="txtPersonGUID" runat="server"><input id="txtPhotoID" type="hidden" name="txtPhotoID" runat="server">
        <asp:Label ID="lblStatus" runat="server" CssClass="error" />
    </div>
    <table class="groupbox" id="Table1" cellspacing="5" cellpadding="0" width="100%"
        border="0">
        <tr>
            <td class="label" width="200">
                Active:
            </td>
            <td>
                <asp:CheckBox ID="chkActive" runat="server" Checked="True"></asp:CheckBox>
            </td>
            <td class="label" width="80px">
                Home Port:
            </td>
            <td>
                <asp:DropDownList ID="lstPort" runat="server" CssClass="mandatory dirtiable" DataTextField="Title"
                    DataValueField="id" Width="99%">
                </asp:DropDownList>
                <span class="error" id="valPort" style="display: none"></span>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Salutation:
            </td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="dirtiable" MaxLength="20" Width="150px"></asp:TextBox>
            </td>
            <td class="label">Point of Hire:</td>
            <td><asp:DropDownList id="lstPOH" runat="server" DataValueField="ID" DataTextField="Title" CssClass="dirtiable" Width="99%"></asp:DropDownList><br>
                <span class="error" id="valPOH" style="DISPLAY: none" runat="server"></span>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                First Name:
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="dirtiable" MaxLength="50"
                    onchange="setLookupName()" Width="150px"></asp:TextBox>
            </td>
            <td class="label">
                Last Name:
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="dirtiable" MaxLength="100"
                    onchange="setLookupName()" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Lookup Name:
            </td>
            <td>
                <asp:TextBox ID="txtLookupName" runat="server" CssClass="mandatory dirtiable" MaxLength="50"
                    onchange="lookupNameOnChange()" Width="200px"></asp:TextBox><span class="error" id="valLookupName"
                        style="display: none"></span>
            </td>
            <td class="label">
                Network Username:
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="dirtiable" MaxLength="150" Width="150px"></asp:TextBox><br />
                <span class="error" id="valUsername" style="display: none"></span>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                :
            </td>
            <td class="label">
                Employment:
            </td>
            <td>
                <asp:DropDownList ID="lstEmployment" runat="server" DataTextField="Name" DataValueField="ID" Width="99%">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Employer:
            </td>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Supervisor:
            </td>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Employee ID:
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtEmployeeID" runat="server" CssClass="dirtiable" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Gender:
            </td>
            <td colspan="3">
                <asp:DropDownList ID="lstGender" runat="server" CssClass="mandatory dirtiable" DataTextField="Name"
                    DataValueField="ID">
                </asp:DropDownList>
                <br>
                <span class="error" id="valGender" style="display: none"></span>
            </td>
        </tr>
        <tr>
            <td class="label" style="height: 9px" width="200">
                Date of Birth:
            </td>
            <td style="height: 9px" colspan="3">
                <span class="error" id="valBirthDate" style="display: none"></span>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Date Commenced:
            </td>
            <td colspan="3">
                <span class="error" id="valCommenced" style="display: none"></span>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Date Ceased:
            </td>
            <td colspan="3">
                <span class="error" id="valCeased" style="display: none"></span>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                :
            </td>
            <td colspan="3">
                <asp:TextBox ID="txtMineHealthNumber" runat="server" CssClass="dirtiable" MaxLength="150"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="label" width="200">
                Company Level Consolidation:
            </td>
            <td colspan="3">
            </td>
            
        </tr>
    </table>
    <table class="groupbox" id="Table2" cellspacing="5" cellpadding="0" width="100%"
        bgcolor="#EFEFEF" border="0">
        <tr><td colspan="5" class="label"><strong>Work Contact Details</strong></td></tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="100px">
                Phone:
            </td>
            <td>
                <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="dirtiable" MaxLength="20" Width="200px"></asp:TextBox>
            </td>
            <td class="label" width="100px">
                Mobile:
            </td>
            <td align="right">
                <asp:TextBox ID="txtMobile" runat="server" CssClass="dirtiable" MaxLength="20" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="100px">
                Fax:
            </td>
            <td>
                <asp:TextBox ID="txtFax" runat="server" CssClass="dirtiable" MaxLength="20" Width="200px"></asp:TextBox>
            </td>
            <td class="label" width="100px">
                Onsite Contact:
            </td>
            <td align="right">
                <asp:TextBox ID="txtOnsiteContact" runat="server" CssClass="dirtiable" Width="200px"
                    MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="100px">
                Email Address:
            </td>
            <td colspan="3">
              <div style="padding: 0 6px 0 0;">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="dirtiable" Width="100%" MaxLength="200"></asp:TextBox>
              </div>  
            </td>
        </tr>
        <tr><td colspan="5" class="label"><strong>Emergency Contact Details</strong></td></tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="100px">
                Contact Name:
            </td>
            <td>
                <asp:TextBox ID="txtNextofKin" runat="server" CssClass="dirtiable" Width="200px" MaxLength="50"></asp:TextBox>
            </td>
            <td class="label" width="100">
                Emergency&nbsp;Phone:
            </td>
            <td align="right">
                <asp:TextBox ID="txtNextofKinPhone" runat="server" CssClass="dirtiable" Width="200px"
                    MaxLength="50"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="150px">
                Relationship:
            </td>
            <td colspan="3">
              <div style="padding: 0 6px 0 0;">
                <asp:TextBox ID="txtContactRelationship" runat="server" CssClass="dirtiable" MaxLength="200" Width="100%"></asp:TextBox>
              </div>
            </td>
        </tr>
        <tr><td colspan="5" class="label"><strong>Additional Contact Details</strong></td></tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="150px">
                Home Phone:
            </td>
            <td>
                <asp:TextBox ID="txtHomePhone" runat="server" CssClass="dirtiable" Width="200px" MaxLength="50"></asp:TextBox>
            </td>
            <td class="label" width="150px">
                Personal Mobile:
            </td>
            <td align="right">
                <asp:TextBox ID="txtPersonalMobile" runat="server" CssClass="dirtiable" Width="200px"
                    MaxLength="50"></asp:TextBox>
            </td>
         </tr>
         <tr>
            <td width="10px"></td>
            <td class="label" width="150px">
                Home Fax:
            </td>
            <td>
                <asp:TextBox ID="txtHomeFax" runat="server" CssClass="dirtiable" Width="200px"
                    MaxLength="50"></asp:TextBox>
            </td>
            <td class="label" width="150px">
                Offsite Contact:
            </td>
            <td align="right">
                <asp:TextBox ID="txtOffsiteContact" runat="server" CssClass="dirtiable" Width="200px"
                    MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="150px">
                Street Name:
            </td>
            <td colspan="3">
              <div style="padding: 0 6px 0 0;">
                <asp:TextBox ID="txtAddressStreetName" runat="server" CssClass="dirtiable" Width="100%"
                    MaxLength="500"></asp:TextBox>
              </div>      
            </td>
        </tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="150px">
                Suburb:
            </td>
            <td>
                <asp:TextBox ID="txtAddressSuburb" runat="server" CssClass="dirtiable" Width="200px"
                    MaxLength="500"></asp:TextBox>
                    </td><td align="left">
            <span class="label">State:&nbsp;&nbsp;</span><asp:TextBox ID="txtAddressState" runat="server" CssClass="dirtiable" Width="75px"
                    MaxLength="200"></asp:TextBox>
                    </td>
                    <td align="right">
            <span class="label">&nbsp;Post Code:&nbsp;&nbsp;</span><asp:TextBox ID="txtAddressPostCode" runat="server" CssClass="dirtiable" Width="75px"
                    MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr><td colspan="5" class="label"><strong>Personal Settings</strong></td></tr>
        <tr>
            <td width="10px"></td>
            <td class="label" width="150">
                Default Company Level:
            </td>
            <td>
            </td>
            <td class="label">
                Action Notice Period:
            </td>
            <td align="right">
                <asp:TextBox ID="txtActionNoticePeriod" runat="server" CssClass="numericField" MaxLength="4" Width="200px"></asp:TextBox>
            </td>
        </tr>
     </table>
    <table class="groupbox" id="Table5" cellspacing="5" cellpadding="0" width="100%"
        border="0">
        <tr id="rowComments" runat="server" visible="false">
            <td colspan="5">
            <div style="padding: 0 6px 0 0;">
                <p>
                    <b>Comments</b>                    
                    <asp:TextBox ID="txtComments" runat="server" CssClass="textField" Width="100%" TextMode="MultiLine"
                        Rows="7"></asp:TextBox>
                    
                    </p>
             </div>       
            </td>
        </tr>
    </table>
</asp:Content>
