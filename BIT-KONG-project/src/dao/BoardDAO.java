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
	final String BOARDWRITE = "INSERT INTO coin_board values(?,?,?,?,SYSDATE,?,?,?)";
	final String BOARDDATA = "select b_id,b_title,b_name,b_context,b_view, TO_CHAR(b_date,'YYYY-MM-DD') as b_date from COIN_BOARD where c_tag = ? order by b_id desc";
	final String BOARDCONTEXT = "select * from coin_board where b_id = ?";
	final String BOARDPASSSELETE = "select b_pass from coin_board where b_id = ?";
	final String BOARDDELETE = "delete from coin_board where b_id = ?";
	final String BOARDUPDATE = "update coin_board set b_title = ?, b_name = ?,b_pass=?,c_tag=?,b_context=? where b_id = ?";
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
	public BoardlistVO getBoardContext(int b_id) {
		BoardlistVO vo = null;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(BOARDCONTEXT);
			pstmt.setInt(1, b_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				int c_tag = rs.getInt("c_tag");
				String b_title = rs.getString("b_title");
				String b_name = rs.getString("b_name");
				String b_date = rs.getString("b_date");
				String b_pass = rs.getString("b_pass");
				String b_context = rs.getString("b_context");
				int b_view = rs.getInt("b_view");
				vo = new BoardlistVO(b_id,c_tag,b_title,b_name,b_date,b_pass,b_context,b_view);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	public int write(String b_title, String b_name, String b_pass,int c_tag , String b_context) {
		int n = 0;
		int idx = getNext();
		try {
			con = JdbcUtil.getConnection();		
			pstmt = con.prepareStatement(BOARDWRITE);
			pstmt.setInt(1, idx);
			pstmt.setInt(2, c_tag);
			pstmt.setString(3, b_title);
			pstmt.setString(4, b_name);
			pstmt.setString(5, b_pass);
			pstmt.setString(6, b_context);
			pstmt.setInt(7, 0);
			
			n = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("잇츠미");
			e.printStackTrace();
		}
		return n;
	}
	public ArrayList<BoardlistVO> getBoardlist(int c_tag){
		ArrayList<BoardlistVO> list = new ArrayList<>();
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(BOARDDATA);
			pstmt.setInt(1, c_tag);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int b_id = rs.getInt("b_id");
				String b_title = rs.getString("b_title");
				String b_name = rs.getString("b_name");
				String b_date = rs.getString("b_date");
				String b_context = rs.getString("b_context");
				int b_view = rs.getInt("b_view");
				
				BoardlistVO vo = new BoardlistVO(b_id,c_tag,b_title,b_name,b_date,"",b_context,b_view);
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return list;
	}
	public int deleteboard(int b_id,String b_pass) {
		int n = -1;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(BOARDPASSSELETE);
			pstmt.setInt(1, b_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(b_pass.equals(rs.getString("b_pass"))) {
					pstmt = con.prepareStatement(BOARDDELETE);
					
					pstmt.setInt(1, b_id);
					
					n = pstmt.executeUpdate();
				}else {
					n = 0;
				}
			}else {
				n = -1;
			}
			System.out.println(n);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt,rs);
		}
		return n;
	}
	public int updateboard(BoardlistVO vo) {
		int n = -1;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(BOARDCONTEXT);
			pstmt.setInt(1, vo.getB_id());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(vo.getB_pass().equals(rs.getString("b_pass"))) {
					pstmt = con.prepareStatement(BOARDUPDATE);
					pstmt.setString(1, vo.getB_title());
					pstmt.setString(2, vo.getB_name());
					pstmt.setString(3, vo.getB_pass());
					pstmt.setInt(4, vo.getC_tag());
					pstmt.setString(5, vo.getB_context());
					pstmt.setInt(6, vo.getB_id());
					
					n = pstmt.executeUpdate();
				}else {
					n = 0;
				}
			}else {
				n = -1;
			}
			System.out.println(n);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}
}