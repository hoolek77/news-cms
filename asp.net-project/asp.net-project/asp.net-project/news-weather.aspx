<%@ Page Title="" Language="C#" MasterPageFile="~/newsCategoriesMaster.master" AutoEventWireup="true" CodeBehind="news-weather.aspx.cs" Inherits="asp.net_project.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="js/redirect.js" defer></script>
    <style>
        .news-wrapper {
            display: flex;
            justify-content: center;
            width: 100%;
            height: auto;
        }
        .news-grid {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-gap: 15rem;

        }
        .news {
            box-sizing: border-box;
            width: 40rem;
            height: auto;
            border: 1px solid black;
        }
 
        .title {
            font-size: 2.3rem;
            height: 6rem;
            width: 100%;
            text-align: center;
        }
 
        .thumbnail {
            height: 20rem;
            width: 100%;
        }
 
        .author {
            font-size: 1.4rem;
            height: 4rem;
            width: 100%;
            text-align: center;
        }
         
    </style>
    <div class="news-wrapper">
        <div class="news-grid" id="newsGrid" runat="server">
        </div>
    </div>
</asp:Content>
