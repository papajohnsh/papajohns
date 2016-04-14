package papa.notice.model;

import java.util.List;

public interface NoticeDAO {

	public int noticeWrite(NoticeDTO dto);
	public List<NoticeDTO> noticeList();
	public NoticeDTO noticeContent(int idx);
	public int noticeNum(int idx);
	
}
