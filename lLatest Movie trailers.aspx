<%@ Page Title="" Language="C#" MasterPageFile="~/LogoutMaster.master" AutoEventWireup="true" CodeFile="lLatest Movie trailers.aspx.cs" Inherits="Latest_Movie_trailers" %>

<%@ Register assembly="ASPNetFlashVideo.NET3" namespace="ASPNetFlashVideo" tagprefix="ASPNetFlashVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:DataList ID="DataListhi" runat="server" HorizontalAlign="Center" 
            OnItemDataBound="Item_Bound1" Width="783px" RepeatColumns="3">
            <ItemTemplate>
                <ASPNetFlashVideo:FlashVideo ID="FlashVideo3" runat="server" AutoPlay="false" 
                    Height="213px" VideoURL="" Width="338px">
                </ASPNetFlashVideo:FlashVideo>
            &nbsp;<br />
                Movie Name :
                <asp:Label ID="videoname" runat="server" Text='<%# Eval("videoname") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        &nbsp;</p>
    </asp:Content>

