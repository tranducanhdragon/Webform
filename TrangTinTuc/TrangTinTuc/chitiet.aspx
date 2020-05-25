<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="TrangTinTuc.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rpBanTin" runat="server">
        <ItemTemplate>
            <h1><%# Eval("tenBanTin") %></h1>
        </ItemTemplate>
    </asp:Repeater>
    <div id="ndcontent">
        <asp:repeater id="rpChiTiet" runat="server">
            <ItemTemplate>
                <h3 style="color:red"><%# Eval("tieuDe") %></h3>
                <p style="text-align:right">
                    Cập nhật: <%# Eval("ngayDang") %>
                </p>
                <%# Eval("noiDung") %>
            </ItemTemplate>
        </asp:repeater>
    </div>
</asp:Content>
