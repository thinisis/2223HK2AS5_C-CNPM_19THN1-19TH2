<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="panel-footer">
	<h4 class="panel-title">CHI TIẾT ĐƠN HÀNG</h4>
</div>
<table class="table table-hover">
	<thead>
		<tr>
			<th>Id</th>
			<th>Tên sản phẩm</th>
			<th>Đơn giá</th>
			<th>Giảm giá</th>
			<th>Số lượng</th>
			<th>Thành tiền</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="d" items="${order.orderDetails}">
			<tr>
				<td>${d.id}</td>
				<td>${d.product.name}</td>
				<td><f:formatNumber value="${d.unitPrice}" />
				 Đ</td>
				<td><f:formatNumber value="${d.discount * 100}"
						 /> %</td>
				<td>${d.quantity}</td>
				<td><f:formatNumber
						value="${d.unitPrice*d.quantity*(1-d.discount)}"
						 /> Đ
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

