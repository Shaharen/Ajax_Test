
public class TestInfo {
	private String taste;// ��
	private String flavor;	// ��
	private String abv;// ����
	
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
