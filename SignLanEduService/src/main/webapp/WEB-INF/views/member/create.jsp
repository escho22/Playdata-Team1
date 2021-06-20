<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html> 
<html lang="ko">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<!-- 페이지 탭에 표시될 아이콘 및 페이지명 -->
	<title>Create an Account</title>
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	 
	<!-- Bootstrap icons-->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
	 
	<!-- Google fonts-->
	<link rel="preconnect" href="https://fonts.gstatic.com" />
	<link href="https://fonts.googleapis.com/css2?family=Newsreader:ital,wght@0,600;1,600&amp;display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,500;0,600;0,700;1,300;1,500;1,600;1,700&amp;display=swap" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,400;1,400&amp;display=swap" rel="stylesheet" />
	 
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="<%=request.getContextPath()%>/css/styles.css" rel="stylesheet" type="text/css"/>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
	
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/scripts.js"></script>


<!--******  함수   *******-->
<script type="text/javascript">
	$(function() { // 자동 실행
		$('#btn_checkID').on('click', checkID);
		$('#btn_close').on('click', setFocus);
	});

	// jQuery ajax 요청
	function checkID() {
		var frm = $('#frm'); // id가 frm인 태그 검색
		var id = $('#m_id', frm).val(); // frm 폼에서 id가 'id'인 태그 검색
		var params = '';
		var msg = '';

		if ($.trim(m_id).length == 0) { // id를 입력받지 않은 경우
			msg = 'ID를 입력하세요.<br>ID 입력은 필수 입니다.<br>ID는 3자이상 권장합니다.';

			$('#modal_content').attr('class', 'alert alert-danger'); // Bootstrap CSS 변경
			$('#modal_title').html('ID 중복 확인'); // 제목 
			$('#modal_content').html(msg); // 내용
			$('#modal_panel').modal(); // 다이얼로그 출력
			return false;
		} else { // when ID is entered
			params = 'm_id' + m_id;
			// var params = $('#frm').serialize(); // 직렬화, 폼의 데이터를 키와 값의 구조로 조합
			// alert('params: ' + params);

			$.ajax({
						url : './checkID', // controller get요청
						type : 'get', // post
						cache : false, // 응답 결과 임시 저장 취소
						async : true, // true: 비동기 통신
						dataType : 'json', // 응답 형식: json, html, xml...
						data : params, // 데이터
						success : function(rdata) { // 서버로부터 성공적으로 응답이 온경우
							// alert(rdata);
							var msg = "";

							if (rdata.cnt > 0) {
								$('#modal_content').attr('class',
										'alert alert-danger'); // Bootstrap CSS 변경
								msg = "이미 사용중인 ID 입니다.";
								// $('#btn_close').attr("data-focus", "이동할 태그 지정"); 
								$('#btn_close').attr("data-focus", "m_id");
							} else {
								$('#modal_content').attr('class',
										'alert alert-success'); // Bootstrap CSS 변경
								msg = "사용 가능한 ID 입니다.";
								$('#btn_close').attr("data-focus", "m_pw");
							}

							$('#modal_title').html('ID 중복 확인'); // 제목 
							$('#modal_content').html(msg); // 내용
							$('#modal_panel').modal(); // 다이얼로그 출력
						},
						// Ajax 통신 에러, 응답 코드가 200이 아닌경우, dataType이 다른경우 
						error : function(request, status, error) { // callback 함수
							var msg = 'ERROR\n';
							msg += 'request.status: ' + request.status + '\n';
							msg += 'message: ' + error;
							console.log(msg);
						}
					});
		}

	}

	function setFocus() { // focus 이동
		var tag = $('#btn_close').attr('data-focus'); // 포커스를 적용할 태그 id 가져오기
		$('#' + tag).focus(); // 포커스 지정
	}

	function send() {
		if ($('#m_pw').val() != $('#m_pw2').val()) {
			msg = '입력된 패스워드가 일치하지 않습니다.<br>';
			msg += "패스워드를 다시 입력해주세요.<br>";

			$('#modal_content').attr('class', 'alert alert-danger'); // CSS 변경
			$('#modal_title').html('패스워드 일치 여부  확인'); // 제목 
			$('#modal_content').html(msg); // 내용
			$('#modal_panel').modal(); // 다이얼로그 출력

			$('#btn_send').attr('data-focus', 'passwd');

			return false; // submit 중지
		}

	}
	</script>
