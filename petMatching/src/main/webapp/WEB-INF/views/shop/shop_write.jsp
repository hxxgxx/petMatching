<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
	.container {
/* 		background-color : pink; */
		padding : 10px;
	}
	
	#category-bar {
		border-bottom: solid 1px #dc3545;
	}
</style>

<jsp:include page="/WEB-INF/views/common/header.jsp" ></jsp:include>

<div class="container">
	<div class="row bg-info">
    <form action="write" method="post" enctype="multipart/form-data" class="needs-validation">
 			<label for="board_title"> Category :&nbsp; </label> 
	         <select name="shop_category">
	            <option>----</option>
	            <option>사료</option>
	            <option>간식/건강</option>
	            <option>미용/목욕</option>
	            <option>외출용품</option>
	            <option>의류/악세사리</option>
	            <option>장난감</option>
	            <option>생활용품</option>
	        </select>
		<div>
		    제목 : <input type="text" id="shop_title" name="shop_title"><br>
		    가격 : <input type="text" id="shop_price" name="shop_price"><br>
		    원산지 : <input type="text" id="shop_country_of_origin" name="shop_country_of_origin"><br>
		    브랜드 : <input type="text" id="shop_brand" name="shop_brand"><br>
		    썸네일 : <input type="file" id="shop_upload_thumnail" name="shop_upload_thumnail"><br>
		    본문 이미지 : <input type="file" id="shop_upload_img_content" name="shop_upload_img_content"><br>
   		    본문 이미지_2 : <input type="file" id="shop_upload_img_content_2" name="shop_upload_img_content_2"><br>
   		    본문 이미지_3 : <input type="file" id="shop_upload_img_content_3" name="shop_upload_img_content_3"><br>
   		    본문 이미지_4 : <input type="file" id="shop_upload_img_content_4" name="shop_upload_img_content_4"><br>
   		    본문 이미지_5 : <input type="file" id="shop_upload_img_content_5" name="shop_upload_img_content_5"><br>
		    
		    본문 텍스트 : <input type="text" id="shop_text_content" name="shop_text_content"><br>
	    </div>
		<br>	
		<button type=submit class="btn btn-primary">등록</button>
		</div>	
		
		<input type="hidden" name ="${_csrf.parameterName }" value = "${_csrf.token }">
		
	</form>
	</div>
</div>