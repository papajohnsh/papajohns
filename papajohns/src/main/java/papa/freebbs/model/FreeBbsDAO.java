package papa.freebbs.model;

import java.util.List;
import java.util.Map;

public interface FreeBbsDAO {

	public int bbsWriteAdd(FreeBbsDTO dto);
	public List<FreeBbsDTO> freeBbsList(Map<String, Integer> map);
	public int getTotalCnt();
	public FreeBbsDTO bbsContent(int idx);
	public int readNum(int idx);
	
	public List<FreeBbsDTO> freeBbsFind(Map<String, String> map);
	
	public List<FreeBbsReDTO> freeBbsReList(int idx);
	public int bbsReWrite(FreeBbsReDTO dto);
	public int getIdx(int idx);
	//public int getRef();
	
	public int bbsIdx(int idx); 

}
