<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="AddVideo.aspx.cs" Inherits="AddVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td class="col_w300" style="width: 272px">
                &nbsp;</td>
            <td style="width: 215px">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 272px">
                &nbsp;</td>
            <td style="width: 215px">
                Movie Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 272px">
                &nbsp;</td>
            <td style="width: 215px">
                Which Movies Trailer:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    Height="18px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="171px" >
                    <asp:ListItem Value="Upcoming_movie_trailers">Upcoming Movie Trailers</asp:ListItem>
                    <asp:ListItem Value="Latest_movie_trailers">Latest Movie Trailers</asp:ListItem>
                    <asp:ListItem>Movie Trailers</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 272px">
                &nbsp;</td>
            <td style="width: 215px">
                Video:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 272px">
                &nbsp;</td>
            <td style="width: 215px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" style="height: 26px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

