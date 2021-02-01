<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Seat_management.aspx.cs" Inherits="Faculty_Seminar_Detail" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            width: 259px;
        }
        .style3
        {
            height: 40px;
        }
    </style>
   
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td style="text-align: right">
                    <a href="UpdateSeat_Master.aspx" 
                        
                        style="font-size: x-large; color: #AB3619; font-family: 'Arial Black'; text-decoration: underline blink; font-style: italic; text-align: right;">
                   Book - UnBook Seat</a><br /> </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 142px">
                    Select Theatre</td>
                <td>
                    <asp:DropDownList ID="drptheater" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 142px">
                    Select City</td>
                <td>
                    <asp:DropDownList ID="drpcity" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td style="width: 142px">
                    Screen Name</td>
                <td>
                    <asp:DropDownList ID="drpscreen" runat="server" Height="16px" Width="100px">
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
                <td style="width: 142px">
                    Type</td>
                <td>
                    <asp:DropDownList ID="drptype" runat="server" AutoPostBack="True" 
                        >
                        <asp:ListItem>Gold</asp:ListItem>
                        <asp:ListItem>Silver</asp:ListItem>
                        <asp:ListItem>Club</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td style="width: 142px">
                    Amount&nbsp;&nbsp;&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtamnt0" runat="server"></asp:TextBox>
                 </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 142px">
                    No. of Seat</td>
                <td>
                    <asp:TextBox ID="txtseat" runat="server"></asp:TextBox>
                    &nbsp;&nbsp; Enter Seat Block&nbsp;&nbsp;
                    <asp:TextBox ID="txtblock" runat="server" AutoPostBack="True" 
                        ontextchanged="txtblock_TextChanged" Width="41px"></asp:TextBox>
                    &nbsp; Ex. A &amp; B</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="abtadd" runat="server" onclick="abtadd_Click" Text="Submit" 
                        Width="61px" Enabled="False" />
                    &nbsp;
                    <asp:Button ID="btncanel" runat="server" Text="Reset" 
                        onclick="btncanel_Click" />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td  colspan="3" align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        DataKeyNames="Seatid" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        GridLines="Horizontal" >
                        <Columns>
                            <asp:BoundField DataField="Seatid" HeaderText="Seatid" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Seatid" />
                            <asp:BoundField DataField="TheatreId" HeaderText="TheatreId" 
                                SortExpression="TheatreId" />
                            <asp:BoundField DataField="CityId" HeaderText="CityId" 
                                SortExpression="CityId" />
                            <asp:BoundField DataField="Seatno" HeaderText="Seatno" 
                                SortExpression="Seatno" />
                            <asp:BoundField DataField="Screenname" HeaderText="Screenname" 
                                SortExpression="Screenname" />
                            <asp:BoundField DataField="Seattype" HeaderText="Seattype" 
                                SortExpression="Seattype" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="status" HeaderText="status" 
                                SortExpression="status" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:movieconn %>" 
                        SelectCommand="SELECT * FROM [Seat_Master]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 142px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

