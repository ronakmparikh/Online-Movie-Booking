<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Reportscreenwise.aspx.cs" Inherits="Reportscreenwise" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width:100%;">
        <tr>
            <td style="width: 344px">
                &nbsp;</td>
            <td style="width: 127px">
                &nbsp;</td>
            <td style="width: 86px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 344px">
                &nbsp;</td>
            <td style="width: 127px">
    <span style="font-size: large">Select Screen : </span>
            </td>
            <td style="width: 86px">
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="1">Screen_1</asp:ListItem>
        <asp:ListItem Value="2">Screen_2</asp:ListItem>
        <asp:ListItem Value="3">Screen_3</asp:ListItem>
        <asp:ListItem Value="4">Screen_4</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" 
        Height="22px" Width="52px" BackColor="Gray" BorderColor="Black" ForeColor="White" />
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    <br />
    <p>
    <br />
</p>
</asp:Content>

