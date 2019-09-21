<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/asserts/css/Site.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/asserts/css/zy.all.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/asserts/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/asserts/css/amazeui.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/asserts/css/admin.css" />
	</head>

	<body>
		<div class="dvcontent">
			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul>
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">预警管理</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord">
										<thead>
											<tr>
												<th>编号</th>
												<th>商品名称</th>
												<th>商品分类</th>
												<th>预警数量</th>
												<th>编辑</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="warn" items="${Warns }">
											<tr>
											<td>${warn.pid}</td>
											<td>${warn.pname}</td>
											<td>${warn.cname}</td>
												<form action="/Warn/update">
													<input type="text" value="${warn.pid}" name="pid" style="visibility: hidden">
											<td><input type="number" name="wnu" value="${warn.wnu}"></td>
											<td class="edit"><button type="submit" onclick="btn_edit()"><i class="icon-edit bigger-120"></i>确认编辑</button></td>
												</form>
											</tr>
										</c:forEach>
										</tbody>

									</table>
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						<ul class="theme-popbod dform" style="display: none;">
							<div class="am-cf admin-main" style="padding-top: 0px;">
							</div>
						</ul>
						</div>
					</div>
					<!--tab end-->

				</div>

				<script src="${pageContext.request.contextPath }/asserts/js/jquery-1.7.2.min.js" type="text/javascript"></script>
				<script src="${pageContext.request.contextPath }/asserts/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
				<script src="${pageContext.request.contextPath }/asserts/js/_layout.js"></script>
				<script src="${pageContext.request.contextPath }/asserts/js/plugs/jquery.SuperSlide.source.js"></script>
				<script>
					$(function() {
						$(".tabs").slide({ trigger: "click" });

					});

					var btn_edit = function() {
						location.reload();
					}

				</script>

			</div>
	</body>

</html>