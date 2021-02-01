<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="scrupdate.aspx.cs" Inherits="scrupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 338px">
                &nbsp;</td>
            <td style="width: 133px">
                Movie Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="144px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 338px">
                &nbsp;</td>
            <td style="width: 133px">
                Image Name:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="246px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 338px">
                &nbsp;</td>
            <td style="width: 133px">
                Screen Name:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="146px">
                    <asp:ListItem>Screen_1</asp:ListItem>
                    <asp:ListItem>Screen_2</asp:ListItem>
                    <asp:ListItem>Screen_3</asp:ListItem>
                    <asp:ListItem>Screen_4</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 338px">
                &nbsp;</td>
            <td style="width: 133px">
                Timing:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>07:00 am to 10:00 am</asp:ListItem>
                    <asp:ListItem>10:15 am to 01:15 pm</asp:ListItem>
                    <asp:ListItem>01:30 pm to 04:30 pm</asp:ListItem>
                    <asp:ListItem>04:45 pm to 07:45 pm</asp:ListItem>
                    <asp:ListItem>08:00 pm to 11:00 pm</asp:ListItem>
                    <asp:ListItem>11:15 pm to 2:00 am</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 338px">
                &nbsp;</td>
            <td style="width: 133px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 338px">
                &nbsp;</td>
            <td style="width: 133px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

