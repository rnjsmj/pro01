package org.gh.dao;

public interface SqlLang {
	
	String SELECT_ALL_MEMBER = "select * from member order by regdate";
	
	String SELECT_MEMBER_BYID = "select * from member where id=?";
	
	
	
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
	
	
	
	
}
