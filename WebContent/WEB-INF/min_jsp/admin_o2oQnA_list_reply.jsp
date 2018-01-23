<%@ page contentType="text/html; charset=utf-8" pageEncoding="euc-kr"%>
<%@taglib prefix="jl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

.form-group {
	text-align: center;
}

.jumbotron {
	text-align: center;
}

.btn {
	text-align: center;
}


</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script>
	$(document).ready(function(){
		$("#cancel").on("click",function(){
			document.frm.method="POST";
			document.frm.action="admin_o2oQnA.do";
			document.frm.submit();
		});
	});

</script>
</head>
<body>
	<div class="jumbotron" style="background-color: orange">
		<h1>1:1 ���ǳ����</h1>
	</div>
	<table border="1">
		<tr>
			<td>���� ����</td>
			<td>���� �̸���</td>
			<td>���� ��ȭ��ȣ</td>
			<td>���� ���� Ÿ��</td>
			<td>���� ���� �ð�</td>
			<td>��� �亯 ����</td>
		</tr>
		<jl:forEach var="vo" items="${ls}">
		<tr>
			<td>${vo.o2o_title}</td>
			<td>${vo.o2o_email}</td>
			<td>${vo.o2o_phone}</td>
			<td>${vo.o2o_type}</td>
			<td>${vo.the_time}</td>
			<td>${vo.re_o2o_content}</td>
		</tr>
		</jl:forEach>
	</table>
	<br>
<br>
<form id="form_search" action="admin_o2oQnA_list_reply.do">
	<input type="hidden" name="pg" value="" id="pg">
	<input type="hidden" name="search_content" value="${search.search_content}">
	<input type="hidden" name="search_option" value="${search.search_option}">
</form>
<form id="textsearch" action="admin_o2oQnA_list_reply.do" method="post">
	<select name="search_option">
		<option value="0">�������ּ���</option>
		<option value="1">����</option>
		<option value="2">����</option>
		<option value="3">���� + ����</option>
		<option value="4">������ �̸���</option>
		<option value="5">���� Ÿ��</option>
		<option value="6">��ȭ ��ȣ</option>
		<option value="7">���� �ð�</option>
		<option value="8">�亯 ����</option>
	</select>
	�˻� : <input type="text" name="search_content">
	<input type="submit" value="�˻�">
</form>
	<ul class="pagination pagination-sm">
			<jl:if test="${pz.hasPrevPagination }">
				<li><a class="page" href="admin_o2oQnA_list_reply.do?pg=${pz.paginationStart-1}">&lt;</a></li>
			</jl:if>
				<jl:if test="${pz.hasPrevPage }">
					<li><a class="page" href="admin_o2oQnA_list_reply.do?pg=${pz.curPagination-1 }">&lt;</a></li>
				</jl:if>
				<jl:forEach begin="${pz.paginationStart }" end="${pz.paginationEnd }" step="1" varStatus="vs">
					<jl:choose>
						<jl:when test="${vs.index!=pz.curPagination }">
							<li><a class="page" href="admin_o2oQnA_list_reply.do?pg=${vs.index }">${vs.index }</a></li>
						</jl:when>
						<jl:otherwise>
							<li class="active"><a class="page" href="admin_o2oQnA_list_reply.do?pg=${vs.index }">${vs.index }</a></li>
						</jl:otherwise>
					</jl:choose>
				</jl:forEach>
				<jl:if test="${pz.hasNextPage }">
					<li><a class="page" href="admin_o2oQnA_list_reply.do?pg=${pz.curPagination+1}">&gt;</a></li>
				</jl:if>
			<jl:if test="${pz.hasNextPagination }">
				<li><a class="page" href="admin_o2oQnA_list_reply.do?pg=${pz.paginationEnd+1 }">&gt;&gt;</a></li>
			</jl:if>
		</ul>
</body>
</html>