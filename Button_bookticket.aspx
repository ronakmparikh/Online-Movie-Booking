<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Button_bookticket.aspx.cs" Inherits="Button_bookticket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="col_w300" style="width: 354px">
                &nbsp;</td>
            <td style="width: 141px">
                Movie Name :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="movienamedirct" DataTextField="moviename" 
                    DataValueField="moviename">
                </asp:DropDownList>
                <asp:SqlDataSource ID="movienamedirct" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:movieconn %>" 
                    SelectCommand="SELECT [moviename] FROM [Screen_managment] WHERE ([screenname] = @screenname)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Screen_1" Name="screenname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 354px">
                &nbsp;</td>
            <td style="width: 141px">
                Show Timing :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="databounddirect" DataTextField="timing" DataValueField="timing">
                </asp:DropDownList>
                <asp:SqlDataSource ID="databounddirect" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:movieconn %>" 
                    SelectCommand="SELECT [timing] FROM [Screen_managment] WHERE ([screenname] = @screenname)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Screen_1" Name="screenname" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 354px">
                &nbsp;</td>
            <td style="width: 141px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Book" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="col_w300" style="width: 354px">
                &nbsp;</td>
            <td style="width: 141px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

