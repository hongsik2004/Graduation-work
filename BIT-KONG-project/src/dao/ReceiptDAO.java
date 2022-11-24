package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.JdbcUtil;
import vo.ReceiptVO;

public class ReceiptDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	final String SELECTRECEIPT = "select idx,m_id,coin_id,price,cnt,isbuy,isdone,uptime,TO_CHAR(donetime, 'YYYY-MM-DD') as donetime from execution_history where m_id = ? order by idx desc";
	
	public ArrayList<ReceiptVO> getReceiptlist(String id){
		ArrayList<ReceiptVO> list = new ArrayList<>();
		try {
			con = JdbcUtil.getConnection();
			pstmt = con.prepareStatement(SELECTRECEIPT);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String m_id = rs.getString("m_id");
				String coin_id = rs.getString("coin_id");
				int price = rs.getInt("price");
				int cnt = rs.getInt("cnt");
				String isbuy = rs.getString("isbuy");
				String isdone = rs.getString("isdone");
				String uptime = rs.getString("uptime");
				String donetime = rs.getString("donetime");
				
				ReceiptVO vo = new ReceiptVO(idx, m_id, coin_id, price, cnt, isbuy, isdone, uptime, donetime);
				
				list.add(vo);
			}
		} catch (Exception e) {
			System.out.println("getReceiptlist() 오류");
			e.printStackTrace();
		}finally {
			JdbcUtil.close(con, pstmt, rs);
		}
		return list;
	}
}
