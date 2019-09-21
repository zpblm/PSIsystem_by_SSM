<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" />
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
				<div class="tabs" style="margin: 30px;">
					<div class="hd">
						<ul>
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">入库记录</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">商品入库</li>
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
												<th>入库数量 </th>
												<th>入库日期</th>
												<th>负责人员</th>
												<th>备注</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="InProduct" items="${InProducts }">
											<tr>
												<td>${InProduct.ipid }</td>
												<td>${InProduct.pname }</td>
												<td>${InProduct.cname }</td>
												<td>${InProduct.inu }</td>
												<td>${InProduct.idate }</td>
												<td>${InProduct.uname }</td>
												<td>${InProduct.iintrog }</td>
												<td class="delete"><button onclick="btn_delete(${InProduct.ipid })"><i class="icon-trash bigger-120"></i>删除</button></td>
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
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						<form class="am-form am-form-horizontal"
							action="/InProduct/add" method="post">
							<input type="text" name="uname" id="unameinput" value="${login_user}" >
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
								分类</label>
								<div class="am-u-sm-9">
									<select name="cname" required id="cselect">
										<option value="0">请选择分类</option>
										<c:forEach var="Cname" items="${Cnames}">
											<option value="${Cname}">${Cname}</option>
										</c:forEach>
										
									</select> <small>分类</small>
								</div>
							</div>
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
							商品名称</label>
								<div class="am-u-sm-9">
									<select name="pname" required id="pselect">
										<option value="0">请选择商品</option>
										<c:forEach var="P" items="${Ps}">
											<option value="${P.pname}" title="${P.cname}">${P.pname}</option>
										</c:forEach>
										
									</select> <small>商品</small>
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="name" required
										placeholder="数量" name="inu">
										<small>数量</small>
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-intro" class="am-u-sm-3 am-form-label">
									备注</label>
								<div class="am-u-sm-9">
									<textarea class="" rows="5" id="user-intro" name="iintrog"
										placeholder="输入备注"></textarea>
									<small>250字以内...</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加分类" />
								</div>
							</div>
						</form>
					</div>
				</div>
			
			</div>
		<!-- content end -->
		</div>
		<!--添加 end-->
	</div>					<!--end-->
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
				var num = 1;
				$(function() {
					$("#unameinput").hide()
				 $(".tabs").slide({ trigger: "click" });

				 $("#cselect").change(function () {
					$("#pselect").val("0")
				 	$("#pselect option").not(":first").each(function () {
						if ($(this).attr("title")!=$("#cselect option:selected").val()) {
							$(this).hide()
						}
						else $(this).show()
					})

				 })
				});

				var btn_delete = function(ipid) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							location.href="${pageContext.request.contextPath }/InProduct/delete/"+ipid;
						}
					});
				}


			</script>

		</div>
	</body>

</html>