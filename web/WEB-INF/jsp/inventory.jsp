<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
				<div class="tabs">
					<div class="hd">
						<ul>
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">库存管理</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加商品</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" >
										<tr style="background-color: darkgray"><th><b style="color: firebrick">建议补货的服饰：</b></th></tr>
										<tr><c:forEach var="wp" items="${warnPs}"><td>${wp}</td></c:forEach></tr>
									</table>
									<table class="table" id="tbRecord">
										<thead>
											<tr>
												<th>库存编号</th>
												<th>商品名称</th>
												<th>商品价格</th>
												<th>商品分类</th>
												<th>商品数量</th>
												<th>商品备注</th>
												<th>编辑</th>
												<th>删除</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach var="product" items="${Ps}">
											<tr>
												<form action="/Product/updateP">
													<td><span>${product.pid}</span><input type="text" name="pid" value="${product.pid}" hidden></td>
											<td><span id="pnamespan${product.pid}">${product.pname}</span><input style="width:100px" type="text" value="${product.pname}" name="pname" id="pnameinput${product.pid}" hidden/></td>
											<td><span id="pricespan${product.pid}">${product.price}</span><input style="width:55px" type="text" value="${product.price}" name="price" id="priceinput${product.pid}" hidden/></td>
													<td>${product.cname}</td>
													<td>${product.pnu}</td>
											<td><span id="pintrogspan${product.pid}">${product.pintrog}</span><input style="width:150px" type="text" value="${product.pintrog}" name="pintrog" id="pintroginput${product.pid}" hidden/></td>
													<td class="edit"><button type="button" id="update_btn${product.pid}" onclick="btn_edit('${product.pid}')"><i class="icon-edit bigger-120"></i>编辑</button><button hidden type="submit" id="sure_btn${product.pid}"><i class="icon-edit bigger-120"></i>确认编辑</button></td></form>
												<td class="delete"><button onclick="btn_delete('${product.pid}')"><i class="icon-trash bigger-120"></i>删除</button></td>
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
							action="${pageContext.request.contextPath }/Product/addP" method="post">
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品编号</label>
								<div class="am-u-sm-9">
									<input type="text" onkeyup="this.value=this.value.replace(/[^\d]/g,'');this.value=this.value>9999?9999:this.value;this.value=this.value<1?1:this.value;" id="pid" required
										   placeholder="商品编号" name="pid">
								</div>
							</div>
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="name" required
										placeholder="商品名称" name="pname">
										<small>10字以内...</small>
								</div>
							</div>
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
									分类</label>
								<div class="am-u-sm-9">
									<select name="cname" required>
										<option value="0">请选择分类</option>
										<c:forEach var="Cname" items="${Cnames}">
											<option value="${Cname}">${Cname}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品价格</label>
								<div class="am-u-sm-9">
									<input type="text" onkeyup="this.value= this.value.match(/\d+(\.\d{0,2})?/) ? this.value.match(/\d+(\.\d{0,2})?/)[0] : '';this.value=this.value>999?999:this.value;this.value=this.value<0?0:this.value;" id="price" required
										   placeholder="商品价格" name="price">
								</div>
							</div>

							

							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品数量</label>
								<div class="am-u-sm-9">
									<input type="text" onkeyup="this.value=this.value.replace(/[^\d]/g,'');this.value=this.value>9999?9999:this.value;this.value=this.value<1?1:this.value;" id="pnu" required
										   placeholder="商品数量" name="pnu">
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-intro" class="am-u-sm-3 am-form-label">
									备注</label>
								<div class="am-u-sm-9">
									<textarea class="" rows="5" id="user-intro" name="pintrog"
										placeholder="输入备注"></textarea>
									<small>250字以内...</small>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加服饰" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
		<!-- content end -->
	</div>
							<!--添加 end-->
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

				 $(".tabs").slide({ trigger: "click" });

				});

				var btn_edit = function(pid){
					$("#pnamespan"+pid).hide()
					$("#pricespan"+pid).hide()
					$("#pintrogspan"+pid).hide()
					$("#update_btn"+pid).hide()
					$("#pnameinput"+pid).show()
					$("#priceinput"+pid).show()
					$("#pintroginput"+pid).show()
					$("#sure_btn"+pid).show()
				}
				var btn_delete = function(pid) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							location.href="${pageContext.request.contextPath }/Product/deleteP/"+pid;
						}
					});
				}
			</script>

		</div>
	</body>

</html>