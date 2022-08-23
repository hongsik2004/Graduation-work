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
	final String LOGINOK = "select * from MEMBER_TABLE where m_id = ?";
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
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return result;
	}
	public int checkUser(String m_id, String m_password) {
		int check = -1;
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(LOGINOK);
			pstmt.setString(1, m_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("m_password").equals(m_password)) {
					check = 1;
				}else {
					check = 0;
				}
			}
		} catch (Exception e) {
			 e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return check;
	}
}
