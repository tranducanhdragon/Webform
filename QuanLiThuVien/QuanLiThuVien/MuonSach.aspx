<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MuonSach.aspx.cs" Inherits="QuanLiThuVien.MuonSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="TieuDe">Thông tin người mượn</h1>
    <div id="NoiDung">
        Họ và tên:<br />
        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
        <br /><br />
        Lớp:<br />
        <asp:TextBox ID="txtLop" runat="server"></asp:TextBox>
        <br /><br />
        Ngày mượn:<br />
        <asp:TextBox ID="txtNgayMuon" TextMode="DateTime" runat="server"></asp:TextBox>
        <br /><br />
        Ngày trả:<br />
        <asp:TextBox ID="txtNgayTra" TextMode="DateTime" runat="server"></asp:TextBox>
    </div>
</asp:Content>
