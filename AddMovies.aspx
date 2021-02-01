<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="AddMovies.aspx.cs" Inherits="AddUpcimingMovies" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                TheatreName</td>
            <td>
                <asp:DropDownList ID="drptheater" runat="server" Height="16px" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Movie Name:</td>
            <td>
                <asp:TextBox ID="txtmovie" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Relese Date:</td>
            <td>
                <asp:TextBox ID="txtrelese" runat="server" Width="216px" ></asp:TextBox>
                <cc1:CalendarExtender ID="txtrelese_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtrelese">
                </cc1:CalendarExtender>
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
                <asp:DropDownList ID="drptime" runat="server" Height="16px" Width="217px">
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
                <asp:DropDownList ID="drpscreen" runat="server" Height="16px" Width="216px">
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
                <asp:DropDownList ID="drpcat" runat="server" Width="216px" 
                    >
                    <asp:ListItem>Hollywood</asp:ListItem>
                    <asp:ListItem>Bollywood</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Image Name:</td>
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
                Short Desc:</td>
            <td>
                <asp:TextBox ID="txtshrt" runat="server" Width="217px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                Long Desc:</td>
            <td>
                <asp:TextBox ID="txtlong" runat="server" Width="216px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                CityName</td>
            <td>
                <asp:DropDownList ID="drpcity" runat="server" Width="216px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" onclick="Button2_Click"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
                &nbsp;</td>
            <td style="width: 126px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

