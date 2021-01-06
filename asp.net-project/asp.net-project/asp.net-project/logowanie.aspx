<%@ Page Title="" Language="C#" MasterPageFile="~/logowanieNested.master" AutoEventWireup="true" CodeBehind="logowanie.aspx.cs" Inherits="asp.net_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .login-heading {
            font-size: 4.5rem
        }

        .input-container {
            height: 5rem;
        }

        .input-heading {
            font-size: 2.4rem;
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

        .input-text-box:focus {
            background-color: rgba(255,255,255,0.8)
        }

        .login-checkbox {
            font-size: 1.8rem;
        }

        .login-btn {
            margin-top: 1rem;
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
    <asp:Login ID="Login1" runat="server">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2" class="login-heading">Login</td>
                            </tr>
                            <tr class="input-container">
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" class="input-text-box" placeholder="User Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User name is required." ToolTip="User name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr class="input-container">
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" class="input-text-box" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" class="login-checkbox"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Login" ValidationGroup="Login1" class="login-btn"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
