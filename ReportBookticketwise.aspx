<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="ReportBookticketwise.aspx.cs" Inherits="ReportBookticketwise" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <table style="width:100%;">
        <tr>
            <td style="width: 282px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 84px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">
                &nbsp;</td>
            <td style="width: 127px">
    <span style="font-size: larger">Select Category : </span>
            </td>
            <td style="width: 84px">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Book</asp:ListItem>
        <asp:ListItem>Unbook</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>
    <asp:Button ID="Button1" runat="server" Height="21px" onclick="Button1_Click" 
        Text="Show" Width="59px" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                </asp:UpdateProgress>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    <p>
    <br />
</p>
</asp:Content>

