<%@ Page Title="" Language="C#" MasterPageFile="~/User_Master.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
            HorizontalAlign="Center" Width="770px" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <img alt=""  height="150" width='200'  src='images/<%# Eval("imagename") %>'  >
                &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
   
    <br />
</asp:Content>

