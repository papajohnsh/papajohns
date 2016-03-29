package papa.test.model;

public class TestDTO {
	private String name;
	private int num1;
	private int num2;
	

	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public TestDTO() {
		super();
	}
	public TestDTO(String name, int num1, int num2) {
		super();
		this.name = name;
		this.num1 = num1;
		this.num2 = num2;
	}
	
	
	
	
}
