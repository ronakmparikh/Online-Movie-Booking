<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Reportcategorywise.aspx.cs" Inherits="Reportticketwise" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width:100%;">
        <tr>
            <td class="col_w300" style="width: 319px">
                &nbsp;</td>
            <td class="col_w300" style="width: 123px">
                &nbsp;</td>
            <td style="width: 72px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 319px">
                &nbsp;</td>
            <td class="col_w300" style="width: 123px">
    <span style="font-size: larger">Select Category : </span>
            </td>
            <td style="width: 72px">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="63px">
        <asp:ListItem>Gold</asp:ListItem>
        <asp:ListItem>Club</asp:ListItem>
        <asp:ListItem>Silver</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>
    <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
        Text="Show" Width="62px" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    <p>
    <br />
</p>
</asp:Content>

