package site.itwill.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import site.itwill.admindto.productDTO;

public class productAdminDAO extends JdbcDAO{
	private static productAdminDAO _dao;
	
	public productAdminDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		_dao= new productAdminDAO();
	}
	
	public static productAdminDAO getDao() {
		return _dao;
	}
	
	public int insertProduct(productDTO product) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql="INSERT INTO PRODUCT VALUE((SELECT LPAD((NVL(MAX(USER_NO), 0) + 1), 100, '0') PD_NO\r\n" + 
					"             FROM PRODUCT)\r\n" + 
					",?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, product.getPd_cate());
			pstmt.setString(2, product.getPd_code());
			pstmt.setString(3, product.getPd_name());
			pstmt.setString(4, product.getPd_size());
			pstmt.setString(5, product.getPd_color());
			pstmt.setString(6, product.getPd_topinf());
			pstmt.setString(7, product.getPd_botinf());
			pstmt.setInt(8, product.getPd_stock());
			pstmt.setInt(9, product.getPd_stock());
			
			rows=pstmt.executeUpdate();
		} catch(SQLException e) {
			System.out.println("[에러]insertGuest() 메소드의 SQL 오류 = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		return rows;
	}
	
}
