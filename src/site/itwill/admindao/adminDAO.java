package site.itwill.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import site.itwill.admindto.productDTO;

public class adminDAO extends JdbcDAO{
	private static adminDAO _dao;
	
	public adminDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao= new adminDAO();
	}
	
	public static adminDAO getDao() {
		return _dao;
	}
	
	public int insertProduct(productDTO product) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		String num="1";
		
		try {
			con=getConnection();
			
			String sql="INSERT INTO PRODUCT VALUE(num,?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, product.getPD_CGNO());
			pstmt.setString(2, product.getPD_CODE());
			pstmt.setString(3, product.getPD_NAME());
			pstmt.setString(4, product.getPD_SIZE());
			pstmt.setString(5, product.getPD_COLOR());
			pstmt.setString(6, product.getPD_TOPINF());
			pstmt.setString(7, product.getPD_BOTINF());
			pstmt.setInt(8, product.getPD_STOCK());
			pstmt.setInt(9, product.getPD_PRICE());
			
			rows=pstmt.executeUpdate();
		} catch(SQLException e) {
			System.out.println("[에러]insertGuest() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
}
