package DTO;

import java.sql.Date;

public class RoomsDTO {
	private String r_id;
	private String r_name;
	private String r_kinds;
	private String r_details;
	private String r_location;
	private String r_url;
	private String r_addr;
	private String r_img;
	private String r_phone;
	private Date r_regdate;
	
	


	public RoomsDTO(String r_name, String r_kinds, String r_details, String r_location, String r_url, String r_addr) {
		super();
		this.r_name = r_name;
		this.r_kinds = r_kinds;
		this.r_details = r_details;
		this.r_location = r_location;
		this.r_url = r_url;
		this.r_addr = r_addr;
	}




	public RoomsDTO(String r_id, String r_name, String r_kinds, String r_details, String r_location, String r_url,
			String r_addr, String r_img, String r_phone) {
		super();
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_kinds = r_kinds;
		this.r_details = r_details;
		this.r_location = r_location;
		this.r_url = r_url;
		this.r_addr = r_addr;
		this.r_img = r_img;
		this.r_phone = r_phone;
	}




	public RoomsDTO(String r_id, String r_name, String r_kinds, String r_details, String r_location, String r_url,
			String r_addr, String r_img, String r_phone, Date r_regdate) {
		super();
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_kinds = r_kinds;
		this.r_details = r_details;
		this.r_location = r_location;
		this.r_url = r_url;
		this.r_addr = r_addr;
		this.r_img = r_img;
		this.r_phone = r_phone;
		this.r_regdate = r_regdate;
	}




	public String getR_id() {
		return r_id;
	}




	public void setR_id(String r_id) {
		this.r_id = r_id;
	}




	public String getR_name() {
		return r_name;
	}




	public void setR_name(String r_name) {
		this.r_name = r_name;
	}




	public String getR_kinds() {
		return r_kinds;
	}




	public void setR_kinds(String r_kinds) {
		this.r_kinds = r_kinds;
	}




	public String getR_details() {
		return r_details;
	}




	public void setR_details(String r_details) {
		this.r_details = r_details;
	}




	public String getR_location() {
		return r_location;
	}




	public void setR_location(String r_location) {
		this.r_location = r_location;
	}




	public String getR_url() {
		return r_url;
	}




	public void setR_url(String r_url) {
		this.r_url = r_url;
	}




	public String getR_addr() {
		return r_addr;
	}




	public void setR_addr(String r_addr) {
		this.r_addr = r_addr;
	}




	public String getR_img() {
		return r_img;
	}




	public void setR_img(String r_img) {
		this.r_img = r_img;
	}




	public String getR_phone() {
		return r_phone;
	}




	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}




	public Date getR_regdate() {
		return r_regdate;
	}




	public void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}




	public RoomsDTO(){
		
	}
}
