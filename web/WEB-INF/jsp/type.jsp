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
		<style>
		
		</style>
	<body>
	<span id="tag" hidden>${tag}</span>
	<span id="tag1" hidden>0</span>

	<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul style="">
							<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">查看分类</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加分类</li>
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
												<th>分类编号</th>
												<th>分类名称</th>
												<th>分类描述</th>
												<th>编辑</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="c" items="${Cs}">
											<tr>
												<form action="${pageContext.request.contextPath }/Class/updateC">
												<td><input type="text"  value="${c.cid}" name="cid" hidden><span id="${c.cname}">${c.cid}</span></td>
												<td><input type="text" name="cname" value="${c.cname}" id="cnameinput${c.cid}" hidden><span id="cnamespan${c.cid}">${c.cname}</span></td>
												<td><input type="text" name="cintrog" value="${c.cintrog}" id="cintroginput${c.cid}" hidden><span id="cintrogspan${c.cid}">${c.cintrog}</span></td>
												<td class="edit"><button type="button" id="update_btn${c.cid}" onclick="btn_edit(${c.cid})"><i class="icon-edit bigger-120"></i>编辑</button><button hidden type="submit" id="sure_btn${c.cid}"><i class="icon-edit bigger-120"></i>确认编辑</button></td></form>
												<td class="delete"><button id="deletebtn${c.cname}" onclick="btn_delete('${c.cname}')"><i class="icon-trash bigger-120"></i>删除</button></td>
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
							action="${pageContext.request.contextPath }/Class/addC" method="post">
						
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
									分类名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="cname" required
										placeholder="分类名称" name="cname">
										<small>10字以内...</small>
								</div>
							</div>
							<div class="am-form-group">
								<label class="am-u-sm-3 am-form-label">
									备注</label>
								<div class="am-u-sm-9">
									<textarea class="" rows="5" id="cintrog" name="cintrog"
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
		
		</div>
		<!-- content end -->
	</div>
							<!-- end-->
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
				var btn_edit = function(cid){
				$("#cnamespan"+cid).hide()
				$("#cintrogspan"+cid).hide()
				$("#update_btn"+cid).hide()
				$("#cnameinput"+cid).show()
				$("#cintroginput"+cid).show()
				$("#sure_btn"+cid).show()
				}
				var btn_delete = function(cname) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							location.href="${pageContext.request.contextPath }/Class/deleteC/"+cname;

						}
					});
				}
			</script>

		</div>
	</body>

</html>