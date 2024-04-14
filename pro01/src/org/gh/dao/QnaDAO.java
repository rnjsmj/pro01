package org.gh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gh.dto.Qna;

public class QnaDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//묻고답하기 글 목록
	public List<Qna> getQnaList() {
		List<Qna> qnaList = new ArrayList<>();
		
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_QNA);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Qna qna = new Qna(rs.getInt("no"),
						rs.getInt("plevel"),
						rs.getInt("parno"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("resdate"),
						rs.getInt("visited"),
						rs.getString("aid")
						);
				qnaList.add(qna);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return qnaList;
	}
	
	//묻고답하기 상세보기
	public Qna getQna(int no) {
		Qna qna = new Qna();
		MySQLDB mysql = new MySQLDB();
		
		try {
			con = mysql.connect();
			
			pstmt = con.prepareStatement(SqlLang.VISITED_UPD_QNA);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt = null;
			
			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				qna.setNo(rs.getInt("no"));
				qna.setPlevel(rs.getInt("plevel"));
				qna.setParno(rs.getInt("parno"));
				qna.setTitle(rs.getString("title"));
				qna.setContent(rs.getString("content"));
				qna.setResdate(rs.getString("resdate"));
				qna.setVisited(rs.getInt("visited"));
				qna.setAid(rs.getString("aid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return qna;
	}
	
	//묻고답하기 글 작업 후 상세보기 (입력, 수정 후)
	public Qna getQnaTask(int no) {
		Qna qna = new Qna();
		MySQLDB mysql = new MySQLDB();
		
		try {
			con = mysql.connect();
	
			pstmt = con.prepareStatement(SqlLang.SELECT_QNA_BYNO);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				qna.setNo(rs.getInt("no"));
				qna.setPlevel(rs.getInt("plevel"));
				qna.setParno(rs.getInt("parno"));
				qna.setTitle(rs.getString("title"));
				qna.setContent(rs.getString("content"));
				qna.setResdate(rs.getString("resdate"));
				qna.setVisited(rs.getInt("visited"));
				qna.setAid(rs.getString("aid"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return qna;
	}
	
	
	//질문 글 등록
	public int insertQuestion(Qna qna) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INS_QUESTION);
			pstmt.setString(1, qna.getTitle());
			pstmt.setString(2, qna.getContent());
			pstmt.setString(3, qna.getAid());
			cnt = pstmt.executeUpdate();
			
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.UPD_QUESTION_PARNO);
			cnt = cnt + pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//답변 글 등록
	public int insertAnswer(Qna qna) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INS_ANSWER);
			pstmt.setInt(1, qna.getParno());
			pstmt.setString(2, qna.getTitle());
			pstmt.setString(3, qna.getContent());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	
	//공지사항 수정 처리
	public int updateQnaPro(Qna qna) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_QNA);
			pstmt.setString(1, qna.getTitle());
			pstmt.setString(2, qna.getContent());
			pstmt.setInt(3, qna.getNo());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//질문 글 삭제
	public int deleteQuestion(int parno) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_QUESTION);
			pstmt.setInt(1, parno);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}	
	
	//공지사항 삭제
	public int deleteAnswer(int no) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_ANSWER);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	
}
