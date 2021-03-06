<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>받은 메시지</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/view.css">
<script>
$(function(){
    //목록 버튼 클릭시 이벤트
	$("#BackAndReplace").click(function(){
		location.href=document.referrer; //뒤로가기 후 새로고침 기능
	});
	
    
	//메시지 삭제 버튼을 클릭한 경우
	$("#delete").click(function(event){
		var answer = confirm("정말 삭제하시겠습니까?");
		console.log(answer); //취소를 클릭한 경우-false
		if(!answer){ //취소를 클릭한 경우
			event.preventDefault(); //이동하지 않습니다.
		}
	});
    
    
	
});

//메시지 보내기 버튼 클릭
function messagePopUp(){
	var receiver = "${messagedata.sender_id}"; 
	var re_title ="Re : "+"${messagedata.message_title}";

	window.open("${pageContext.request.contextPath}/message/send?receiver_id="+receiver+"&re_title="+re_title,
			    "post", "width=600, height=700, scrollbars=yes");
};
</script>
<style>
#send{background-color:white; color:#dc3545;  height:40px;
        border-radius:10px; border: 2px solid #dc3545;} 
#image1{margin-top:-2%}
#div1, #div2, #div3{float:left; padding:10px;}
#div123{margin: 0 auto; width:50%} 
.text-danger{border-color:#dc3545;} 
</style>
</head>
<body>
<div class="container">
	<jsp:include page="../common/header.jsp"/>
	
	<div class="container">
		<p class="text-danger">
		  <font size = 4>받은 메시지함</font>&nbsp;&nbsp;&nbsp;
		</p>
		<hr class="text-danger"> 
	</div>
	
<div class="container">
  <table class="table" style="border-top:none">
    <tr>
      <td><div>보낸이</div></td>
      <td><div>${messagedata.sender_id}</div></td>
    </tr>
    <tr>
      <td><div>받는이</div></td>
      <td><div id="receiver">${messagedata.receiver_id}</div></td>
    </tr>
    <tr>
      <td><div>제목</div></td>
      <td><c:out value="${messagedata.message_title}" /></td>
    </tr>
    <tr>
      <td><div>내용</div></td>
      <td style="padding-right:0px"><textarea class="form-control" rows="5"
          readOnly>${messagedata.message_content}</textarea></td>
    </tr>
  
  </table>
 </div>
  
  <div id="div123">
  <div id="div1">
    <button id="send" class="btn btn-info" onClick="messagePopUp()">
      <img id="image1" src="${pageContext.request.contextPath}/resources/image/reply_message.png" alt="메시지  보내기" width="30px">              
           답변 메시지 보내기
    </button>
  </div>

  <div id="div2">
    <!-- <a>앵커 태그는 get방식이므로 post방식으로 보내기 위해서 아래와 같이 작성 -->	
    <form id="delete_by_receiver" action="deleteByReceiver" method="post" >
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      <button type="submit" id="delete" class="btn btn-danger">메시지 삭제</button>
      <input type="hidden" name="select_delete" value="${messagedata.message_num}">
    </form>
  </div>

  <div id="div3">
    <button class="btn btn-success" id="BackAndReplace">이전 화면으로</button>   
  </div>
  </div>	


     
</div><!-- container end -->
</body>
</html>