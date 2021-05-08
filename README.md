# Pet Matching Project

바쁜 주인을 대신해서 반려견의 산책을 도와줄 사람을 매칭해주는 커뮤니티<br>
회원들간의 메세지 전송, 게시판 이용 등을 통해 소통이 가능하다.<br/><br/>

   * 기간: 2021/04/01 ~ 2021/04/27
   * 소속: 팀프로젝트
   * 역할: 산책 신청 게시판(주인&산책러), 자유게시판 
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

  <img width="100%" src="https://user-images.githubusercontent.com/83706188/117290602-f69aa200-aea8-11eb-9aaf-c5d5ab6f603a.gif"/>

<br />

### ✓ 문제해결 아카이브
* 다중파일 업로드를 어떻게 구현할까?
  * pom.xml에 파일 업로드를 위한 dependency를 추가하고, servlet-context.xml에 파일 업로드 bean 설정을 한다.<br>JSP 소스의 form에 enctype="multipart/form-data" 속성을 추가하고 List<MultipartFile>로 다중 파일을 가져올 수 있었다.
* 게시판을 어떻게 구분할까?
  * 게시판 성격에 따라 게시물 페이지에서 이미지 출력, 게시물 답변달기 등 각 게시판의 기능을 달리하였다.
