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
			
			String sql="select * from member where user_admin='0' order by user_no";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				MemberDTO member = new MemberDTO();

				member.setUserAddr(rs.getString("user_addr"));
				member.setUserAdmin(rs.getString("user_admin"));
				member.setUserBirth(rs.getString("user_birth"));
				member.setUserDeldate(rs.getString("user_deldate"));
				member.setUserDelete(rs.getString("user_delete"));
				member.setUserEmail(rs.getString("user_email"));
				member.setUserId(rs.getString("user_id"));
				member.setUserJoindate(rs.getString("user_joindate"));
				member.setUserName(rs.getString("user_name"));
				member.setUserNo(rs.getString("user_no"));
				member.setUserPasswd(rs.getString("user_passwd"));
				member.setUserPhone(rs.getString("user_phone"));
				member.setUserSex(rs.getString("user_sex"));
				member.setUserZip(rs.getString("user_zip"));
				
				memberList.add(member);
			}
		} catch (SQLException e) {
			System.out.println("[����] selectRegularMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
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
			
			String sql="select * from member where user_admin='1' order by user_no";
			pstmt=con.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				MemberDTO member = new MemberDTO();

				member.setUserAddr(rs.getString("user_addr"));
				member.setUserAdmin(rs.getString("user_admin"));
				member.setUserBirth(rs.getString("user_birth"));
				member.setUserDeldate(rs.getString("user_deldate"));
				member.setUserDelete(rs.getString("user_delete"));
				member.setUserEmail(rs.getString("user_email"));
				member.setUserId(rs.getString("user_id"));
				member.setUserJoindate(rs.getString("user_joindate"));
				member.setUserName(rs.getString("user_name"));
				member.setUserNo(rs.getString("user_no"));
				member.setUserPasswd(rs.getString("user_passwd"));
				member.setUserPhone(rs.getString("user_phone"));
				member.setUserSex(rs.getString("user_sex"));
				member.setUserZip(rs.getString("user_zip"));
				
				memberList.add(member);
			}
		} catch (SQLException e) {
			System.out.println("[����] selectAdminMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
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
			pstmt.setString(1, member.getUserAddr());
			pstmt.setString(2, member.getUserBirth());
			pstmt.setString(3, member.getUserEmail());
			pstmt.setString(4, member.getUserName());
			pstmt.setString(5, member.getUserPasswd());
			pstmt.setString(6, member.getUserPhone());
			pstmt.setString(7, member.getUserSex());
			pstmt.setString(8, member.getUserZip());
			pstmt.setString(9, member.getUserNo());
			
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
			
			String sql="insert into member values((SELECT LPAD((NVL(MAX(USER_NO), 0) + 1), 8, '0') USER_NO FROM MEMBER),"
					+ "?,?,?,?,?,?,?,?,sysdate,null,'1',?,?)";
			pstmt=con.prepareStatement(sql);

			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPasswd());
			pstmt.setString(3, member.getUserName());
			pstmt.setString(4, member.getUserAddr());
			String sex="1";
			if(member.getUserSex().equals("����")) {
				sex="0";
			}
			pstmt.setString(5, sex);
			pstmt.setString(6, member.getUserPhone());
			pstmt.setString(7, member.getUserBirth());
			pstmt.setString(8, member.getUserZip());
			
			pstmt.setString(9, member.getUserAdmin());
			pstmt.setString(10, member.getUserEmail());
			
			rows=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("[����] insertMember() �޼ҵ� SQL ��� ���� = "+e.getMessage());
		} finally {
			close(con, pstmt);
		}
		
		return rows;
	}
	

}
