# Pet Matching Project

바쁜 주인을 대신해서 반려견의 산책을 도와줄 사람을 매칭해주는 커뮤니티<br>
회원들간의 메세지 전송, 게시판 이용 등을 통해 소통이 가능하다.<br/><br/>

   * 기간: 2021/04/01 ~ 2021/04/25
   * 소속: 팀프로젝트
   * 역할: 산책 신청 게시판(주인&산책러), 자유게시판 (backend) <br />
          레이아웃 구성, 스토리보드 구성, CSS (frontend)
   * 개발환경:  
    
          O/S       : Mac / Windows10
          Server    : Tomcat 8.5
          DBMS      : Oracle 11g
          Languages : Java, JSP, JavaScript, SQL, HTML
          Tool      : Eclipse, STS, Git
          Framework : Spring, JQuery, Ajax, BootStrap
         
          
<br/>

### ✓ 메인페이지 > 게시판 이동

   <img width="100%" src="https://user-images.githubusercontent.com/83706188/117293412-4d55ab00-aeac-11eb-87bd-7603a8f66b36.gif"/>

<br/>

###  ✓ 산책 신청 게시판 - 게시글 

   <img width="100%" src="https://user-images.githubusercontent.com/83706188/117456413-1d2d0b80-af83-11eb-8598-73dd5bb8b8e4.gif"/>

<br/>

###  ✓ 자유게시판

  <img width="100%" src="https://user-images.githubusercontent.com/83706188/117536457-14494200-b036-11eb-94d0-312c1a1b0533.gif"/>

<br />

### ✓ 문제해결 아카이브
* 다중파일 업로드를 어떻게 구현할까?
  * pom.xml에 파일 업로드를 위한 dependency를 추가하고, servlet-context.xml에 파일 업로드 bean 설정을 한다.<br>JSP 소스의 form에 enctype="multipart/form-data" 속성을 추가하고 List<'MultipartFile'>로 다중 파일을 가져올 수 있었다.

* 각 게시판에서 사용하는 공통 기능(댓글)에 필요한 반복되는 코드를 간략하게 할 수 있을까?
  * comments.xml 에서 if문을 사용하여 각 게시판의 댓글 테이블에 연결하여 공통 기능을 하나의 xml에 구현하였다. 


* 게시판을 어떻게 구분할까?
  * 게시판 성격에 따라 게시물 페이지에서 이미지 출력, 게시물 답변달기 등 각 게시판의 기능을 달리하였다.
<br/>
