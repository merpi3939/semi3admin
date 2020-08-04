package site.itwill.admindto;

public class productDTO {
	private String pd_no;
	private String pd_cate;
	private String pd_code;
	private String pd_name;
	private String pd_size;
	private String pd_color;
	private String pd_topinf;
	private String pd_botinf;
	private int pd_stock;
	private int pd_price;
	
	public productDTO() {
		// TODO Auto-generated constructor stub
	}

	public productDTO(String pd_no, String pd_cate, String pd_code, String pd_name, String pd_size, String pd_color,
			String pd_topinf, String pd_botinf, int pd_stock, int pd_price) {
		
		this.pd_no = pd_no;
		this.pd_cate = pd_cate;
		this.pd_code = pd_code;
		this.pd_name = pd_name;
		this.pd_size = pd_size;
		this.pd_color = pd_color;
		this.pd_topinf = pd_topinf;
		this.pd_botinf = pd_botinf;
		this.pd_stock = pd_stock;
		this.pd_price = pd_price;
	}

	public String getPd_no() {
		return pd_no;
	}

	public void setPd_no(String pd_no) {
		this.pd_no = pd_no;
	}

	public String getPd_cate() {
		return pd_cate;
	}

	public void setPd_cate(String pd_cate) {
		this.pd_cate = pd_cate;
	}

	public String getPd_code() {
		return pd_code;
	}

	public void setPd_code(String pd_code) {
		this.pd_code = pd_code;
	}

	public String getPd_name() {
		return pd_name;
	}

	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}

	public String getPd_size() {
		return pd_size;
	}

	public void setPd_size(String pd_size) {
		this.pd_size = pd_size;
	}

	public String getPd_color() {
		return pd_color;
	}

	public void setPd_color(String pd_color) {
		this.pd_color = pd_color;
	}

	public String getPd_topinf() {
		return pd_topinf;
	}

	public void setPd_topinf(String pd_topinf) {
		this.pd_topinf = pd_topinf;
	}

	public String getPd_botinf() {
		return pd_botinf;
	}

	public void setPd_botinf(String pd_botinf) {
		this.pd_botinf = pd_botinf;
	}

	public int getPd_stock() {
		return pd_stock;
	}

	public void setPd_stock(int pd_stock) {
		this.pd_stock = pd_stock;
	}

	public int getPd_price() {
		return pd_price;
	}

	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}

	
	
	
	
}
