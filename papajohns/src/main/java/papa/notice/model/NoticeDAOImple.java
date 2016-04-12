package papa.notice.model;

import java.util.List;

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

	public List<NoticeDTO> noticeList() {//공지사항 리스트 보기
		List<NoticeDTO> list=sqlMap.selectList("noticeList");
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
}
