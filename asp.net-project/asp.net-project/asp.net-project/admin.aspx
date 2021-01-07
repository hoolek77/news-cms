<%@ Page Title="" Language="C#" MasterPageFile="~/adminPageNested.master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="asp.net_project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .admin-container {
            display: flex;
            flex-direction: column;
        }
    </style>
    <div class="admin-container">
        <h2>Admin Page</h2>
        <asp:Button ID="AddPost" runat="server" Text="Button" class="add-post"/>
        <asp:Button ID="LogOut" runat="server" Text="Button" class="log-out"/>
    </div>
</asp:Content>
