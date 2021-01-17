<%@ Page Title="" Language="C#" MasterPageFile="~/newsCategoriesMaster.master" AutoEventWireup="true" CodeBehind="news-business.aspx.cs" Inherits="asp.net_project.WebForm8" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
