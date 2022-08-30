package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.JdbcUtil;
import vo.RegisterVO;

public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	final String INSERTREGISTER = "insert into member_table(m_id,m_name,m_phone_number,m_password) values(?,?,?,?)";
	final String CONFIRMID = "select m_id from member_table where m_id = ?";
	final String GETUSERDATA = "select * from MEMBER_TABLE where m_id = ? and m_password = ?";
	public int insertregist(RegisterVO vo) {
		int result = 0;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(INSERTREGISTER);
			
			pstmt.setString(1, vo.getM_id());
			pstmt.setString(2, vo.getM_name());
			pstmt.setString(3, vo.getM_phone());
			pstmt.setString(4, vo.getM_password());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("insertregist() 오류발생");
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt);
		}
		return result;
	}
	public boolean confirmId(String m_id) {
		boolean result = false;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(CONFIRMID);
			pstmt.setString(1, m_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			}
		} catch (Exception e) {
			System.out.println("confirmId() 오류발생");
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return result;
	}
	public RegisterVO getUserData(String m_id, String m_password) {
		RegisterVO vo = null;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(GETUSERDATA);
			pstmt.setString(1, m_id);
			pstmt.setString(2, m_password);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new RegisterVO(rs.getString("m_id"), rs.getString("m_name"), 
					rs.getString("m_phone_number"), rs.getString("m_password"), rs.getInt("m_krw"));
			}
		} catch (Exception e) {
			System.out.println("getUserData() 오류발생");
			 e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return vo;
	}
}
