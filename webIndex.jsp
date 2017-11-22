<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/webpage/include/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
	<meta name="description" content="User login page" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="shortcut icon" href="images/favicon.png" type="image/png">
	
	<link href="${ctxStatic}/bootstrap/3.3.4/css_default/bootstrap.min.css"	type="text/css" rel="stylesheet" />
	<link href="${ctxStatic}/awesome/4.4/css/font-awesome.min.css" rel="stylesheet" />
	<!-- jeeplus -->
	<link href="${ctxStatic}/common/jeeplus.css" type="text/css" rel="stylesheet" />
	
	<!-- text fonts -->
	<link rel="stylesheet" href="${ctxStatic }/common/login/ace-fonts.css" />
	
	
	<!--[if lte IE 9]>
		<link rel="stylesheet" href="../assets/css/ace-part2.css" />
	<![endif]-->
	<link rel="stylesheet" href="${ctxStatic }/common/login/ace-rtl.css" />
	<link rel="stylesheet" href="${ctxStatic }/common/login/screen.css" />
	<link rel="stylesheet" href="${ctxStatic }/swiper-3.4.2/css/swiper.min.css">
	
	
	<style type="text/css">
	.home-template .main-header {
    	padding-top: 0px;
    }
	.bound {
		background-color: white;
		background-color: rgba(255, 255, 255, 0.95);
		border-radius: 40px;
	}
	.left-5px{
		padding-left: 0px;
	}
	.panel-heading-5px{
		padding: 5px 10px;
		font-weight: bold;
	}
	
	.login .form-group {
	    margin-bottom: 11px;
	}

	.input-icon {
	  position: relative;
	}
	span.input-icon {
	  display: inline-block;
	}
	.input-icon > input {
	  padding-left: 24px;
	  padding-right: 6px;
	}
	.input-icon.input-icon-right > input {
	  padding-left: 6px;
	  padding-right: 24px;
	}
	.input-icon > .ace-icon {
	  padding: 0 3px;
	  z-index: 2;
	  position: absolute;
	  top: 1px;
	  bottom: 1px;
	  left: 3px;
	  line-height: 30px;
	  display: inline-block;
	  color: #909090;
	  font-size: 16px;
	}
	.input-icon.input-icon-right > .ace-icon {
	  left: auto;
	  right: 3px;
	}
	.input-icon > input:focus + .ace-icon {
	  color: #579;
	}
	.input-icon ~ .help-inline {
	  padding-left: 8px;
	}
	
	/* Validation */

	label.error {
	    color: #cc5965;
	    display: inline-block;
	    margin-left: 5px;
	}
	
	.form-control.error {
	    border: 1px solid #cc5965;
	}
	
	.login-layout .widget-box {
	  visibility: hidden;
	  position: fixed;
	}
	.login-layout .widget-box.visible {
	  visibility: visible;
	  position: relative;
	}
	
	
	.widget.news{
		min-height:250px;
	}
	
	.widget.news .title{
		margin-bottom: 10px;
	}
	
	.widget.news .title small{
		float: right;
		font-weight: bold;
	}
	
	.widget.news .title small a{
	}

	.widget .swiper-container {
	   width: 100%;
	   min-height:195px;
	   line-height: 1em;
	}
	
	.widget .swiper-container .thumbnail{
		border: none;
	}
	
	.widget .swiper-container {
		width:100%;
		height:100%;
	}
	
	.widget .swiper-container .thumbnail .caption {
	    padding: 5px;
	    padding-bottom: 0px;
	}
	
	.widget .swiper-container .thumbnail .caption p {
	    margin: 0px;
	}
	.main-header h4{color:#FFF;}
	</style>
	<title>${fns:getConfig('productName')}首页</title>
	<script type="text/javascript">
		if (window.top !== window.self) {
			window.top.location = window.location;
		}
	</script>
</head>
<body class="home-template">
	<!-- start header -->
	<header class="main-header">
		<div class="container">
			<div class="row">
			   <div class="col-sm-12">
				  <h1><img class="" src="${ctxStatic }/common/login/images/hd_logo.png" alt="" style="cursor: pointer;"> <small>实习管理信息平台</small></h1>
			   </div>
			</div>
		</div>
	</header>
	<!-- end header -->
 	<!-- start navigation -->
	<nav class="main-navigation">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="navbar-header">
						<span class="nav-toggle-button collapsed" data-toggle="collapse" data-target="#main-menu">
						<span class="sr-only">Toggle navigation</span>
						<i class="fa fa-bars"></i>
						</span>
					</div>
					<div class="collapse navbar-collapse" id="main-menu" style="text-align: left;">
						<ul class="menu">
							<li <c:if test="${type == null}">class="nav-current"</c:if> role="presentation"><a href="${ctxF}/index">首页</a></li>
							<c:forEach items="${menuList}" var="menu">
							
							<li <c:if test="${menu.mklxdm == type}">class="nav-current"</c:if> role="presentation"><a href="${ctxF}/index?type=${menu.mklxdm}" title="${menu.mklxmc}" target="_self">${menu.mklxmc}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- end navigation -->
	
	<!-- start site's main content area -->
	<section class="content-wrap">
		<div class="container">
			<div class="row">
				<main class="col-md-4 sidebar">
					
					<!-- start tag cloud widget -->
					<div class="widget news">
						<h4 class="title">图片新闻</h4>
						<div class="content community">
							<div class="swiper-container swiper-container-horizontal">
							    <div class="swiper-wrapper">
							    	<c:forEach items="${imageNewsList}" var="news">
									<div class="swiper-slide" >
							        	<div class="thumbnail">
								          	<img data-src="holder.js/100%x200" alt="100%x200" style="height: 200px; width: 100%; display: block;" src="${news.tp}" data-holder-rendered="true">
								          	<div class="caption">
								            	<p>${news.bt}</p>
								          	</div>
								        </div>
							        </div>
									</c:forEach>
							    </div>
							    <!-- 如果需要分页器 -->
							    <div class="swiper-pagination"></div>
							</div>
						</div>
					</div>
					<!-- end tag cloud widget -->	
					
					<c:forEach items="${menuList}" var="widget">
						<c:if test="${widget.modv == 0}">
						<!-- start tag cloud widget -->
						<div class="widget news">
							<h4 class="title">${widget.mklxmc}<small><a href="${ctxF}/index?type=${widget.mklxdm}" title="${widget.mklxmc}" target="_self">更多</a></small></h4>
							<div class="content community">
								<c:forEach items="${newsMap[widget.mklxdm]}" var="news">
									<a href="${ctxF}/news?id=${news.id}" title="${news.bt}" target="_blank">
									<p >${news.bt}</p>
									</a>
								</c:forEach>
							</div>
						</div>
						<!-- end tag cloud widget -->
						</c:if>
					</c:forEach>
						
				</main>
				<main class="col-md-5 sidebar">
					<c:forEach items="${menuList}" var="widget">
						<c:if test="${widget.modv == 1}">
						<!-- start tag cloud widget -->
						<div class="widget news">
							<h4 class="title">${widget.mklxmc}<small><a href="${ctxF}/index?type=${widget.mklxdm}" title="${widget.mklxmc}" target="_self">更多</a></small></h4>
							<div class="content community">
								<c:forEach items="${newsMap[widget.mklxdm]}" var="news">
									<a href="${ctxF}/news?id=${news.id}" title="${news.bt}" target="_blank">
									<p >${news.bt}</p>
									</a>
								</c:forEach>
							</div>
						</div>
						<!-- end tag cloud widget -->
						</c:if>
					</c:forEach>
						
				</main>
				<aside class="col-md-3 sidebar login-layout">
					<!-- start widget -->
					<!-- end widget -->	
					
					<!-- start tag login widget -->
					<div class="widget widget-box thumbnail login visible" id="login-box">
						<h4 class="title">
							<i class="ace-icon fa fa-user blue"></i>
							用户登录
						</h4>
						<div class="content community">
							<form id="loginForm" class="form-signin form-horizontal" action="${ctx}/login" method="post">
								<!-- 防止浏览器自动填充密码 -->
								<input type="text" style="display: none;" />
								<input type="password" style="display: none;" />
								<p class="text-danger hidden" id="messageBox"></p>
								<!-- 防止浏览器自动填充密码 end -->
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;"> 
										<input type="text" id="username" name="username" class="form-control required input-sm" value="" placeholder="用户名" />
										<i class="ace-icon fa fa-user"></i>
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;" > 
										<input type="password" id="password" name="password" value=""
											class="form-control required input-sm" placeholder="密码" />
										<i class="ace-icon fa fa-lock"></i>
									</span>
								</div>
								<c:if test="${isValidateCodeLogin}">
									<div class=" m-b text-muted validateCode">
										<label class="input-label mid" for="validateCode">验证码:</label>
										<sys:validateCode name="validateCode" inputCssStyle="margin-bottom:5px;" />
									</div>
								</c:if>
								<div class="form-group">
									<div class="col-md-12">
										<div class="checkbox ">
											<label class="checkbox-inline"> 
												<input type="checkbox" id="rememberMe" name="rememberMe" ${rememberMe ? 'checked' : ''} class="ace" />
												<span class="lbl"> 记住我</span>
											</label>
											<button type="submit" class="pull-right btn btn-xs btn-primary" style="width: 40%;">
												<i class="ace-icon fa fa-key"></i> <span class="bigger-110">登录</span>
											</button>
										</div>
									</div>
								</div>
							</form>
							<div class="form-options clearfix">
								<div>
									<a href="#" data-target="#forgot-box" class="pull-left">
										<font color=" #007aff;"><i class="ace-icon fa fa-arrow-left"></i>
										忘记密码</font> 
									</a>
								</div>

								<div>
									<a href="#" data-target="#signup-box" class="pull-right user-signup-link">
										<font color=" #A73438">实习基地申请 
										<i class="ace-icon fa fa-arrow-right"></i></font>
									</a>
								</div>
							</div>
							
						</div>
					</div>
					
					<div class="widget widget-box thumbnail login" id="forgot-box">
						<h4 class="title header red lighter bigger">
							<i class="ace-icon fa fa-key"></i>
							找回密码
						</h4>
						<div class="content community">
							<p class="text-danger">请输入您的注册手机号，您将会收到新的密码。</p>
							<p class="text-danger hidden" id="messageBox"></p>
							<form id="resetForm">
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;" > 
										<input id="tel_resetpass" name="mobile" type="tel" class="form-control text-muted required isMobile input-sm" placeholder="请输入手机号" />
										<i class="ace-icon fa fa-envelope"></i>
									</span>
								</div>
								<div class="clearfix">
									<button id="sendPassBtn" type="button" class="width-35 pull-right btn btn-sm btn-danger">
										<i class="ace-icon fa fa-lightbulb-o"></i>
										<span class="bigger-110">发送!</span>
									</button>
								</div>
							</form>
							<div class="form-options center">
								<a href="#" data-target="#login-box" class="">
									<font color=" #A73438"><i class="ace-icon fa fa-arrow-left"></i>
									返回登录
									</font>
								</a>
							</div>
						</div>
					</div>
					
					<div class="widget widget-box thumbnail login" id="signup-box">
						<h4 class="title header red lighter bigger">
							<i class="ace-icon fa fa-users blue"></i>
							用户注册
						</h4>
						<div class="content community">
							<form:form id="inputForm" modelAttribute="user" action="${ctx}/sys/register/registerUser" method="post" class="form-group form-horizontal">
								<input  type="hidden" value="system" name="roleName"><!-- 默认注册用户都是超级管理员 -->
								<!-- 防止浏览器自动填充密码 -->
								<input type="text" style="display: none;" />
								<input type="password" style="display: none;" />
								<p class="text-danger hidden" id="messageBox"></p>
								<!-- 防止浏览器自动填充密码 end -->
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;"> 
										<input id="tel" name="mobile" type="text" value="" maxlength="11" minlength="11" class="form-control text-muted required input-sm isMobile"  placeholder="手机号"/>
										<i class="ace-icon fa fa-phone"></i>
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;"> 
										<input id="code" name="randomCode" type="text" value="" maxlength="4" minlength="4" class="form-control input-sm required" style="width:55%" placeholder="验证码"/>
										<button class="pull-right btn btn-sm btn-primary" style="width:40%" type="button" id="sendCodeBtn"  >
											<i class="ace-icon fa fa-lightbulb-o"></i>
											<span class="bigger-110">获取验证码!</span>
										</button>
										<label id="code-error" class="error" for="code" style="display:none"></label>
									</span>
								</div>
								
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;"> 
										<input id="userId" name="loginName" type="text" value="${user.loginName }" maxlength="20" minlength="3" class="form-control input-sm required" placeholder="用户名" />
										<i class="ace-icon fa fa-user"></i>
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;"> 
										<input id="newPassword" name="password" type="password" value="" maxlength="20" minlength="3"  class="form-control input-sm required" placeholder="密码" />
										<i class="ace-icon fa fa-lock"></i>
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon input-icon-right" style="width:100%;"> 
										<input id="confirmNewPassword" name="confirmNewPassword" type="password" value="" maxlength="20" minlength="3" class="form-control input-sm required" equalTo="#newPassword" placeholder="重复密码" />
										<i class="ace-icon fa fa-retweet"></i>
									</span>
								</div>
								<div class="form-group">
									<span class="checkbox-inline" style="width:100%;"> 
										<input name="ck1" type="checkbox" class="required ace" />
										<span class="lbl">
											我接受
											<a href="#">《申请协议》</a>
										</span>
										<label id="ck1-error" class="error" for="ck1" style="display: none;">必须接受用户协议</label>
									</span>
								</div>
								<div class="clearfix">
									<button type="reset" class="width-30 pull-left btn btn-sm" style="width:30%;">
										<i class="ace-icon fa fa-refresh"></i>
										<span class="bigger-110">重置</span>
									</button>

									<button type="submit" class="width-65 pull-right btn btn-sm btn-success" style="width:65%;">
										<span class="bigger-110">申请</span>

										<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
									</button>
								</div>
							</form:form>
							<div class="form-options center">
								<a href="#" data-target="#login-box" class="">
									<font color=" #A73438"><i class="ace-icon fa fa-arrow-left"></i>
									返回登录
									</font>
								</a>
							</div>
						</div>
					</div>
					
					<!-- end tag login widget -->	
					
					<!-- start tag cloud widget -->
					<div class="widget">
						<h4 class="title">友情链接</h4>
						<div class="content tag-cloud">
							<a href="http://www.ccnu.edu.cn/" target="_blank">华中师范大学</a>
							<a href="http://jwc.ccnu.edu.cn/" target="_blank">华中师范大学教务处</a>
							<a href="http://xk.ccnu.edu.cn/" target="_blank">华中师范大学教务管理系统</a>
						</div>
					</div>
					<!-- end tag cloud widget -->	
					
					<!-- start widget -->
					<!-- end widget -->	
					
					<!-- start widget -->
					<!-- end widget -->				
				</aside>
			</div>
		</div>
	</section>

	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<span><h4>Copyright ©   |	华中师范大学教务处</h4></span>  
					 
				</div>
			</div>
		</div>
	</div>
	
	<script src="${ctxStatic}/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="${ctxStatic}/jquery/jquery-migrate-1.1.1.min.js" type="text/javascript"></script>
	<script src="${ctxStatic}/jquery-validation/1.14.0/jquery.validate.js" type="text/javascript"></script>
	<script	src="${ctxStatic}/jquery-validation/1.14.0/localization/messages_zh.min.js"	type="text/javascript"></script>
	<script src="${ctxStatic}/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctxStatic}/swiper-3.4.2/js/swiper.jquery.min.js" type="text/javascript"></script>
	
	<!-- 引入layer插件 -->
	<script src="${ctxStatic}/layer-v2.3/layer/layer.js"></script>
	<script src="${ctxStatic}/layer-v2.3/layer/laydate/laydate.js"></script>
	<script src="${ctxStatic}/common/jeeplus.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		
		var mySwiper = new Swiper ('.swiper-container', {
		    //direction: 'vertical',
		    effect : 'fade',
		    loop: true,
		  	//自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换。
		    autoplay : 3000,
		    // 如果需要分页器
		    pagination: '.swiper-pagination',
	        paginationClickable: true/* ,
	        paginationBulletRender: function (swiper, index, className) {
	            return '<span class="' + className + '">' + (index + 1) + '</span>';
	        } */
            
            
		    // 如果需要前进后退按钮
		    //nextButton: '.swiper-button-next',
		    //prevButton: '.swiper-button-prev',
		    
		    // 如果需要滚动条
		    //scrollbar: '.swiper-scrollbar',
		});        
		
		$(document).on('click', '.form-options a[data-target]', function(e) {
			e.preventDefault();
			var target = $(this).data('target');
			$('.widget-box.visible').removeClass('visible');//hide others
			$(target).addClass('visible');//show target
		});
		
		$("#loginForm").validate({
			rules: {
				validateCode: {remote: "${pageContext.request.contextPath}/servlet/validateCodeServlet"}
			},
			messages: {
				username: {required: "请填写用户名."},password: {required: "请填写密码."},
				validateCode: {remote: "验证码不正确.", required: "请填写验证码."}
			},
			errorPlacement: function(error, element) {
				$("#messageBox").removeClass("hidden");
				error.appendTo($("#messageBox"));
			} 
		});
		
		// 如果在框架或在对话框中，则弹出提示并跳转到首页
		if(self.frameElement && self.frameElement.tagName == "IFRAME" || $('#left').length > 0 || $('.jbox').length > 0){
			alert('未登录或登录超时。请重新登录，谢谢！');
			top.location = "${ctx}";
		}
		
		$("#inputForm").validate({
			rules: {
				loginName: {remote: "${ctx}/sys/user/validateLoginName"},
				mobile: {remote: "${ctx}/sys/user/validateMobile"},
				randomCode: {
				  remote:{
					  url:"${ctx}/sys/register/validateMobileCode", 
					  data:{
				       	mobile:function(){
				          	return $("#tel").val();
				          }
		          		} 
					}
				}
			},
			messages: {
				confirmNewPassword: {equalTo: "输入与上面相同的密码"},
				ck1: {required: "必须接受用户协议."},
				loginName: {remote: "此用户名已经被注册!", required: "用户名不能为空."},
				mobile:{remote: "此手机号已经被注册!", required: "手机号不能为空."},
				randomCode:{remote: "验证码不正确!", required: "验证码不能为空."}
			},
			submitHandler: function(form){
				loading('正在提交，请稍等...');
				form.submit();
			},
			errorPlacement: function(error, element) {
				$("#messageBox").removeClass("hidden");
				$("#messageBox").text("输入有误，请先更正。");
				if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
					error.appendTo(element.parent().parent());
				} else {
					error.insertAfter(element);
				}
			}
		});

		$("#resetForm").validate({
			rules: {
				mobile: {remote: "${ctx}/sys/user/validateMobileExist"}
			},
			messages: {
				mobile:{remote: "此手机号未注册!", required: "手机号不能为空."}
			},
			submitHandler: function(form){
				loading('正在提交，请稍等...');
				form.submit();
			},
			errorContainer: "#messageBox",
			errorPlacement: function(error, element) {
				$("#messageBox").removeClass("hidden");
				$("#messageBox").text("输入有误，请先更正。");
				if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
					error.appendTo(element.parent().parent());
				} else {
					error.insertAfter(element);
				}
			}
		});
		// 手机号码验证
		jQuery.validator.addMethod("isMobile", function(value, element) {
		    var length = value.length;
		    var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
		    return (length == 11 && mobile.test(value));
		}, "请正确填写您的手机号码");

		$('#sendPassBtn').click(function () { 
			if($("#tel_resetpass").val()=="" || $("#tel_resetpass-error").text()!=""){
				top.layer.alert("请输入有效的注册手机号码！", {icon: 0});//讨厌的白色字体问题
				return;

			}
			$("#sendPassBtn").attr("disabled", true); 
			$.get("${ctx}/sys/user/resetPassword?mobile="+$("#tel_resetpass").val(),function(data){
				if(data.success == false){
					top.layer.alert(data.msg, {icon: 0});//讨厌的白色字体问题
					//alert(data.msg);
					$("#sendPassBtn").html("重新发送").removeAttr("disabled"); 
					clearInterval(countdown); 

				}

			});
			var count = 60; 
			var countdown = setInterval(CountDown, 1000); 
			function CountDown() { 
				$("#sendPassBtn").attr("disabled", true); 
				$("#sendPassBtn").html("等待 " + count + "秒!"); 
				if (count == 0) { 
					$("#sendPassBtn").html("重新发送").removeAttr("disabled"); 
					clearInterval(countdown); 
				} 
				count--; 
			}

			
		}) ;
		

		$('#sendCodeBtn').click(function () { 
			if($("#tel").val()=="" || $("#tel-error").text()!=""){
				top.layer.alert("请输入有效的注册手机号码！", {icon: 0});//讨厌的白色字体问题
				return;

			}
			$("#sendCodeBtn").attr("disabled", true); 
			$.get("${ctx}/sys/register/getRegisterCode?mobile="+$("#tel").val(),function(data){
				if(data.success == false){
					//top.layer.alert(data.msg, {icon: 0});讨厌的白色字体问题
					alert(data.msg);
					$("#sendCodeBtn").html("重新发送").removeAttr("disabled"); 
					clearInterval(countdown); 

				}
				
			});
			var count = 60; 
			var countdown = setInterval(CountDown, 1000); 
			function CountDown() { 
				$("#sendCodeBtn").attr("disabled", true); 
				$("#sendCodeBtn").html("等待 " + count + "秒!"); 
				if (count == 0) { 
					$("#sendCodeBtn").html("重新发送").removeAttr("disabled"); 
					clearInterval(countdown); 
				} 
				count--; 
			}
			
		}) ;
		
	});
	</script>
</body>
</html>
