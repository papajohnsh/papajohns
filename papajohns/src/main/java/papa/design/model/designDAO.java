package papa.design.model;

import java.util.List;

public interface designDAO {
	
	public int designAdd(String send,int reidx);
	public List<designDTO> myClassRoom(int idx);
	public String send(int idx);

}
