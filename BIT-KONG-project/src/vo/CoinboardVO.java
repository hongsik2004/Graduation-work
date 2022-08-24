package vo;

public class CoinboardVO {
	private int b_id;
	private String b_title;
	private String b_name;
	private String b_date;
	private String b_context;
	private int b_view;
	private int b_available;
	public CoinboardVO(int b_id, String b_title, String b_name, String b_date, String b_context, int b_view,
			int b_available) {
		super();
		this.b_id = b_id;
		this.b_title = b_title;
		this.b_name = b_name;
		this.b_date = b_date;
		this.b_context = b_context;
		this.b_view = b_view;
		this.b_available = b_available;
	}
	public int getB_id() {
		return b_id;
	}
	public void setB_id(int b_id) {
		this.b_id = b_id;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public String getB_context() {
		return b_context;
	}
	public void setB_context(String b_context) {
		this.b_context = b_context;
	}
	public int getB_view() {
		return b_view;
	}
	public void setB_view(int b_view) {
		this.b_view = b_view;
	}
	public int getB_available() {
		return b_available;
	}
	public void setB_available(int b_available) {
		this.b_available = b_available;
	}
	
}
