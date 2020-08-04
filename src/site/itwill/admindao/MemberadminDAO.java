package site.itwill.admindao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import site.itwill.admindao.*;
import site.itwill.admindto.*;

/*
 �̸�            ��?       ����             
------------- -------- -------------- 
USER_NO       NOT NULL VARCHAR2(1000) 
USER_ID                VARCHAR2(20)   
USER_PASSWD            VARCHAR2(20)   
USER_NAME              VARCHAR2(20)   
USER_ADDR              VARCHAR2(100)  
USER_SEX               CHAR(1)        
USER_PHONE             VARCHAR2(20)   
USER_BIRTH             VARCHAR2(20)   
USER_ZIP               VARCHAR2(20)   
USER_JOINDATE          DATE           
USER_DELDATE          DATE           
USER_DELETE            CHAR(1)        
USER_ADMIN             CHAR(1)      
*/

public class MemberadminDAO extends JdbcDAO{

	public static MemberadminDAO _dao;
	
	private MemberadminDAO(){
		
	}
	
	static {
		_dao=new MemberadminDAO();
	}
	
	public static MemberadminDAO getDAO() {
		return _dao;
	}
	
	//��� ȸ��(�Ϲݻ����) ����Ʈ�� ��ȯ�ϴ� �޼ҵ�
	public List<MemberDTO> selectRegularMember() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();
		
		try {
			con=getConnection();
			
			String sql="select * from member where user_adim='0' order by user_no";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				MemberDTO member = new MemberDTO();

				member.setUser_addr(rs.getString("user_addr"));
				member.setUser_admin(rs.getString("user_admin"));
				member.setUser_birth(rs.getString("user_birth"));
				member.setUser_deldate(rs.getDate("user_deldate"));
				member.setUser_delete(rs.getString("user_delete"));
				member.setUser_email(rs.getString("user_email"));
				member.setUser_id(rs.getString("user_id"));
				member.setUser_joindate(rs.getDate("user_joindate"));
				member.setUser_name(rs.getString("user_name"));
				member.setUser_no(rs.getString("user_no"));
				member.setUser_passwd(rs.getString("user_passwd"));
				member.setUser_phone(rs.getString("user_phone"));
				member.setUser_sex(rs.getString("user_sex"));
				member.setUser_zip(rs.getString("user_zip"));
				
				memberList.add(member);
			}
		} catch (SQLException e) {
			System.out.println("[����] selectMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
		
	}
	
	//��� ������ ����Ʈ�� ��ȯ�ϴ� �޼ҵ�
	public List<MemberDTO> selectAdminMember() {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberDTO> memberList = new ArrayList<MemberDTO>();
		
		try {
			con=getConnection();
			
			String sql="select * from member where user_adim='1' order by user_no";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				MemberDTO member = new MemberDTO();

				member.setUser_addr(rs.getString("user_addr"));
				member.setUser_admin(rs.getString("user_admin"));
				member.setUser_birth(rs.getString("user_birth"));
				member.setUser_deldate(rs.getDate("user_deldate"));
				member.setUser_delete(rs.getString("user_delete"));
				member.setUser_email(rs.getString("user_email"));
				member.setUser_id(rs.getString("user_id"));
				member.setUser_joindate(rs.getDate("user_joindate"));
				member.setUser_name(rs.getString("user_name"));
				member.setUser_no(rs.getString("user_no"));
				member.setUser_passwd(rs.getString("user_passwd"));
				member.setUser_phone(rs.getString("user_phone"));
				member.setUser_sex(rs.getString("user_sex"));
				member.setUser_zip(rs.getString("user_zip"));
				
				memberList.add(member);
			}
		} catch (SQLException e) {
			System.out.println("[����] selectMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
		} finally {
			close(con, pstmt, rs);
		}
		
		return memberList;
		
	}
	
	//ȸ�������� �޾� ȸ�������� �����ϰ� �������� ������ ��ȯ�ϴ� �޼ҵ�
	public int updateMember(MemberDTO member) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql="update member set "
					+ "user_addr=?, user_birth=?" 
					+ ",user_email=?" 
					+ ",user_name=?" 
					+ ",user_passwd=?, user_phone=?" 
					+ ",user_sex=?, user_zip=?" 
					+ " where no=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getUser_addr());
			pstmt.setString(2, member.getUser_birth());
			pstmt.setString(3, member.getUser_email());
			pstmt.setString(4, member.getUser_name());
			pstmt.setString(5, member.getUser_passwd());
			pstmt.setString(6, member.getUser_phone());
			pstmt.setString(7, member.getUser_sex());
			pstmt.setString(8, member.getUser_zip());
			pstmt.setString(9, member.getUser_no());
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[����] updateMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
		
	}
	
	//ȸ����ȣ�� �Է¹޾� ȸ�������� �����ϰ� �������� ������ ��ȯ�ϴ� �޼ҵ�
	public int deleteMember(int no) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			String sql="delete from member where no=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			rows=pstmt.executeUpdate();
							
		} catch (SQLException e) {
			System.out.println("[����] deleteMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
		
	}
	
	//ȸ�������� �Է¹޾� member ���̺� ȸ�������� �����ϴ� �޼ҵ�
	public int insertMember(MemberDTO member) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int rows=0;
		
		try {
			con=getConnection();
			
			String sql="insert into member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getUser_no());
			pstmt.setString(2, member.getUser_id());
			pstmt.setString(3, member.getUser_passwd());
			pstmt.setString(4, member.getUser_email());
			pstmt.setString(5, member.getUser_name());
			pstmt.setString(6, member.getUser_addr());
			pstmt.setString(7, member.getUser_sex());
			pstmt.setString(8, member.getUser_phone());
			pstmt.setString(9, member.getUser_birth());
			pstmt.setString(10, member.getUser_zip());
			pstmt.setDate(11, member.getUser_joindate());
			pstmt.setDate(12, member.getUser_deldate());
			pstmt.setString(13, member.getUser_delete());
			pstmt.setString(14, member.getUser_admin());
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[����] insertMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	

}
