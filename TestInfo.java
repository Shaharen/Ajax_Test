
public class TestInfo {
	private String taste;// ¸À
	private String flavor;	// Çâ
	private String abv;// µµ¼ö
	
	public TestInfo(String taste, String flavor, String abv) {
		super();
		this.taste = taste;
		this.flavor = flavor;
		this.abv = abv;
	}
	public String getTaste() {
		return taste;
	}
	public String getFlavor() {
		return flavor;
	}
	public String getAbv() {
		return abv;
	}
}
