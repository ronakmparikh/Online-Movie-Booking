<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="ViewDetail.aspx.cs" Inherits="ViewDetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="height: 240px" align="center">
&nbsp;<asp:Image ID="Image2" runat="server" align="center" Height="193px" Width="551px"/>
                </td>
            </tr>
            <tr>
                <td style="width: 348px">
                    &nbsp;</td>
                <td style="width: 193px" class="col_w200">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Movie Name :</td>
                <td>
        <asp:Label ID="moviename" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 348px">
                    &nbsp;</td>
                <td style="width: 193px" class="col_w200">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Release Date :</td>
                <td>
        <asp:Label ID="releasedate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 348px">
                    &nbsp;</td>
                <td style="width: 193px" class="col_w200">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Short desc :</td>
                <td>
        <asp:Label ID="shortdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 348px">
                    &nbsp;</td>
                <td style="width: 193px" class="col_w200">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Short Story of Movie&#39;s :</td>
                <td>
                    <asp:Label ID="longdesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Timing&nbsp;</td>
                <td>
                    <asp:Label ID="timing" runat="server"></asp:Label >
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="22px" Text="Book Ticket's" 
                        Width="176px" onclick="Button1_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" />
                </td>
            </tr>
        </table>
    
    <p>
&nbsp;Give Reviews :
        <asp:TextBox ID="txtreview" runat="server" Height="16px" 
            style="margin-bottom: 0px" TextMode="MultiLine" Width="380px"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Add" />
        <asp:Label ID="Labelreview" runat="server" Text="Label"></asp:Label>
    </p>
        <p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
    </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
</asp:Content>

