<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="TrangTinTuc.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Đăng ký tài khoản</h1>
    <div id="ndcontent">
        <h4>Tên đăng nhập:</h4>
        <asp:TextBox ID="txtUserName" Width="300" Height="20" runat="server"></asp:TextBox>
        <h4>Mật khẩu:</h4>
        <asp:TextBox ID="txtPassWord" Width="300" Height="20" TextMode="Password" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click"/>
        <h4>
            <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
        </h4>
    </div>
</asp:Content>
