	function checkValue() {
		var form = document.userInfo;

		 if (!form.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		} 

		 if (form.idDuplication.value != "idCheck") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}  

		if (!form.pass.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		
		if (form.pass.value != form.passcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		if (!form.name.value) {
			alert("이름을 입력하세요.");
			return false;
		}

		if (!form.mail1.value) {
			alert("메일 주소를 입력하세요.");
			return false;
		}
		

		if (!form.cell1.value) {
			alert("휴대폰 앞자리를 입력하세요.");
			return false;
		}
		
		if (!form.cell2.value) {
			alert("휴대폰 뒷자리를 입력하세요.");
			return false;
		}
		
		if (!form.captcha.value){
			alert("화면에 보이는 보안코드를 입력해주세요");
			return false;
			}
		}
		

	
	function goFirstForm() {
		location.href = "MainForm.do";
	}

	
	function openIdChk() {

		window.name = "parentForm";
		window.open("/docoding/login/view/idCheck.jsp", "chkForm",
				"width=500, height=300, resizable = no, scrollbars = no");
	}

	function inputIdChk() {
		document.userInfo.idDuplication.value = "idUncheck";
	}
    
