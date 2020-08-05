package site.itwill.admindto;

import java.sql.Date;

public class MemberDTO {
	private String userNo;
	private String userId;
	private String userPasswd;
	private String userEmail;
	private String userName;
	private String userAddr;
	private String userSex;
	private String userPhone;
	private String userBirth;
	private String userZip;
	private String userJoindate;
	private String userDeldate;
	private String userDelete;
	private String userAdmin;

	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String userNo, String userId, String userPasswd, String userEmail, String userName,
			String userAddr, String userSex, String userPhone, String userBirth, String userZip, String userJoindate,
			String userDeldate, String userDelete, String userAdmin) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPasswd = userPasswd;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userAddr = userAddr;
		this.userSex = userSex;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
		this.userZip = userZip;
		this.userJoindate = userJoindate;
		this.userDeldate = userDeldate;
		this.userDelete = userDelete;
		this.userAdmin = userAdmin;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPasswd() {
		return userPasswd;
	}

	public void setUserPasswd(String userPasswd) {
		this.userPasswd = userPasswd;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserZip() {
		return userZip;
	}

	public void setUserZip(String userZip) {
		this.userZip = userZip;
	}

	public String getUserJoindate() {
		return userJoindate;
	}

	public void setUserJoindate(String userJoindate) {
		this.userJoindate = userJoindate;
	}

	public String getUserDeldate() {
		return userDeldate;
	}

	public void setUserDeldate(String userDeldate) {
		this.userDeldate = userDeldate;
	}

	public String getUserDelete() {
		return userDelete;
	}

	public void setUserDelete(String userDelete) {
		this.userDelete = userDelete;
	}

	public String getUserAdmin() {
		return userAdmin;
	}

	public void setUserAdmin(String userAdmin) {
		this.userAdmin = userAdmin;
	}
	
	
	
	
	
	
	
}//
