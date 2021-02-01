<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    &nbsp;<table style="width:100%;">
        <tr>
            <td style="width: 326px">
                &nbsp;</td>
            <td>
                <h1>Reports........</h1>
            </td>
            <td style="width: 296px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 326px">
                &nbsp;</td>
            <td>
  <a href="Reportdatewise.aspx"><h2>1.Datewise</h2></a>
  </td>
            <td style="width: 296px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 326px">
                &nbsp;</td>
            <td>
                <a href="Reportbetweendatewise.aspx"><h2>2.Between Date wise ticket</h2></a></td>
            <td style="width: 296px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 326px">
                &nbsp;</td>
            <td>
    <a href="Reportscreenwise.aspx"><h2>3.Screen wise</h2></a></td>
            <td style="width: 296px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 326px; height: 47px;">
                </td>
            <td class="h50" style="height: 47px">
      <a href="Reportmoviewise.aspx"><h2>4.Moviewise</h2></a></td>
            <td class="h50" style="height: 47px; width: 296px;">
                </td>
        </tr>
        <tr>
            <td style="width: 326px; height: 12px;">
                </td>
            <td >
                <a href="Reportcustomerlist.aspx"><h2>5.Customer list</h2></a></td>
            <td >
                </td>
        </tr>
        <tr>
            <td style="width: 326px;" style="width: 296px; height: 12px">
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 326px">
               </td>
            <td>
  <a href="Reportcategorywise.aspx"><h2>6.Ticket type wise</h2></a>
  </td>
            <td style="width: 296px">
              </td>
        </tr>
        <tr>
            <td style="width: 326px">
              </td>
            <td>
            <a href="ReportBookticketwise.aspx"><h2>7.Booked ticket</h2></a></td>
            <td style="width: 296px">
               </td>
        </tr>
    </table>
</asp:Content>

