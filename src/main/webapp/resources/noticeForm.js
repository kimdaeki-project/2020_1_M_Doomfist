/**
 * 
 */
$("#btn").click(function() {
			//title, contents 데이터 유무 검증

			var title = $('#title').val();
			contents = $("#contents").summernote('code');
			/* var contents=$('#contents').val(); // 섬머노트가 아닐떄 사용
			console.log(title=='');
			console.log(contents=="");	
			console.log(title.length);
			console.log(contents.length);
			 */

			//섬머노트 사용중일떄만 사용가능한 검증법
			console.log($("#contents").summernote('isEmpty'));

			var ch1 = title != "";
			var ch2 = $("#contents").summernote('isEmpty'); // 값이 없어야 true
		
			// 제목과 내용을 입력햇는지.
			if (ch1 && !ch2) {
				//form 전송(submit event 강제 발생하게 function() 안씀 )
				$("#frm").submit();
				alert("글쓰기완료");
				/*$("#con").val(contents)     content가 널일떄 위에서 수정하고 여기도 확인.*/
			} else {
				//submit event 종료
				alert("필수요소는 다 입력하세요");

			}

		});