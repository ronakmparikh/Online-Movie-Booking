<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Reportbetweendatewise.aspx.cs" Inherits="Reportdate" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
        <table style="width:100%;">
            <tr>
                <td style="width: 282px">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 282px">
                    &nbsp;</td>
                <td style="width: 108px">
                    Select First Date :</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                            <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox1">
                            </cc1:CalendarExtender>
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 282px">
                    &nbsp;</td>
                <td style="width: 108px">
                    Select Last Date :</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" 
                                ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                            <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                                Enabled="True" TargetControlID="TextBox2">
                            </cc1:CalendarExtender>
                            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 282px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" BackColor="Gray" BorderColor="Black" 
                            ForeColor="White" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 282px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 282px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 282px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="5">
   
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" />
    
                </td>
            </tr>
        </table>
   
    </asp:Content>

