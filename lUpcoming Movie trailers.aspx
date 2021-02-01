<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="lUpcoming Movie trailers.aspx.cs" Inherits="video" %>

<%@ Register assembly="ASPNetFlashVideo.NET3" namespace="ASPNetFlashVideo" tagprefix="ASPNetFlashVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 

    <asp:DataList OnItemDataBound="Item_Bound" ID="DataList2" runat="server" 
        HorizontalAlign = "Center" Width="851px" RepeatColumns="3" >
    <ItemTemplate>
            <ASPNetFlashVideo:FlashVideo ID="FlashVideo3" runat="server" Height="205px" 
                Width="313px" AutoPlay= "false" VideoURL=''>
            </ASPNetFlashVideo:FlashVideo>
            <br />
            Movie Name :
            <asp:Label ID="videoname" runat="server" Text='<%# Eval("videoname") %>'></asp:Label>
        </ItemTemplate>

    </asp:DataList>


    
</asp:Content>

