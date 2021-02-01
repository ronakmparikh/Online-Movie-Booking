<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="Userlogin.aspx.cs" Inherits="Userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 454px" class="col_w300">
                </td>
            <td style="width: 98px">
                &nbsp;</td>
            <td>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 454px" class="col_w300">
                &nbsp;</td>
            <td style="width: 98px">
&nbsp;Email Id :</td>
            <td>
<asp:TextBox ID="txtusername" runat="server" Height="22px" Width="148px" 
                    ontextchanged="txtusername_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 454px" class="col_w300">
                &nbsp;</td>
            <td style="width: 98px">
&nbsp;Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
<asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Height="23px" Width="147px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 454px" class="col_w300">
                &nbsp;</td>
            <td style="width: 98px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 454px" class="col_w300">
                &nbsp;</td>
            <td style="width: 98px">
                &nbsp;</td>
            <td>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
            </td>
        </tr>
    </table>
</asp:Content>

