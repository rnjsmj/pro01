package org.gh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gh.dto.Place;

public class PlaceDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//주요 시설 목록
	public List<Place> getPlaceList() {
		List<Place> placeList = new ArrayList<>();
		
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_PLACE);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Place place = new Place(rs.getInt("pcode"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("paddr"),
						rs.getString("ptel"),
						rs.getString("pgps"),
						rs.getString("pcomm"),
						rs.getString("pfile")
						);
				placeList.add(place);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return placeList;
	}
	
	//맛집 목록
	public List<Place> getRestList() {
		List<Place> restList = new ArrayList<>();
		
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_REST);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Place place = new Place(rs.getInt("pcode"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("paddr"),
						rs.getString("ptel"),
						rs.getString("pgps"),
						rs.getString("pcomm"),
						rs.getString("pfile")
						);
				restList.add(place);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return restList;
	}
	
	//주요시설/맛집 상세보기
	public Place getPlace(int pcode) {
		Place place = new Place();
		MySQLDB mysql = new MySQLDB();
		
		try {
			con = mysql.connect();
			
			pstmt = con.prepareStatement(SqlLang.SELECT_PLACE_BYPCODE);
			pstmt.setInt(1, pcode);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				place.setPcode(rs.getInt("pcode"));
				place.setPname(rs.getString("pname"));
				place.setPtype(rs.getString("ptype"));
				place.setPaddr(rs.getString("paddr"));
				place.setPtel(rs.getString("ptel"));
				place.setPgps(rs.getString("pgps"));
				place.setPcomm(rs.getString("pcomm"));
				place.setPfile(rs.getString("pfile"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt, rs);
		}
		
		return place;
	}
	
	
	//주요시설/맛집 등록
	public int insertPlace(Place place) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.INS_PLACE);
			pstmt.setString(1, place.getPname());
			pstmt.setString(2, place.getPtype());
			pstmt.setString(3, place.getPaddr());
			pstmt.setString(4, place.getPtel());
			pstmt.setString(5, place.getPgps());
			pstmt.setString(6, place.getPcomm());
			cnt = pstmt.executeUpdate();
			
			
			//최근 insert된 pcode를 가져와서 pfile을 update
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.SELECT_PLACE_PCODE);
			rs = pstmt.executeQuery();
			int pc=0;
			if(rs.next()) {
				pc = rs.getInt("pcode");
			}
			
			pstmt = null;
			pstmt = con.prepareStatement(SqlLang.UPD_PLACE_PFILE);
			pstmt.setInt(1, pc);
			cnt = cnt + pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	
	//주요시설/맛집  수정 처리
	public int updatePlacePro(Place place) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.UPD_PLACE);
			pstmt.setString(1, place.getPname());
			pstmt.setString(2, place.getPtype());
			pstmt.setString(3, place.getPaddr());
			pstmt.setString(4, place.getPtel());
			pstmt.setString(3, place.getPgps());
			pstmt.setString(3, place.getPcomm());
			pstmt.setInt(3, place.getPcode());
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
	
	//주요시설/맛집 삭제
	public int deletePlace(int no) {
		int cnt = 0;
		MySQLDB mysql = new MySQLDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_PLACE);
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
