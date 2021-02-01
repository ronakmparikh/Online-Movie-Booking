<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Reportmoviewise.aspx.cs" Inherits="Reportmoviewise" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width:100%;">
        <tr>
            <td style="width: 330px">
                &nbsp;</td>
            <td style="width: 104px">
&nbsp;<span style="font-size: larger">Select Movie :</span></td>
            <td style="width: 105px">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="moviename" 
        DataTextField="moviename" DataValueField="moviename" Height="23px" Width="155px">
    </asp:DropDownList>
            </td>
            <td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Show" 
        BackColor="Gray" BorderColor="Black" ForeColor="White" Height="21px"/>
            </td>
        </tr>
        <tr>
            <td style="width: 330px">
                &nbsp;</td>
            <td style="width: 104px">
                &nbsp;</td>
            <td style="width: 105px">
    <asp:SqlDataSource ID="moviename" runat="server" 
        ConnectionString="<%$ ConnectionStrings:movieconn %>" 
        SelectCommand="SELECT [moviename] FROM [Screen_managment] WHERE ([screenname] = @screenname)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Screen_1" Name="screenname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
        AutoDataBind="true" />
            </td>
        </tr>
    </table>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: larger"> </span>
    <br />
    <p>
    <br />
</p>
</asp:Content>

