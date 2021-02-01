<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="UpdateMovie.aspx.cs" Inherits="UpdateMovie" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2" style="border-spacing: inherit">
                <asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" rowspan="1" style="border-spacing: inherit">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td>
                Moviename:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td>
                releasedate:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox2">
                </cc1:CalendarExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td>
                imagename:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Timeing:</td>
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
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Screen no.</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
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
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Categories:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    >
                    <asp:ListItem>Hollywood</asp:ListItem>
                    <asp:ListItem>Bollywood</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td>
                shortdesc:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td>
                longdesc:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

