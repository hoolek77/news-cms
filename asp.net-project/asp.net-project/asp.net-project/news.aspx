<%@ Page Title="" Language="C#" MasterPageFile="~/newsMaster.master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="asp.net_project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" CssClass="redirect-button" runat="server" OnClick="News_Business_Click" />
    <h1>Business</h1>
    <div class="short-desc">
        <p>
            Mauris consequat imperdiet hendrerit. Maecenas suscipit nisl felis, at laoreet arcu fermentum vitae. Morbi nisl augue, tempus at dignissim eu, aliquet id dolor.
            Proin porta, dui ut vulputate pellentesque, enim nulla vehicula velit, id commodo ex nibh non lorem. Integer imperdiet tristique ex eget facilisis.
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="Button2" CssClass="redirect-button" runat="server" OnClick="News_Weather_Click" />
    <h1>Weather</h1>
    <div class="short-desc">
        <p>
            Aenean justo velit, malesuada in ultricies at, vehicula gravida massa. Curabitur nec magna eu diam interdum pulvinar. Donec auctor elit sit amet velit lobortis, in varius magna elementum.
            Pellentesque consectetur, risus blandit laoreet tristique, libero erat sollicitudin urna, quis egestas eros orci sed purus. Aenean condimentum in sapien at iaculis.
        </p>
    </div>
</asp:Content>