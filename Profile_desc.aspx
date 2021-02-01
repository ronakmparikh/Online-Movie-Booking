<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Profile_desc.aspx.cs" Inherits="Update_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 100%;">
            <tr>
                <td style="height: 22px; width: 237px">
                    &nbsp;</td>
                <td style="height: 22px; width: 94px">
                    &nbsp;</td>
                <td style="height: 22px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 22px; " align="center" colspan="3">
                    <asp:Image ID="Image1" runat="server" height="254px" width='425px' 
                        BorderStyle="Solid" BorderWidth="5px" />
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 237px">
                </td>
                <td style="height: 22px; width: 94px">
                </td>
                <td style="height: 22px">
                </td>
            </tr>
            <tr>
                <td style="height: 22px; width: 237px">
                    &nbsp;</td>
                <td style="height: 22px; width: 94px">
                    Name :</td>
                <td style="height: 22px; width: 287px">
                    <asp:Label ID="lblname" runat="server"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td style="width: 237px">
                    &nbsp;</td>
                <td style="width: 94px">
                    Address :</td>
                <td style="width: 287px">
                    <asp:Label ID="lbladd" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 237px">
                    &nbsp;</td>
                <td style="width: 94px">
&nbsp;City :</td>
                <td style="width: 287px">
                    <asp:Label ID="lblcity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 237px; height: 26px;">
                    </td>
                <td style="width: 94px; height: 26px;">
                    Phoneno :</td>
                <td style="width: 287px; height: 26px;">
                    <asp:Label ID="lblphone" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 237px">
                    &nbsp;</td>
                <td style="width: 94px">
                    Birth Date :</td>
                <td style="width: 287px">
                    <asp:Label ID="lblbirthdate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 237px">
                    &nbsp;</td>
                <td style="width: 94px">
                    &nbsp;</td>
                <td style="width: 287px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 237px">
                    &nbsp;</td>
                <td style="width: 94px">
                    &nbsp;</td>
                <td style="width: 287px">
                    <asp:Button ID="Button1" runat="server" Height="24px" onclick="Button1_Click" 
                        Text="Edit" Width="121px" />
                </td>
            </tr>
        </table>
</asp:Content>

