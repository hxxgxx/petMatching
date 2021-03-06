package com.jhta.petMatching.hhi.service;

import java.util.List;

import com.jhta.petMatching.hhi.domain.Comment;


public interface CommentService {
	
	// 글의 갯수 구하기
	public int getListCount(int board_num, String table_name);
	
	// 댓글 목록 가져오기
	public List<Comment> getCommentList(int board_num, int page, String table_name);
	
	// 댓글 등록하기
	public int commentsInsert(Comment c);
	
	// 댓글 삭제
	public int commentsDelete(Comment c);
	
	// 댓글 수정
	public int commentsUpdate(Comment co);


	

}
