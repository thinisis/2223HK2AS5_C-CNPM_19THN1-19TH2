<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<button formaction="/admin/category/create" ${empty category.id ? '' : 'disabled'} class="btn btn-primary">
	<span class="glyphicon glyphicon-plus"></span> Tạo mới
</button>
<button formaction="/admin/category/update" ${empty category.id ? 'disabled' : ''} class="btn btn-success">
	<span class="glyphicon glyphicon-save"></span> Cập nhật
</button>
<button formaction="/admin/category/delete/${category.id}" ${empty category.id ? 'disabled' : ''} class="btn btn-danger">
	<span class="glyphicon glyphicon-trash"></span> Xoá
</button>
<a href="/admin/category/index" class="btn btn-info">
	<span class="glyphicon glyphicon-refresh"></span> Khôi phục
</a>