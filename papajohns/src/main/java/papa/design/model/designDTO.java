package papa.design.model;

public class designDTO {
	
	private int idx;
	private String send;
	private int reidx;
	
	public designDTO() {
		// TODO Auto-generated constructor stub
	}

	public designDTO(int idx, String send, int reidx) {
		super();
		this.idx = idx;
		this.send = send;
		this.reidx = reidx;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getSend() {
		return send;
	}

	public void setSend(String send) {
		this.send = send;
	}

	public int getReidx() {
		return reidx;
	}

	public void setReidx(int reidx) {
		this.reidx = reidx;
	}
	
	

}
