<%@ Page Title="" Language="C#" MasterPageFile="~/newsDisplayNested.master" AutoEventWireup="true" CodeBehind="newsDisplay.aspx.cs" Inherits="asp.net_project.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .title {
            font-size: 3.6rem;
        }

        .author {
            margin: 1rem;
            font-size: 2.4rem;
        }

        .img {
            height: 30rem;
            width: auto;
        }

        .content {
            width: 40%;
            font-size: 2rem;
            max-width: 100%;
            word-wrap: break-word;
            margin: 3rem 10rem;
        }
    </style>
    <div class="title" id="title" runat="server"></div>
    <div class="author" id="author" runat="server"></div>
    <img class="img" id="img" runat="server" />
    <p class="content" id="content" runat="server"></p>
</asp:Content>
