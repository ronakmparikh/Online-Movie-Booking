<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Book_Ticket.aspx.cs" Inherits="Book_Ticket" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table >
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 587px;">
                Theatre Name :
                <strong>
                <asp:Label ID="lbltheatre" runat="server" style="text-align: left"></asp:Label>
                </strong></td>
            <td class="col_w600" style="width: 781px; text-align: left">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 587px;">
                <strong>Movie Name:
                <asp:Label ID="lblMoviName" runat="server" style="text-align: left"></asp:Label>
                </strong>&nbsp;</td>
            <td class="col_w600" style="width: 781px; text-align: left">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 587px;">
                <strong>Date :<asp:Label ID="lblMoviesDate" runat="server"></asp:Label>
                </strong>
            </td>
            <td class="col_w600" style="width: 781px; text-align: left">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 587px;">
                <strong>Show Time:
                <asp:Label ID="lblShowtime" runat="server"></asp:Label>
                </strong>
            </td>
            <td class="col_w600" style="width: 781px; text-align: left">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left">
                &nbsp;</td>
            <td style="text-align: left; width: 587px;">
                <strong>Screen Name:<asp:Label ID="lblScreen" runat="server"></asp:Label>
                <asp:Label ID="lblSid" runat="server" 
                    style="color: #CCFF66; background-color: #9999FF" Visible="False"></asp:Label>
                </strong>
            </td>
            <td class="col_w600" style="width: 781px; text-align: left">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left; height: 37px;">
                </td>
            <td class="col_w600" style="text-align: left; height: 37px; width: 587px;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td class="h30">
                                    Select Category :
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        Height="25px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                        Width="99px">
                                        <asp:ListItem>Club</asp:ListItem>
                                        <asp:ListItem>Gold</asp:ListItem>
                                        <asp:ListItem>Silver</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Price :
                                    <asp:Label ID="lblSeatType" runat="server" Font-Size="Medium" 
                                        ForeColor="#CCFFFF"></asp:Label>
                                    </strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            Total No Of Seat&#39;s :
                                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                                Height="18px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                                                style="margin-bottom: 0px" Width="41px">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                                <asp:ListItem>13</asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            Total <strong>Rs.
                                            <asp:Label ID="lblRate" runat="server" ForeColor="#CCFFFF" 
                                                style="font-size: medium"></asp:Label>
                                            </strong>
                                            <br />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="col_w600" style="width: 781px; text-align: left; height: 37px;">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center; height: 37px;">
                </td>
        </tr>
        <tr>
            <td class="col_w600" style="width: 1519px; text-align: left; height: 37px;">
                &nbsp;</td>
            <td class="col_w600" style="text-align: left; height: 37px; width: 587px;">
                &nbsp;</td>
            <td class="col_w600" style="width: 781px; text-align: left; height: 37px;">
                &nbsp;</td>
            <td class="col_w600" style="width: 743px; text-align: center; height: 37px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; height: 17px;" colspan="4">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                    <ContentTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td align="right" style="font-size: xx-large; width: 234px">
                                    Club</td>
                                <td style="width: 807px">
                                    <asp:DataList ID="DataList7" runat="server" HorizontalAlign="Center" 
                                        onitemcommand="DataList1_ItemCommand" OnItemDataBound="Item_Bound" 
                                        RepeatColumns="10" RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("Seatid") %>' 
                                                Visible="False"></asp:Label>
                                            <br />
                                            <asp:LinkButton ID="L1" runat="server" BackColor="CornflowerBlue" 
                                                CommandArgument='<%# Eval("Seatid") %>' Height="26px" 
                                                Text='<%# Eval("Seatno") %>' Width="33px"></asp:LinkButton>
                                            &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Black" 
                                                Text='<%# Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 234px; font-size: xx-large">
                                    Gold</td>
                                <td style="width: 807px">
                                    <br />
                                    <asp:DataList ID="DataList5" runat="server" HorizontalAlign="Center" 
                                        onitemcommand="DataList2_ItemCommand" OnItemDataBound="Item_Bound1" 
                                        RepeatColumns="10" RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("Seatid") %>' 
                                                Visible="False"></asp:Label>
                                            <br />
                                            <asp:LinkButton ID="L3" runat="server" BackColor="CornflowerBlue" 
                                                CommandArgument='<%# Eval("Seatid") %>' Height="25px" 
                                                Text='<%# Eval("Seatno") %>' Width="33px"></asp:LinkButton>
                                            &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Black" 
                                                Text='<%# Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table style="width:100%;">
                            <tr>
                                <td align="right" style="width: 234px; font-size: xx-large">
                                    Silver</td>
                                <td style="width: 807px">
                                    <asp:DataList ID="DataList8" runat="server" HorizontalAlign="Center" 
                                        onitemcommand="DataList3_ItemCommand" OnItemDataBound="Item_Bound2" 
                                        RepeatColumns="15" RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("Seatid") %>' 
                                                Visible="False"></asp:Label>
                                            <br />
                                            <asp:LinkButton ID="L5" runat="server" BackColor="CornflowerBlue" 
                                                CommandArgument='<%# Eval("Seatid") %>' Height="25px" 
                                                Text='<%# Eval("Seatno") %>' Width="32px"></asp:LinkButton>
                                            &nbsp;<asp:Label ID="Label7" runat="server" ForeColor="Black" 
                                                Text='<%# Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                </td>
        </tr>
        <tr>
            <td class="col_w600" style="text-align: left; height: 37px;" align="center">
                &nbsp;</td>
            <td class="col_w600" style="text-align: left; height: 37px;" align="center">
                <asp:Button ID="Button1"  runat ="server"
                    Text="book ticket" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White" style="margin-left: 41px" 
                    onclick="Button1_Click"/>
        
                <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            <td class="col_w600" style="text-align: left; height: 37px;" align="center" 
                colspan="2">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

