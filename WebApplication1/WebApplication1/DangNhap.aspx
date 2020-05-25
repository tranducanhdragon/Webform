<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebApplication1.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br /><br />
        Email:<br />
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
        <br /><br />
        Password:<br />
        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br /><br />
        <asp:Button ID="ButtonDangNhap" runat="server" Text="Đăng Nhập" OnClick="btn_DangNhap"/>
        <br /><br />
        <asp:Button ID="ButtonDangKy" runat="server" Text="Đăng Ký" OnClick="btn_DangKy"/>
        <br /><br />
        <asp:Label ID="LabelKQ" runat="server" Text=""></asp:Label>
        <%if (LabelKQ.Text == "Đăng nhập thành công") {
            %>
            <div >
                <h4>Get và Post trong Ajax</h4>
                <div>
                    Get<br />
                    <input type="button" ID="btnGet" value="Dữ liệu TextFile.txt" />
                    <span ID="span1"></span>
                </div>
                <div>
                    Post<br />
                    <input id="inpEmail" type="text" /><br />
                    <input type="button" ID="btnPost" value="Post"/>
                    <span id="span2">Dữ liệu lấy về theo yêu cầu</span>
                </div>
            </div>
            <%
        } %>
    <script>
        $(document).ready( function(){
            $("#btnGet").click(function () {
                $.get("TextFile1.txt", function (res, status) {
                    $("#span1").html(res);
                    alert(status);
                })
            })
            $("#btnPost").click(function () {
                $.post("WebForm1.aspx",{name:$("#inpEmail").val()}, function (res, status) {
                    $("#span2").html(res);
                    alert(status);
                })
            })
        })
        
    </script>
</asp:Content>
