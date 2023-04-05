<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<f:formatDate value="${prod.productDate}" pattern="dd-MM-yyyy"
	var="date" />
<f:formatNumber value="${prod.unitPrice}"  var="price" />
<div class="panel panel-success nn-detail" data-id="${prod.id}">
	<div class="panel-heading">
		<h4 class="panel-title">THÔNG TIN CHI TIẾT SẢN PHẨM</h4>
	</div>
	<div class="panel-body">
		<div class="col-sm-5 text-center">
			<img src="/static/images/products/${prod.image}" />
		</div>
		<ul class="col-sm-7">
			<li><strong>Tên sản phẩm</strong>: <em>${prod.name}</em></li>
			<li><strong>Đơn giá</strong>: <em>${price}</em></li>
			<li><strong>Khuyến mại</strong>: <em><f:formatNumber value="${prod.discount}" type="percent"/></em></li>
			<li><strong>Số lượng</strong>: <em>${prod.quantity}</em></li>
			<li><strong>Ngày sản xuất</strong>: <em>${date}</em></li>
			<li><strong>Phân loại</strong>: <em>${prod.category.nameVN}</em></li>
		</ul>
	</div>
	<div class="panel-footer text-justify">${prod.description}</div>
	<div class="panel-footer text-right">
		<%@include file="btn-prod.jsp"%>
	</div>
</div>
<jsp:include page="_comment.jsp"/>

<div class="nn-detail-relatives">
	<!-- tab buttons -->
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#same">Sản phẩm cùng loại</a></li>
		<li><a data-toggle="tab" href="#like">Sản phẩm đã thích</a></li>
		<li><a data-toggle="tab" href="#daxem">Sản phẩm đã xem</a></li>
	</ul>

	<div class="panel panel-default">
		<div class="panel-body">
			<!-- tab content -->
			<div class="tab-content">
				<div id="same" class="tab-pane fade in active">
					<c:forEach var="p" items="${prod.category.products}">
						<a href="/product/detail/${p.id}"><img
							src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
				<div id="like" class="tab-pane fade">
					<c:forEach var="p" items="${like}">
						<a href="/product/detail/${p.id}"><img
							src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
				<div id="daxem" class="tab-pane fade">
					<c:forEach var="p" items="${daXem}">
						<a href="/product/detail/${p.id}"><img
							src="/static/images/products/${p.image}" /></a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>




