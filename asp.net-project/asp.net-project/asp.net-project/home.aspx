<%@ Page Title="" Language="C#" MasterPageFile="~/homeNested.master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="asp.net_project.home" %>

    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        .home-btn {
    background: none;
    color: #fff;
    width: 40rem;
    height: 12rem;
    border: 4px solid #7362CB;
    font-size: 2.4rem;
    border-radius: 4px;
    transition: .6s;
    overflow: hidden;
}

    .home-btn:focus {
        outline: none;
    }

    .home-btn::before {
        content: '';
        display: block;
        position: absolute;
        background: rgba(255,255,255,.5);
        width: 60px;
        height: 100%;
        left: 0;
        top: 0;
        opacity: .5;
        filter: blur(30px);
        transform: translateX(-130px) skewX(-15deg);
    }

    .home-btn:after {
        content: '';
        display: block;
        position: absolute;
        background: rgba(255,255,255,.2);
        width: 30px;
        height: 100%;
        left: 30px;
        top: 0;
        opacity: -0;
        filter: blur(30px);
        transform: translate(-100px) scaleX(-15deg);
    }

    .home-btn:hover {
        background: #7362CB;
        cursor: pointer;
    }

        .home-btn:hover::before {
            transform: translateX(300px) skewX(-15deg);
            opacity: .6;
            transition: .7s;
        }

        .home-btn:hover::after {
            transform: translateX(300px) skewX(-15deg);
            opacity: 1;
            transition: .7s;
        }
    </style>
    <asp:Button ID="Button1" runat="server" Text="Check out the latest news!!" class="home-btn" onClick="News_Click"/>
</asp:Content>


