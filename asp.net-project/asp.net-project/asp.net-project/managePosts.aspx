<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeBehind="managePosts.aspx.cs" Inherits="asp.net_project.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 80%;
            margin: 0 auto;
        }
        .grid-view {
            color: #e5e5e5;
            font-size: 1.6rem;
            border: 1px solid #e5e5e5;
            padding: 1rem;
            letter-spacing: 1px;
        }

        .grid-view td {
            text-align: center;
        }
    </style>
    <div class="container">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [PID] = @PID" InsertCommand="INSERT INTO [users] ([Author], [Title], [Content], [Published], [Thumbnail], [Category]) VALUES (@Author, @Title, @Content, @Published, @Thumbnail, @Category)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [Author] = @Author, [Title] = @Title, [Content] = @Content, [Published] = @Published, [Thumbnail] = @Thumbnail, [Category] = @Category WHERE [PID] = @PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="Published" Type="DateTime" />
            <asp:Parameter Name="Thumbnail" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="String" />
            <asp:Parameter Name="Published" Type="DateTime" />
            <asp:Parameter Name="Thumbnail" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="PID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" class="grid-view" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
