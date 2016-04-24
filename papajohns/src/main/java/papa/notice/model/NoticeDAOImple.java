package papa.notice.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class NoticeDAOImple implements NoticeDAO {

	private SqlSessionTemplate sqlMap;

	public NoticeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
		
	
	public int noticeWrite(NoticeDTO dto) {//공지사항 글쓰기
		int count=sqlMap.insert("noticeWrite", dto);
		return count;
	}

	public List<NoticeDTO> noticeList(Map<String, Integer> map) {//공지사항 리스트
		List<NoticeDTO> list=sqlMap.selectList("noticeList", map);
		return list;
	}

	public NoticeDTO noticeContent(int idx) {//공지사항 본문 보기
		NoticeDTO result=sqlMap.selectOne("noticeContent", idx);
		return result;
	}

	public int noticeNum(int idx) {//조회수
		int count=sqlMap.update("noticeNum", idx);
		return count;
	}
	
	public int getTotalCnt() {//총게시물 수
		int count=sqlMap.selectOne("noticeTotal");
		return count;
	}

	public List<NoticeDTO> noticeFind(Map<String, String> map) {//공지사항 검색
		List<NoticeDTO> list=sqlMap.selectList("noticeFind", map);
		return list;
	}
	@Override
	public List<NoticeDTO> noticeAllList() {
		List<NoticeDTO> list=sqlMap.selectList("noticeAllList");
		return list;
	}
}
