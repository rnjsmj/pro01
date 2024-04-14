package org.gh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gh.dto.Traffic;

public class TrafficDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//교통편 목록
	public List<Traffic> getTrafficList(){
		List<Traffic> trafficList = new ArrayList<>();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_TRAFFIC);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Traffic traffic = new Traffic(rs.getInt("tno"),
						rs.getString("ttype"),
						rs.getString("no"),
						rs.getString("route"),
						rs.getString("comm"));
				trafficList.add(traffic);
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		return trafficList;
	}
	
	//교통편 상세정보
	public Traffic getTraffic(int tno) {
		Traffic traffic = new Traffic();
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_TRAFFIC_BYTNO);
			pstmt.setInt(1, tno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				traffic.setTno(rs.getInt("tno"));
				traffic.setTtype(rs.getString("ttype"));
				traffic.setNo(rs.getString("no"));
				traffic.setComm(rs.getString("comm"));
				traffic.setRoute(rs.getString("route"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		return traffic;
	}
	
	//교통편 추가
	public int insertTraffic(Traffic traffic) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INS_TRAFFIC);
			pstmt.setString(1, traffic.getTtype());
			pstmt.setString(2, traffic.getNo());
			pstmt.setString(3, traffic.getRoute());
			pstmt.setString(4, traffic.getComm());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//교통편 수정 처리
	public int updateTrafficPro(Traffic traffic) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_TRAFFIC);
			pstmt.setString(1, traffic.getRoute());
			pstmt.setString(2, traffic.getComm());
			pstmt.setInt(3, traffic.getTno());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//교통편 삭제
	public int deleteTraffic(int tno){
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_TRAFFIC);
			pstmt.setInt(1, tno);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
}
