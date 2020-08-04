package site.itwill.admindto;

import java.sql.Date;

public class MemberDTO {
	private String user_no;
	private String user_id;
	private String user_passwd;
	private String user_email;
	private String user_name;
	private String user_addr;
	private String user_sex;
	private String user_phone;
	private String user_birth;
	private String user_zip;
	private Date user_joindate;
	private Date user_deldate;
	private String user_delete;
	private String user_admin;

	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String user_no, String user_id, String user_passwd, String user_email, String user_name,
			String user_addr, String user_sex, String user_phone, String user_birth, String user_zip,
			Date user_joindate, Date user_deldate, String user_delete, String user_admin) {
		super();
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_passwd = user_passwd;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_addr = user_addr;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
		this.user_birth = user_birth;
		this.user_zip = user_zip;
		this.user_joindate = user_joindate;
		this.user_deldate = user_deldate;
		this.user_delete = user_delete;
		this.user_admin = user_admin;
	}

	public String getUser_no() {
		return user_no;
	}

	public void setUser_no(String user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_passwd() {
		return user_passwd;
	}

	public void setUser_passwd(String user_passwd) {
		this.user_passwd = user_passwd;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_zip() {
		return user_zip;
	}

	public void setUser_zip(String user_zip) {
		this.user_zip = user_zip;
	}

	public Date getUser_joindate() {
		return user_joindate;
	}

	public void setUser_joindate(Date user_joindate) {
		this.user_joindate = user_joindate;
	}

	public Date getUser_deldate() {
		return user_deldate;
	}

	public void setUser_deldate(Date user_deledate) {
		this.user_deldate = user_deledate;
	}

	public String getUser_delete() {
		return user_delete;
	}

	public void setUser_delete(String user_delete) {
		this.user_delete = user_delete;
	}

	public String getUser_admin() {
		return user_admin;
	}

	public void setUser_admin(String user_admin) {
		this.user_admin = user_admin;
	}

}//
