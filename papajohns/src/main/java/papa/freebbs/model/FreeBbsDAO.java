package papa.freebbs.model;

import java.util.List;

public interface FreeBbsDAO {

	public int bbsWriteAdd(FreeBbsDTO dto);
	public List<FreeBbsDTO> freeBbsList();
	public int getTotalCnt();
	public FreeBbsDTO bbsContent(int idx);
	public int readNum(int idx);
	public FreeBbsDTO bbsFindName(String writer);
	public FreeBbsDTO bbsFindSubject(String subject);
	
	public List<FreeBbsDTO> bbsFind(String fkey, String fvalue);
	
	public List<FreeBbsReDTO> freeBbsReList(int idx);
	public int bbsReWrite(FreeBbsReDTO dto);
	public int getIdx(int idx);
	public int getRef();

}
