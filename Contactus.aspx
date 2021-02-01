<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 406px; " rowspan="6">
            </td>
            <td style="height: 33px" align="center" colspan="4">
                <img alt="" src="images/feedback-icon.png" /></td>
            <td class="h60" rowspan="6">
            </td>
        </tr>
        <tr>
            <td style="width: 801px; height: 19px">
            </td>
            <td style="width: 280px; height: 19px">
                &nbsp;</td>
            <td style="width: 1165px; height: 19px">
                <asp:Label ID="desc" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="h60" style="width: 397px; height: 19px;">

            </td>
        </tr>
        <tr>
            <td style="width: 801px; height: 20px">
            </td>
            <td style="width: 280px; height: 20px">
                Sub :</td>
            <td style="width: 1165px; height: 20px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="h60" style="width: 397px; height: 20px;">

            </td>
        </tr>
        <tr>
            <td style="width: 801px; height: 20px">
            </td>
            <td style="width: 280px; height: 20px">
                Desc :</td>
            <td style="width: 1165px; height: 20px">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="h60" style="width: 397px;" rowspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 801px; ">
            </td>
            <td style="width: 280px; " class="col_w300">
            </td>
            <td style="width: 1165px; ">
                <asp:Button ID="Button2" runat="server" Text="Submit" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" onclick="Button2_Click"/>
            </td>
        </tr>
        <tr>
            <td style="width: 801px; ">
            </td>
            <td style="width: 280px; " class="col_w300">
            </td>
            <td style="width: 1165px; ">
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td style="width: 1165px" colspan="3">
                &nbsp;</td>
            <td style="width: 397px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

