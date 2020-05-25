<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WebApplication1.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br /><br />
        Họ và tên:<br />
        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        <br /><br />
        Email:<br />
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <br /><br />
        Password:<br />
        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode ="Password"></asp:TextBox>
        <br /><br />
        Country:<br />
        <asp:TextBox ID="TextBoxCountry" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="ButtonDangKy" runat="server" Text="Đăng Ký" OnClick="btn_DangKy"/>
        <br /><br />
        <asp:Button ID="ButtonQuayLai" runat="server" Text="Quay Lại" OnClick="btn_QuayLai"/>
        <br /><br />
        <asp:Label ID="LabelKQ" runat="server" Text=""></asp:Label>
</asp:Content>
