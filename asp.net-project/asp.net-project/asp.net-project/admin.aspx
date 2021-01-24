<%@ Page Title="" Language="C#" MasterPageFile="~/adminPageNested.master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="asp.net_project.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .admin-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .admin-container h2 {
            text-align: center;
            font-size: 3rem;
        }

        .admin-btn {
            width: 20rem;
            height: 5rem;
            font-size: 2.4rem;
            color: white;
            background: transparent;
            outline: none;
            border: 2px solid #91bcdb;
            transition: all .3s;
            border-radius: 15px;
        }

        .admin-btn:hover {
           background: #91bcdb;
        }

        .manage-users {
            height: 5rem;
            margin-top: 2rem;
        }
    </style>
    <div class="admin-container">
        <h2>Admin Page</h2>

        <asp:Button ID="AddPost" runat="server" Text="Add Post" class="add-post admin-btn" OnClick="To_Add_Post"/>
        <asp:Button ID="ManageUsers" runat="server" Text="Manage Users" class="manage-users admin-btn" OnClick="Manage_Users" />
        <asp:Button ID="ManagePosts" runat="server" Text="Manage Posts" class="manage-users admin-btn" OnClick="Manage_Posts" />
        <asp:Button ID="LogOut" runat="server" Text="Log Out" class="manage-users admin-btn" OnClick="Log_Out" />

    </div>
</asp:Content>
