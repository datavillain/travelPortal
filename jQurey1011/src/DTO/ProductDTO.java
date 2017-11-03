package DTO;

import java.sql.Date;

public class ProductDTO {
	private String p_code;
	private String p_name;
	private String p_kind;
	private int p_price1;
	private int p_price2;
	private int p_price3;
	private String p_content;
	private String p_img;
	private String p_img2;
	private String p_img3;
	private String p_img4;
	private String p_img5;
	private String p_location;
	private String p_keyworld;
	private String p_url;
	private String p_useyn;
	private String p_bestyn;
	private String p_festa;
	private Date p_regdate;
	
	public ProductDTO(){
		super();
	}
	
	public ProductDTO(String p_code, String p_name, String p_kind, int p_price1, int p_price2, int p_price3,
			String p_content, String p_img, String p_useyn, String p_bestyn, Date p_regdate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_kind = p_kind;
		this.p_price1 = p_price1;
		this.p_price2 = p_price2;
		this.p_price3 = p_price3;
		this.p_content = p_content;
		this.p_img = p_img;
		this.p_useyn = p_useyn;
		this.p_bestyn = p_bestyn;
		this.p_regdate = p_regdate;
	}

	
	
	public ProductDTO(String p_code, String p_name, String p_img, String p_festa) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_festa = p_festa;
	}

	public ProductDTO(String p_code, String p_name, int p_price2, String p_img) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price2 = p_price2;
		this.p_img = p_img;
	}

	public ProductDTO(String p_code, String p_name, int p_price2, String p_img, String p_festa) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price2 = p_price2;
		this.p_img = p_img;
		this.p_festa = p_festa;
	}
	
	public ProductDTO(String p_code, String p_name, String p_kind, int p_price1, int p_price2, int p_price3,
			String p_content, String p_img, String p_useyn, String p_bestyn, String p_festa, Date p_regdate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_kind = p_kind;
		this.p_price1 = p_price1;
		this.p_price2 = p_price2;
		this.p_price3 = p_price3;
		this.p_content = p_content;
		this.p_img = p_img;
		this.p_useyn = p_useyn;
		this.p_bestyn = p_bestyn;
		this.p_festa = p_festa;
		this.p_regdate = p_regdate;
	}

	
	
	public ProductDTO(String p_code, String p_name, String p_kind, int p_price1, int p_price2, int p_price3,
			String p_content, String p_img, String p_img2, String p_img3, String p_img4, String p_img5,
			String p_location, String p_keyworld, String p_url, String p_useyn, String p_bestyn, String p_festa,
			Date p_regdate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_kind = p_kind;
		this.p_price1 = p_price1;
		this.p_price2 = p_price2;
		this.p_price3 = p_price3;
		this.p_content = p_content;
		this.p_img = p_img;
		this.p_img2 = p_img2;
		this.p_img3 = p_img3;
		this.p_img4 = p_img4;
		this.p_img5 = p_img5;
		this.p_location = p_location;
		this.p_keyworld = p_keyworld;
		this.p_url = p_url;
		this.p_useyn = p_useyn;
		this.p_bestyn = p_bestyn;
		this.p_festa = p_festa;
		this.p_regdate = p_regdate;
	}

	

	public ProductDTO(String p_code, String p_name, String p_img, String p_img2, String p_img3, String p_img4,
			String p_img5, String p_location, String p_url, String p_festa) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_img2 = p_img2;
		this.p_img3 = p_img3;
		this.p_img4 = p_img4;
		this.p_img5 = p_img5;
		this.p_location = p_location;
		this.p_url = p_url;
		this.p_festa = p_festa;
	}

	
	
	public ProductDTO(String p_code, String p_name, int p_price2, String p_img, String p_img2, String p_img3,
			String p_img4, String p_img5, String p_location, String p_url, String p_festa) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price2 = p_price2;
		this.p_img = p_img;
		this.p_img2 = p_img2;
		this.p_img3 = p_img3;
		this.p_img4 = p_img4;
		this.p_img5 = p_img5;
		this.p_location = p_location;
		this.p_url = p_url;
		this.p_festa = p_festa;
	}

	public String getP_img2() {
		return p_img2;
	}

	public void setP_img2(String p_img2) {
		this.p_img2 = p_img2;
	}

	public String getP_img3() {
		return p_img3;
	}

	public void setP_img3(String p_img3) {
		this.p_img3 = p_img3;
	}

	public String getP_img4() {
		return p_img4;
	}

	public void setP_img4(String p_img4) {
		this.p_img4 = p_img4;
	}

	public String getP_img5() {
		return p_img5;
	}

	public void setP_img5(String p_img5) {
		this.p_img5 = p_img5;
	}

	public String getP_location() {
		return p_location;
	}

	public void setP_location(String p_location) {
		this.p_location = p_location;
	}

	public String getP_keyworld() {
		return p_keyworld;
	}

	public void setP_keyworld(String p_keyworld) {
		this.p_keyworld = p_keyworld;
	}

	public String getP_url() {
		return p_url;
	}

	public void setP_url(String p_url) {
		this.p_url = p_url;
	}

	public Date getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(Date p_regdate) {
		this.p_regdate = p_regdate;
	}

	public String getP_festa() {
		return p_festa;
	}

	public void setP_festa(String p_festa) {
		this.p_festa = p_festa;
	}

	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_kind() {
		return p_kind;
	}
	public void setP_kind(String p_kind) {
		this.p_kind = p_kind;
	}
	public int getP_price1() {
		return p_price1;
	}
	public void setP_price1(int p_price1) {
		this.p_price1 = p_price1;
	}
	public int getP_price2() {
		return p_price2;
	}
	public void setP_price2(int p_price2) {
		this.p_price2 = p_price2;
	}
	public int getP_price3() {
		return p_price3;
	}
	public void setP_price3(int p_price3) {
		this.p_price3 = p_price3;
	}
	public String getP_content() {
		return p_content;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_useyn() {
		return p_useyn;
	}
	public void setP_useyn(String p_useyn) {
		this.p_useyn = p_useyn;
	}
	public String getP_bestyn() {
		return p_bestyn;
	}
	public void setP_bestyn(String p_bestyn) {
		this.p_bestyn = p_bestyn;
	}
	public Date getp_regdate() {
		return p_regdate;
	}
	public void setp_regdate(Date p_regdate) {
		this.p_regdate = p_regdate;
	}
}
