<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebApplication1.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 >Đây là trang chủ</h1>
    <br /><br />
    <h2>Danh sách thành viên</h2>
    <asp:ListBox ID="ListBoxDS" runat="server" Width="200" Rows="10"></asp:ListBox>
</asp:Content>
