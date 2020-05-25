<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="chitietAdd.aspx.cs" Inherits="TrangTinTuc.chitietAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Thêm bản tin mới cho trang tin tức</h1>
        <div id="ndcontent">
            <h4>Chọn bản tin:</h4>
            <asp:DropDownList ID="drBanTin" runat="server" Height="20" Width="100"></asp:DropDownList>
            <h4>Tiêu đề bản tin:</h4>
            <asp:TextBox ID="txtTieuDe" runat="server" Width="600"></asp:TextBox>
            <h4>Nội dung bản tin:</h4>
            <CKEditor:CKEditorControl ID="txtNoiDung" runat="server"></CKEditor:CKEditorControl>
            <br /><br />
            <asp:Button ID="btnInsert" runat="server" Text="Cập nhật" OnClick="btnInsert_Click" />
        </div>        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Xóa bản tin cho trang tin tức</h1>
        <div id="ndright">
            <h4>Chọn bản tin:</h4>
            <asp:ListBox ID="lbChiTiet" runat="server" Height="600" Width="300"></asp:ListBox>
            <br /><br />
            <asp:Button ID="btnDelete" runat="server" Text="Xoá" OnClick="btnDelete_Click" />
        </div> 
</asp:Content>