</head>


<!-- ////////////////////////////////////////////////////////////// -->
<!-- 1. 함수 먹는지 확인   asdasdas
	 2. 중복확인 메세지 출력하기 -->


<body>
	<section class="signup">
		<!-------------- Modal 알림창 시작-------------->
		<div id="modal_panel" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title" id='modal_title'></h4>
					</div>
					<!-- 내용 -->
					<div class="modal-body">
						<p id='modal_content'></p>
					</div>
					<div class="modal-footer">
						<button id="btn_close" type="button" data-focus=""
							class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		<!-------------- Modal 알림창 종료 -------------->
		<div class="container px-6">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-6">
							<div class="p-6">
								<div class="text-center">
									<h1 class="h3 text-gray-900 mb-5 font-card">Create an Account</h1>
								</div>
								<form class="user" name='frm' id='frm' method='POST'
									action='./create' class="form-horizontal"
									onsubmit="return send()">
									<div class="form-group row">
										<div class="col-sm-6 mb-4 mb-sm-0">
											<input type='text' class="form-control form-control-user"
												name='m_id' id='m_id' value='' required="required"
												placeholder="* ID" autofocus="autofocus">
										</div>
										<div class="col-sm-6">
											<button type='button' id="btn_checkID"
												class="btn btn-secondary rounded-pill px-3 mb-4 mb-lg-0">ID check</button>
											<!-- ID 중복 관련 메시지 -->
											<span id='id_span'></span>
										</div>

									<!-- 									<div class="form-group has-success">
										<label class="form-label mt-4" for="inputValid">Valid
											input</label> <input type="text" value="correct value"
											class="form-control is-valid" id="inputValid">
										<div class="valid-feedback">Success! You've done it.</div>
									</div>

									<div class="form-group has-danger">
										<label class="form-label mt-4" for="inputInvalid">Invalid
											input</label> <input type="text" value="wrong value"
											class="form-control is-invalid" id="inputInvalid">
										<div class="invalid-feedback">Sorry, that username's
											taken. Try another?</div>
									</div> -->

									</div>
									<div class="form-group row">
										<div class="col-sm-6 mb-3 mb-sm-0">
											<input type='password' class="form-control form-control-user"
												name='m_pw' id='m_pw' value='' required="required"
												placeholder="* Password">
										</div>
										<div class="col-sm-6">
											<input type='password' class="form-control form-control-user"
												name='m_pw2' id='m_pw2' value='' required="required"
												placeholder="* Repeat Password">
										</div>
									</div>
									<div class="form-group">
										<input type='text' class="form-control form-control-user"
											name='m_name' id='m_name' value='' required="required"
											placeholder="* Name">
									</div>
									<div class="form-group row">
										<div class="col-sm-6">
											<input type="text" class="form-control form-control-user"
												id="exampleInputEmail" placeholder="Birth">
										</div>
										<div class="col-sm-6">
											<input type="email" class="form-control form-control-user"
												id="exampleInputEmail" placeholder="Gender">
										</div>
									</div>
									<div class="form-group">
										<input type='text' class="form-control form-control-user"
											name='email' id='email' value='' required="required"
											placeholder="* Email Address">
									</div>
									<div class="form-group row">
										<div class="col-sm-12 mb-3" align="right">
											<button id='btn_send'
												class="btn btn-primary rounded-pill px-3 mb-lg-0 mx-1">Register Account</button>
											<button type="button" onclick="location.href='../'"
												class="btn btn-primary rounded-pill mb-lg-0">Cancel</button>
										</div>
									</div>
								</form>
								<hr>
								<div class="form-group">
									<div class="text-center">
										<a class="small" href="forgot-password.html">Forgot Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href='${root}/users/login'>Already have an account? Sign-in!</a>
									</div>
								</div>
								<div class="col-lg-6 d-none d-lg-block bg-register-image"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- 	<aside class="aside_right">
		<a href="javascript:location.reload();">새로고침</a> 
		<span class='menu_divide'>│</span> <A href='./create'>회원 가입</a> 
		<span class='menu_divide'>│</span> <A href='./list'>목록</a>
		</aside> -->

	</section>
</body>
</html>
