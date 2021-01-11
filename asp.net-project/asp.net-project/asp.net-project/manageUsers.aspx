<%@ Page Title="" Language="C#" MasterPageFile="~/mangeUsersNested.master" AutoEventWireup="true" CodeBehind="mangeUsers.aspx.cs" Inherits="asp.net_project.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="passwd" HeaderText="passwd" SortExpression="passwd" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [admins] WHERE [Id] = @Id" InsertCommand="INSERT INTO [admins] ([Id], [username], [passwd]) VALUES (@Id, @username, @passwd)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [admins]" UpdateCommand="UPDATE [admins] SET [username] = @username, [passwd] = @passwd WHERE [Id] = @Id">
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
</asp:Content>
