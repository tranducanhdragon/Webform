$(document).ready(function () {
    $('#btnContinue').off('click').on('click', function () {
        window.location.href = 'TrangChu.html';       
        
    });
    $('#btnPayment').off('click').on('click', function () {
        window.location.href = "/thanh-toan";
    });
    $('.btn-delete').off('click').on('click', function (e) {
        e.preventDefault();       
        $.ajax({
            data: {id: $(this).data('id') },
            url: 'Default.aspx',
            dataType: 'Text',
            type: 'POST',
            success: function (result) {
                $("span").html(result);
            }
        })
    });
    $('#btnUpdate').off('click').on('click', function () {
        var list = $('.txtQuantity');
        var cartList = [];
        $.each(list, function (i, item) {
            cartList.push({
                Quantity: $(item).val(),
                SanPham: {
                    "MaSP": $(item).data('id')
                }
            });
        });
        alert('worked');
        $.ajax({
            url: 'Default.aspx',
            data: {cartModel:JSON.stringify(cartList) },
            dataType: 'Text',
            type: 'POST',
            success: function (result) {
                $("span").html(result);
            }
        })
    });
});
