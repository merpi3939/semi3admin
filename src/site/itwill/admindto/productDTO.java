package site.itwill.admindto;

public class productDTO {
	private String PD_NO;
	private String PD_CGNO;
	private String PD_CODE;
	private String PD_NAME;
	private String PD_SIZE;
	private String PD_COLOR;
	private String PD_TOPINF;
	private String PD_BOTINF;
	private int PD_STOCK;
	private int PD_PRICE;
	
	public productDTO() {
		// TODO Auto-generated constructor stub
	}


	public productDTO(String pD_NO, String pD_CGNO, String pD_CODE, String pD_NAME, String pD_SIZE, String pD_COLOR,
			String pD_TOPINF, String pD_BOTINF, int pD_STOCK, int pD_PRICE) {
		super();
		PD_NO = pD_NO;
		PD_CGNO = pD_CGNO;
		PD_CODE = pD_CODE;
		PD_NAME = pD_NAME;
		PD_SIZE = pD_SIZE;
		PD_COLOR = pD_COLOR;
		PD_TOPINF = pD_TOPINF;
		PD_BOTINF = pD_BOTINF;
		PD_STOCK = pD_STOCK;
		PD_PRICE = pD_PRICE;
	}

	public String getPD_CODE() {
		return PD_CODE;
	}

	public void setPD_CODE(String pD_CODE) {
		PD_CODE = pD_CODE;
	}

	public String getPD_NO() {
		return PD_NO;
	}

	public void setPD_NO(String pD_NO) {
		PD_NO = pD_NO;
	}

	public String getPD_CGNO() {
		return PD_CGNO;
	}

	public void setPD_CGNO(String pD_CGNO) {
		PD_CGNO = pD_CGNO;
	}

	public String getPD_NAME() {
		return PD_NAME;
	}

	public void setPD_NAME(String pD_NAME) {
		PD_NAME = pD_NAME;
	}

	public String getPD_SIZE() {
		return PD_SIZE;
	}

	public void setPD_SIZE(String pD_SIZE) {
		PD_SIZE = pD_SIZE;
	}

	public String getPD_COLOR() {
		return PD_COLOR;
	}

	public void setPD_COLOR(String pD_COLOR) {
		PD_COLOR = pD_COLOR;
	}

	public String getPD_TOPINF() {
		return PD_TOPINF;
	}

	public void setPD_TOPINF(String pD_TOPINF) {
		PD_TOPINF = pD_TOPINF;
	}

	public String getPD_BOTINF() {
		return PD_BOTINF;
	}

	public void setPD_BOTINF(String pD_BOTINF) {
		PD_BOTINF = pD_BOTINF;
	}

	public int getPD_STOCK() {
		return PD_STOCK;
	}

	public void setPD_STOCK(int pD_STOCK) {
		PD_STOCK = pD_STOCK;
	}

	public int getPD_PRICE() {
		return PD_PRICE;
	}

	public void setPD_PRICE(int pD_PRICE) {
		PD_PRICE = pD_PRICE;
	}
	
	
	
}
