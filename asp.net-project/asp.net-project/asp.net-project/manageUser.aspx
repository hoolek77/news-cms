﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mangeUsersNested.master" AutoEventWireup="true" CodeBehind="manageUser.aspx.cs" Inherits="asp.net_project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [admins] WHERE [Id] = @Id" InsertCommand="INSERT INTO [admins] ([Id], [username], [passwd]) VALUES (@Id, @username, @passwd)" SelectCommand="SELECT * FROM [admins]" UpdateCommand="UPDATE [admins] SET [username] = @username, [passwd] = @passwd WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="passwd" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="passwd" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>