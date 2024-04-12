package org.gh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.gh.dto.Member;

public class MemberDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//회원목록 리스트 getMemberList()
	public List<Member> getMemberList() {
		List<Member> memberList = new ArrayList<>();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_MEMBER);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member(rs.getString("id"),
						rs.getString("password"),
						rs.getString("name"),
						rs.getString("tel"),
						rs.getString("email"),
						rs.getString("regdate"));
				memberList.add(member);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		return memberList;
	}
	
	//회원 한명 정보 getMember(String id)
	public Member getMember(String id) {
		Member member = new Member();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_MEMBER_BYID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setTel(rs.getString("tel"));
				member.setEmail(rs.getString("email"));
				member.setRegdate(rs.getString("regdate"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
			
		}
		return member;
	}
	
	//회원가입 insertMember(Member member)
	public int insertMember(Member member) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INS_MEMBER);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getTel());
			pstmt.setString(5, member.getEmail());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			//mysql.close(con, pstmt);
			if (pstmt != null || con != null) {
				try {
					rs.close();
					pstmt.close();
					con.close();
					
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return cnt;
	}
	
	//회원정보수정 updateMember(Member member)
	public int updateMember(Member member) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_MEMBER);
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getTel());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getId());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//회원탈퇴 deleteMember(String id)
	public int deleteMember(String id) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_MEMBER);
			pstmt.setString(1, id);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//아이디 중복확인
	public boolean idCheck(String id) {
		boolean ck = false;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_MEMBER_BYID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ck = true;
			} else {
				ck = false;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		return ck;
	}
}
