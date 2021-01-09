<%@ Page Title="" Language="C#" MasterPageFile="~/logowanieNested.master" AutoEventWireup="true" CodeBehind="logowanie.aspx.cs" Inherits="asp.net_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .login-heading {
            font-size: 4.5rem;
            font-weight: 400;
        }

        .input-container {
            height: 5rem;
        }

        .input-heading {
            font-size: 2.4rem;
        }

        .inputs-container {
            display: flex;
            flex-direction: column;
        }

        .input-text-box {
            height: 3rem;
            width: 25rem;
            font-size: 2.4rem;
            margin-left: 1rem;
            padding-left: 1rem;
            border: none;
            outline: none;
            border: 1px solid #b8a9d9;
            border-radius: 15px;
            background-color: rgba(255,255,255,0.6);
        }

        .input-last {
            margin-top: 2rem; 
        }

        .input-text-box:focus {
            background-color: rgba(255,255,255,0.8)
        }

        .login-checkbox {
            font-size: 1.8rem;
        }

        .login-btn {
            margin-top: 2rem;
            font-size: 2.4rem;
            height: 4rem;
            width: 25rem;
            border: 1px solid #b8a9d9;
            outline: none;
            border-radius: 15px;
            background-color: rgba(255,255,255,0.6);
            transition: all .3s;
        }
    

        .login-btn:hover {
            background-color: rgba(255,255,255,0.8);
            transform: scale(1.2)
        }
    </style>
    <h2 class="login-heading">Login</h2>
    <input type="text" id="login" class="input-text-box" placeholder="User Name"  runat="server"/>
    <input type="text" id="password" class="input-text-box input-last" placeholder="Password" runat="server" />
    <input type="submit" id="submit" class="login-btn" value="Login" runat="server" onclick="Login" />
</asp:Content>
