<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="lGallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
            HorizontalAlign="Center" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <img alt=""  height="150" width='200' src='images/<%# Eval("imagename") %>'  >
                &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;
                <br />
            </ItemTemplate>
        </asp:DataList>
     
</asp:Content>

