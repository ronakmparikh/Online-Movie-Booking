<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="ViewDetailNew.aspx.cs" Inherits="ViewDetailNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
    
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="height: 240px" align="center">
&nbsp;<asp:Image ID="Image2" runat="server" align="center" Height="172px" Width="433px"/>
                </td>
            </tr>
            <tr>
                <td style="width: 279px">
                    &nbsp;</td>
                <td style="width: 214px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movie Name :</td>
                <td>
        <asp:Label ID="moviename" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 279px">
                    &nbsp;</td>
                <td style="width: 214px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Release Date :</td>
                <td>
        <asp:Label ID="releasedate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 279px">
                    &nbsp;</td>
                <td style="width: 214px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Short desc&nbsp; :</td>
                <td>
        <asp:Label ID="shortdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 279px">
                    &nbsp;</td>
                <td style="width: 214px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Short Story of Movie&#39;s :</td>
                <td>
                    <asp:Label ID="longdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 279px">
                    &nbsp;</td>
                <td style="width: 214px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Timing :&nbsp;</td>
                <td>
                    <asp:Label ID="timing" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 214px" colspan="2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="22px" Text="Click Here to Book Ticket" 
                        Width="176px" onclick="Button1_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                </td>
            </tr>
        </table>
    
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

