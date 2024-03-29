<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>进存销管理系统_By SSM A1 第一组</title>
		<link href="${pageContext.request.contextPath }/asserts/css/Site.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/asserts/css/zy.layout.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/asserts/css/zy.form.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/asserts/css/font-awesome.min.css" rel="stylesheet" />
		<style type="text/css">
			.headerlitooleulsubitem_gray {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #BCD4E5;
				border-right: 1px solid #BCD4E5;
				border-bottom: 1px solid #BCD4E5;
				box-shadow: 0px 0px 5px #BCD4E5;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}

			.headerlitooleulsubitem_red {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #E5BCD4;
				border-right: 1px solid #E5BCD4;
				border-bottom: 1px solid #E5BCD4;
				box-shadow: 0px 0px 5px #E5BCD4;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}

			.headerlitooleulsubitem_gray>li,
			.headerlitooleulsubitem_red>li {
				height: 45px;
				background-color: White;
				padding: 0px 10px;
				border-bottom: 1px solid #E4ECF3;
				font-size: 14px;
				line-height: 26px;
			}

			.headerlitoolelisubitemtitle_gray {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #ECF2F7 !important;
				margin: 0px !important;
				color: #8090A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #BCD4E5 !important;
			}

			.headerlitoolelisubitemtitle_red {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #F7ECF2 !important;
				margin: 0px !important;
				color: #B471A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #E5BCD4 !important;
			}

			.headerlitooleulsubitem_gray>li:hover {
				background-Color: #F4F9FC;
			}

			.headerlitooleulsubitem_red>li:hover {
				background-color: #FCF4F9;
			}

			.ulsubitemitems>li {
				float: left;
				height: 20px;
				font-size: 13px;
				font-weight: normal !important;
				color: #555 !important;
			}

			.ulsubitemitems>li:last-child {
				clear: both;
				width: 100%;
				height: 10px;
				margin-top: 8px;
				background-color: #DADADA;
			}

			.headerlitools_info {
				background-color: #0a318d;
				height: 45px;
				padding: 0px 10px;
				width: 135px;
			}

			.headeruserface {
				background-image: url('/asserts/Resources/images/logo.png');
				width: 40px;
				height: 40px;
				background-color: white;
				margin: 2px 10px 2px 2px;
				border-radius: 20px;
				float: left;
			}

			.headerlitools_ulinfo {
				background-Color: white;
				border-left: 1px solid #D1D1D1;
				border-right: 1px solid #D1D1D1;
				border-bottom: 1px solid #D1D1D1;
				box-shadow: 0px 0px 5px #D1D1D1;
				width: 160px;
				margin-left: -20px;
				color: Black;
				display: none;
			}

			.headerlitools_ulinfo>li {
				height: 35px;
				background-color: White;
				padding: 0px 10px;
				font-size: 14px;
				line-height: 36px;
			}

			.headerlitools_ulinfo>li:hover {
				background-Color: #FEE188;
			}

			.dvcontent {
				padding: 0px 20px;
				margin: 45px auto 0px auto;
				overflow: auto;
			}

			.dvpagerecord {
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				float: left;
				border: 1px solid #D9D9D9;
				text-decoration: underline;
				font-size: 14px;
				cursor: pointer;
			}

			.dvpagerecord:hover {
				cursor: pointer;
			}

			.dvpagerecord:hover i {
				text-decoration: underline;
			}

			.ulpageRecord {
				max-width: 165px;
				float: left;
				white-space: nowrap;
				overflow: hidden;
				margin: 0px;
				padding: 0px;
			}

			.ulpageRecord li {
				margin: 0px;
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				display: inline-block;
				font-size: 14px;
				border: 1px solid #D9D9D9;
			}

			.ulpageRecord li:hover {
				text-decoration: underline;
				cursor: pointer;
			}

			.currentPage {
				background-color: #2468a9 !important;
				color: white !important;
			}

			#warn {
				width: 300px;
			}

			#warn tr {
				width: 300px;
				height: 20px;
			}

			#warn tr td {
				width: 90px;
				height: 20px;
				text-align: center;
			}

			iframe {
				border: none;
			}
		</style>
		<link href="${pageContext.request.contextPath }/asserts/css/zy.menu.css" rel="stylesheet" />
	</head>

	<body>
		<div class="dvheader">
			<div class="dvheadertools">
				<span class="headerspantitle">服装进销存管理系统</span>
				<ul class="headerultools">

					<li class="headerlitools_info headerlitools" style="background-color: #075597">
						<div class="headeruserface" style="text-align: center;"><i class="icon-user" style="color: black;font-size: 19px;"></i></div>
						<span id="user">${login_user }</span><i style="margin-left: 8px;"></i>

							<li style="border-top: 1px solid #E4ECF3;">
								&nbsp
								<i class="icon-off" style="margin-right: 10px;"></i>
								<a href="outlogin" style="color: black;">退出</a>
							</li>
					</li>
				</ul>
			</div>
		</div>
		<div class="dvcontent">

			<ul class="ulleftmenu" style="border-right: 1px solid #ddd;">

				<li class="limenuitem">
					<i class="icon-cog menuicon"></i>系统菜单<b class="arrow icon-angle-down arrow-down"></b>
					<ul class="ulleftsubitems">
						<a href="${pageContext.request.contextPath }/Class/list" target="right">
							<li>分类管理</li>
						</a>
						<a href="${pageContext.request.contextPath }/Product/list" target="right">
							<li>库存管理</li>
						</a>
						<a href="InProduct/list" target="right">
							<li>入库管理</li>
						</a>
						<a href="${pageContext.request.contextPath }/Warn/list" target="right">
							<li>预警信息设置</li>
						</a>
						<a href="${pageContext.request.contextPath }/OutProduct/list" target="right">
							<li>出库管理</li>
						</a>

						<a href="${pageContext.request.contextPath }/userlist" target="right" id="usermanger">
							<li>用户管理</li>
						</a>
						<a href="${pageContext.request.contextPath }/toupdatepwd" target="right"><li >修改密码</li></a>
					</ul>
				</li>
			</ul>
			<div style="position: absolute; left: 191px; right: 20px; ">
				<iframe src="Class/list" scrolling="no"  width="100%" height="1200" name="right" border="none"></iframe>
			</div>
		</div>
		<script src="${pageContext.request.contextPath }/asserts/js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/asserts/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath }/asserts/js/_layout.js"></script>
		<script>
			$(function () {
				if ($("#user").html()!="admin"){
					$("#usermanger").hide();
				}
			})
		</script>
		

	</body>

</html>