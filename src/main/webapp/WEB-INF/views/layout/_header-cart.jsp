<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<style id="cart-effect"></style>
<div class="panel panel-danger nn-cart">
	<div class="panel-heading">
		<h3 class="panel-title">
			<span class="glyphicon glyphicon-shopping-cart"></span>Giỏ hàng
		</h3>
	</div>
	<div class="panel-body">

		<ul class="col-xs-7 text-center">
		
		<!-- truy xuất tới thuộc tính trong bean <==> countCart = getCountCart -->
			<f:formatNumber value="${cart.amountCart}"  var="amountCart" />
 			Bạn đang có <strong id="cart-cnt">${cart.countCart}</strong> sản phẩm<br>
			Thành tiền: <strong id="cart-amt">${amountCart}</strong> đ <br>
			<a href="/cart/view">Xem chi tiết</a>
		</ul>
	</div>
</div>
