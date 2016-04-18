package papa.notice.model;

import java.util.List;
import java.util.Map;

public interface NoticeDAO {

	public int noticeWrite(NoticeDTO dto);
	public List<NoticeDTO> noticeList(Map<String, Integer> map);
	public NoticeDTO noticeContent(int idx);
	public int noticeNum(int idx);
	
	public List<NoticeDTO> noticeFind(Map<String, String> map);
	public int getTotalCnt();
	
}
