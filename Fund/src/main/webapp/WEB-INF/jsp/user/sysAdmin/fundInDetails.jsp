<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="imaw" uri="http://www.imaw.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>到款详细信息</title>
<jsp:include page="../Model.jsp"></jsp:include>
<link rel="stylesheet"
	href="/Fund/static/zebra_datepicker/css/metallic.css" type="text/css">
</head>
<body>
	<jsp:include page="masterPage.jsp"></jsp:include>
	<!-- Main Page -->
	<div class="main ">
		<!-- Page Header -->
		<div class="page-header">
			<div class="pull-left">
				<ol class="breadcrumb visible-sm visible-md visible-lg">
					<li class="active"><a
						href="${pageContext.request.contextPath}/sysAdmin/projectManage.action"><i
							class="fa fa-folder"></i>立项管理</a></li>
					<li class="active"><a href="#"><i
							class="fa fa-file-text-o"></i>项目信息</a></li>
					<li class="active"><a href="#"><i
							class="fa fa-file-text-o"></i>到款详细信息</a></li>
				</ol>
			</div>
			<div class="pull-right">
				<h2>到款详细信息</h2>
			</div>
		</div>
		<!-- End Page Header -->
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<div class="panel">
					<div class="panel-heading bk-bg-primary">
						<h6>
							<i class="fa fa-paperclip"></i>到款详细信息
						</h6>
						<div class="panel-actions">
							<a class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
						</div>
					</div>
					<div class="panel-body">
						<div class="bk-bg-white row">
							<form>
								<div class="col-md-3 form-group col-md-offset-4">
									<input type="text" class="form-control" />
								</div>
								<div class="col-md-3">
									<button type="button" class="btn btn-primary">
										<i class="fa fa-search"></i> 查找
									</button>
								</div>
							</form>
						</div>
						<div class="table-responsive ">
							<table
								class="table table-striped table-bordered bootstrap-datatable datatable ">
								<thead>
									<tr>
										<th>到款时间</th>
										<th>财务项目编号</th>
										<th>付款单位</th>
										<th>金额</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${inbillList }" var="bill">
										<tr>
											<td><fmt:formatDate value="${bill.timeIn }" pattern="yyyy-MM-dd"/></td>
											<td>${bill.moneyNum }</td>
											<td>${bill.payer }</td>
											<td><fmt:formatNumber value='${bill.moneyIn }' type='number'
													groupingUsed='false' maxFractionDigits='2' /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row myPage">
				<imaw:page
					url="${pageContext.request.contextPath }/sysAdmin/checkInBill.action?mCheckId=${mCheckId}" />
			</div>

		</div>
	</div>
</body>
</html>