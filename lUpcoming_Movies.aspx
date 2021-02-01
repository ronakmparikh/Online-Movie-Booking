<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="lUpcoming_Movies.aspx.cs" Inherits="Upcoming_Miovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
          <asp:DataList OnItemCommand="hi" ID="DataList1" runat="server" 
            HorizontalAlign="Center" RepeatColumns="3" Width="852px">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            &nbsp;&nbsp;
                            <img alt=""  height="150" width='200' src='images/<%# Eval("imagename") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 56px; height: 22px">
                            &nbsp;</td>
                        <td style="width: 87px; height: 22px">
                            Movie Name :</td>
                        <td style="height: 22px">
                            <asp:Label ID="moviename" runat="server" Text='<%# Eval("moviename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 56px">
                            &nbsp;</td>
                        <td style="width: 87px">
                            Release Date :</td>
                        <td>
                            <asp:Label ID="lblreleasedate" runat="server" Text='<%# Eval("releasedate") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 56px">
                            &nbsp;</td>
                        <td style="width: 87px">
                            Short Desc :</td>
                        <td>
                            <asp:Label ID="lblshortdesc" runat="server" Text='<%# Eval("shortdesc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 87px" colspan="2">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btndetail" CommandName="lmoviedetail" 
                                CommandArgument='<%# Eval("movieid") %>' runat="server"  Text="Detail's" BackColor="Gray" 
                    BorderColor="Black" ForeColor="White"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 87px" colspan="2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
   
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

