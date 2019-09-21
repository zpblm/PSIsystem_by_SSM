<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>用户管理</title>
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
					<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">查看用户</li>
					<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加用户</li>
				</ul>
			</div>
			<div class="bd">
				<ul style="display: block;padding: 20px;">
					<li>
						<div id="dv1">
							<table class="table" id="tbRecord">
								<thead>
								<tr>
									<th>编号</th>
									<th>用户名 </th>
									<th>性别</th>
									<th>联系电话</th>
									<th>修改</th>
									<th>删除</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${users}" var="user">
									<tr>
										<td>${user.uid}</td>
										<td>${user.uname}</td>
										<td>${user.gender}</td>
										<td>${user.phone}</td>
										<td class="edit"><button onclick="btn_edit(${user.uid})"><i class="icon-edit bigger-120"></i>编辑</button></td>
										<td class="delete"><button onclick="btn_delete(${user.uid})"><i class="icon-trash bigger-120"></i>删除</button></td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>

					</li>
				</ul>
				<ul class="theme-popbod dform" style="display: none;">
					<div class="am-cf admin-main" style="padding-top: 0px;">
						<div class="am-cf admin-main" style="padding-top: 0px;">
							<!-- content start -->
							<div class="admin-content">
								<div class="admin-content-body">
									<div class="am-g">
										<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
										</div>
										<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4" style="padding-top: 30px;">
											<form class="am-form am-form-horizontal" action="${pageContext.request.contextPath}/add" method="post">
												<div class="am-form-group">
													<label class="am-u-sm-3 am-form-label">
														用户名 / username </label>
													<div class="am-u-sm-9">
														<input type="text" id="username" required placeholder="用户名 / username" name="uname">
													</div>
												</div>
												<div class="am-form-group">
													<label class="am-u-sm-3 am-form-label">
														密码/ password </label>
													<div class="am-u-sm-9">
														<input type="password" id="pwd" required placeholder="请输入密码" name="pwd">
													</div>
												</div>
												<div class="am-form-group">
													<label class="am-u-sm-3 am-form-label">
														性别 / sex </label>
													<div class="am-u-sm-9" style="line-height: 30px;">
														<input type="radio" id="man" name="gender" value="男"
														${user.gender=="男"? "checked=checked ":""}/> <label for="man">
														男 </label> &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" id="woman"
																								   name="gender" value="女" ${user.gender=="女"? "checked=checked ":""} />
														<label for="woman"> 女 </label> <br />
													</div>
												</div>
												<div class="am-form-group">
													<label for="user-email" class="am-u-sm-3 am-form-label">
														联系电话 / phone </label>
													<div class="am-u-sm-9">
														<input type="tel" id="user-phone" required
															   placeholder="请输入联系电话" name="phone" />
													</div>
												</div>
												<div class="am-form-group">
													<label for="user-email" class="am-u-sm-3 am-form-label">
														电子邮件 / Email </label>
													<div class="am-u-sm-9">
														<input type="email" id="user-email" required placeholder="输入你的电子邮件 / Email" name="email" />
													</div>
												</div>
												<div class="am-form-group">
													<label for="user-intro" class="am-u-sm-3 am-form-label">
														备注/ Introg </label>
													<div class="am-u-sm-9">
									<textarea class="" rows="5" id="user-intro" name="introg"
											  placeholder="输入备注"></textarea>
														<small>250字以内...</small>
													</div>
												</div>
												<div class="am-form-group">
													<div class="am-u-sm-9 am-u-sm-push-3">
														<input type="submit" value="添加用户" />
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>

							</div>
							<!-- content end -->
						</div>
						<!--添加角色 end-->
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

		var btn_edit = function(id) {
			$.get("editUser",{uid:id},function(result){
				$("#editBox").css("display","block");
				$("#uid").val(result.uid);
				$("#uname").val(result.uname);
				$("#ugender").val(result.gender);
				$("#uphone").val(result.phone);
				$("#uemail").val(result.email);
				$("#uintrog").val(result.introg);
			},"json");
		}


		function updateUser() {
			var uid = $("#uid").val();
			var uname = $("#uname").val();
			var gender = $("#ugender").val();
			var phone = $("#uphone").val();
			var email = $("#uemail").val();
			var introg = $("#uintrog").val();
			$.get("updateOne",{
				uid:uid,
				uname: uname,
				gender: gender,
				phone: phone,
				email: email,
				introg: introg
			},function(result){

			},"json")}

		function closeBox(){
			$("#editBox").fadeOut();
			setTimeout("location.href=\"${pageContext.request.contextPath }/userlist\"",100);

		}

		var btn_delete = function(id) {
			$.jq_Confirm({
				message: "您确定要删除吗?",
				btnOkClick: function() {
						location.href="${pageContext.request.contextPath }/deleteuserbyid/"+id

						}
					});
				}

	</script>
</div>
<div id="editBox" style="display: none;position: absolute;width: 200px;height: 300px;margin-top:10px">
	<table>

		<tr>
			<td>编号</td>
			<td><input type="text" id="uid"></td>
		</tr>
		<tr>
			<td>名字</td>
			<td><input type="text" id="uname"></td>
		</tr>
		<tr>
			<td>性别</td>
			<td><input type="text" id="ugender"></td>
		</tr>
		<tr>
			<td>电话</td>
			<td><input type="text" id="uphone"></td>
		</tr>
		<tr>
			<td>邮箱</td>
			<td><input type="text" id="uemail"></td>
		</tr>
		<tr>
			<td>备注</td>
			<td><textarea rows="3" id="uintrog"></textarea></td>
		</tr>
		<tr>
			<td><input type="button" value="修改" onclick="updateUser()" onmouseup="closeBox()" id="update"></td>
			<td><input type="button" value="关闭" onclick="closeBox()" id="closeBox"></td>
		</tr>
	</table>
</div>
</body>

</html>