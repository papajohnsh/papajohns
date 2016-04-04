package papa.freebbs.model;

import java.util.List;

public interface FreeBbsDAO {

	public int bbsWriteAdd(FreeBbsDTO dto);
	public List<FreeBbsDTO> freeBbsList();
	public int getTotalCnt();
	public FreeBbsDTO bbsContent(int idx);
	public int bbsReWriteAdd(FreeBbsDTO dto);
	public int readNum(int idx);
}
