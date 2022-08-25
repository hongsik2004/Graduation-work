package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.JdbcUtil;
import vo.BoardlistVO;

public class BoardDAO {
	Connection con;
	PreparedStatement pstmt;
	PreparedStatement pstmt2;
	ResultSet rs;
	
	final String NOWDATE = "select sysdate from dual"; // 현재 시간 가져오기
	final String NEXTNUM = "SELECT b_id from coin_board order by b_id desc";
	final String BOARDWRITE = "INSERT INTO coin_board values(?,?,?,SYSDATE,?,?)";
	final String BOARDDATA = "select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD order by b_id desc";
	public String getDate() {
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(NOWDATE);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // 데이터베이스 오류
	}
	public int getNext() {
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(NEXTNUM);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물인 경우
		} catch (Exception e) {
			System.out.println("내가 문제임");
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	public int write(String b_title, String b_name, String b_context) {
		int n = 0;
		int idx = getNext();
		try {
			con = JdbcUtil.getConnection();		
			pstmt = con.prepareStatement(BOARDWRITE);
			pstmt.setInt(1, idx);
			pstmt.setString(2, b_title);
			pstmt.setString(3, b_name);
			pstmt.setString(4, b_context);
			pstmt.setInt(5, 0);
			
			n = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}
	public ArrayList<BoardlistVO> getBoardlist(){
		ArrayList<BoardlistVO> list = new ArrayList<>();
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(BOARDDATA);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int b_id = rs.getInt("b_id");
				String b_title = rs.getString("b_title");
				String b_name = rs.getString("b_name");
				String b_date = rs.getString("b_date");
				String b_context = rs.getString("b_context");
				int b_view = rs.getInt("b_view");
				
				BoardlistVO vo = new BoardlistVO(b_id,b_title,b_name,b_date,b_context,b_view);
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return list;
	}
}
