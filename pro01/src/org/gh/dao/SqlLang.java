package org.gh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

// 표준 SQL
public interface SqlLang {
	Connection connect();
	void close(Connection con, PreparedStatement pstmt);
	void close(Connection con, PreparedStatement pstmt, ResultSet rs);
	//모든 회원 정보
	String SELECT_ALL_MEMBER = "select * from member order by regdate";
	//회원 1명 정보
	String SELECT_MEMBER_BYID = "select * from member where id=?";
	//회원가입
	String INS_MEMBER = "insert into member values(?, ?, ?, ?, ?, default)";
	//회원정보수정
	String UPD_MEMBER = "update member set password=?, name=?, tel=?, email=? where id=?";
	//회원탈퇴
	String DEL_MEMBER = "delete from member where id=?";
	
	
	//공지사항 목록
	String SELECT_ALL_NOTICE = "select * from notice order by resdate desc";
	//공지사항 상세정보
	String SELECT_NOTICE_BYNO = "select * from notice where no=?";
	//공지사항 등록
	String INSERT_NOTICE = "insert into notice values(default, ?, ?, default, 0)";
	//공지사항 조회수 증가
	String VISITED_UPD_NOTICE = "update notice set visited=visited+1 where no=?";
	//공지사항 수정
	String UPD_NOTICE = "update notice set title=?, content=? where no=?";
	//공지사항 삭제
	String DEL_NOTICE = "delete from notice where no=?";
	
	
	//묻고답하기 글 목록
	String SELECT_ALL_QNA = "select * from qna order by parno desc, plevel asc";
	//묻고답하기 글 상세보기
	String SELECT_QNA_BYNO = "select * from qna where no = ?";
	//질문 글 등록
	String INS_QUESTION = "insert into qna values(default, 1, null, ?, ?, default, 0, ?";
	String UPD_QUESTION_PARNO = "update qna set parno = no where plevel=1";
	//답변 글 등록
	String INS_ANSWER = "insert into qna values(defualt, 2, ?, ?, ?, default, 0, 'admin')";
	
	
	
	
	
	
	
}
