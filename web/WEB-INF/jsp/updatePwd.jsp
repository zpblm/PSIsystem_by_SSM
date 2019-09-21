<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<div class="am-cf admin-main" style="padding-top: 0px;">
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<input type="text" value="${login_pwd}" id="opwd" name="opwd" style="visibility: hidden">
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						<form class="am-form am-form-horizontal"
							action="/updatepwd" method="post" id="mpwdfrom">
                            <input type="text" value="${login_user}" id="user" name="uname" style="visibility: hidden">
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
								原密码</label>
								<div class="am-u-sm-9">
									<input value="" type="text" required
										placeholder="原密码" name="pwd" id="pwd">
										<small>原密码...</small>
								</div>
							</div>
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
								新密码</label>
								<div class="am-u-sm-9">
									<input value="" type="password" required
										placeholder="新密码" name="npwd">
										<small>新密码...</small>
								</div>
							</div>

						<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="修改" />
									<span style="color: darkseagreen" id="stag" hidden>修改成功！</span>
									<span style="color: crimson" id="ftag" hidden>你输入的原密码不正确！</span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<footer class="admin-content-footer">
			<hr>
			<p class="am-padding-left"></p>
			</footer>
		</div>
		<!-- content end -->
	</div>
							<!-- end-->
			</div>
	</body>
	<script src="${pageContext.request.contextPath }/asserts/js/jquery-1.7.2.min.js" type="text/javascript"></script>

	<script>
		$(document).ready(function () {
			$("#mpwdfrom").submit(function () {
				if($("#pwd").val()==$("#opwd").val()){
					$("#ftag").hide()
					$("#stag").show()
					setTimeout("return true",1000)
				}else{
					$("#stag").hide()
					$("#ftag").show()
				    return false;
				}
			})
		})
</script>
</html>
