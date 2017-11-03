package DTO;

import java.sql.Date;

public class MemberDTO {
	private String p_id;
	private String p_pw;
	private String p_name;
	private String p_phone;
	private String p_email;
	private Date p_regdate;
	private String p_zip;
	private String p_addr1;
	private String p_addr2;
	
	public MemberDTO(){
		super();
	}

	
	
	
	public MemberDTO(String p_id, String p_pw, String p_name, String p_phone, String p_email, Date p_regdate,
			String p_zip, String p_addr1, String p_addr2) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_name = p_name;
		this.p_phone = p_phone;
		this.p_email = p_email;
		this.p_regdate = p_regdate;
		this.p_zip = p_zip;
		this.p_addr1 = p_addr1;
		this.p_addr2 = p_addr2;
	}




	public MemberDTO(String p_id, String p_pw, String p_name, String p_phone, String p_email, String p_zip,
			String p_addr1, String p_addr2) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_name = p_name;
		this.p_phone = p_phone;
		this.p_email = p_email;
		this.p_zip = p_zip;
		this.p_addr1 = p_addr1;
		this.p_addr2 = p_addr2;
	}




	public MemberDTO(String p_id, String p_pw, String p_name, String p_phone, String p_email) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_name = p_name;
		this.p_phone = p_phone;
		this.p_email = p_email;
	}




	public MemberDTO(String p_id, String p_pw, String p_name, String p_phone, String p_email, Date p_regdate) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_name = p_name;
		this.p_phone = p_phone;
		this.p_email = p_email;
		this.p_regdate = p_regdate;
	}

	
	
	public MemberDTO(String p_id, String p_pw) {
		super();
		this.p_id = p_id;
		this.p_pw = p_pw;
	}




	public MemberDTO(String p_id) {
		super();
		this.p_id = p_id;
	}




	public String getP_zip() {
		return p_zip;
	}

	public void setP_zip(String p_zip) {
		this.p_zip = p_zip;
	}
	

	public String getP_addr1() {
		return p_addr1;
	}

	public void setP_addr1(String p_addr1) {
		this.p_addr1 = p_addr1;
	}

	public String getP_addr2() {
		return p_addr2;
	}

	public void setP_addr2(String p_addr2) {
		this.p_addr2 = p_addr2;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getP_pw() {
		return p_pw;
	}

	public void setP_pw(String p_pw) {
		this.p_pw = p_pw;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_phone() {
		return p_phone;
	}

	public void setP_phone(String p_phone) {
		this.p_phone = p_phone;
	}

	public String getP_email() {
		return p_email;
	}

	public void setP_email(String p_email) {
		this.p_email = p_email;
	}

	public Date getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(Date p_regdate) {
		this.p_regdate = p_regdate;
	}
	
	
	
}
