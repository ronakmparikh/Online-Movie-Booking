<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="admin_status.aspx.cs" Inherits="admin_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookingid" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="bookingid" HeaderText="bookingid" 
                InsertVisible="False" ReadOnly="True" SortExpression="bookingid" />
            <asp:BoundField DataField="userid" HeaderText="userid" 
                SortExpression="userid" />
            <asp:BoundField DataField="movieid" HeaderText="movieid" 
                SortExpression="movieid" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="moviename" HeaderText="moviename" 
                SortExpression="moviename" />
            <asp:BoundField DataField="bookedticket" HeaderText="bookedticket" 
                SortExpression="bookedticket" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="bookingdate" HeaderText="bookingdate" 
                SortExpression="bookingdate" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="Screenname" HeaderText="Screenname" 
                SortExpression="Screenname" />
            <asp:BoundField DataField="timing" HeaderText="timing" 
                SortExpression="timing" />
            <asp:BoundField DataField="seatno" HeaderText="seatno" 
                SortExpression="seatno" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:movieconn %>" 
        SelectCommand="SELECT Booking_master.* FROM Booking_master" 
        UpdateCommand="UPDATE Booking_master SET status = @status WHERE (bookingid = @bookingid)">
        <UpdateParameters>
            <asp:Parameter Name="status" />
            <asp:Parameter Name="bookingid" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

